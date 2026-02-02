param(
  [switch]$DryRun = $true
)

# -------------------------
# CONFIG (EDIT THESE)
# -------------------------
$Org = "Bijans-Projects"                 # e.g., bijans-projects
$ProjectNumber = 1                       # your org project number
$Repo = "$Org/genomics-data-mining"      # e.g., bijans-projects/genomics-data-mining
$IssueState = "all"                      # open | closed | all
# -------------------------

function GhJson($args) {
  $out = & gh @args
  if ($LASTEXITCODE -ne 0) { throw "gh failed: $($args -join ' ')" }
  if (-not $out) { return $null }
  return $out | ConvertFrom-Json
}

Write-Host "Loading Project + Field metadata..."

# Project ID
$projQuery = @"
query(\$org:String!, \$number:Int!) {
  organization(login:\$org) {
    projectV2(number:\$number) { id title }
  }
}
"@
$proj = GhJson @("api","graphql","-f","query=$projQuery","-f","org=$Org","-F","number=$ProjectNumber")
$ProjectId = $proj.data.organization.projectV2.id
if (-not $ProjectId) { throw "Project not found. Check org + project number." }
Write-Host "Project: $($proj.data.organization.projectV2.title)"

# Fields + options
$fieldsQuery = @"
query(\$org:String!, \$number:Int!) {
  organization(login:\$org) {
    projectV2(number:\$number) {
      fields(first:50) {
        nodes {
          __typename
          ... on ProjectV2FieldCommon { id name }
          ... on ProjectV2TextField { id name }
          ... on ProjectV2SingleSelectField {
            id name
            options { id name }
          }
        }
      }
    }
  }
}
"@
$fieldsRes = GhJson @("api","graphql","-f","query=$fieldsQuery","-f","org=$Org","-F","number=$ProjectNumber")
$fields = $fieldsRes.data.organization.projectV2.fields.nodes

function FindField($name) {
  return $fields | Where-Object { $_.name -eq $name } | Select-Object -First 1
}

$AtomicField = FindField "Atomic Deliverable ID"
$SkillField  = FindField "Skill"
$LevelField  = FindField "Skill Level"

if (-not $AtomicField) { throw "Missing field: Atomic Deliverable ID" }
if (-not $SkillField)  { throw "Missing field: Skill" }
if (-not $LevelField)  { throw "Missing field: Skill Level" }

# Option maps from project (so we always use exact labels/IDs)
$SkillOptions = @{}
$SkillField.options | ForEach-Object { $SkillOptions[$_.name] = $_.id }

$LevelOptions = @{}
$LevelField.options | ForEach-Object { $LevelOptions[$_.name] = $_.id }

# Hard mapping from skill number -> EXACT Project label (syllabus wording)
$SkillLabelByNum = @{
  1  = "Skill 1: Data Acquisition"
  2  = "Skill 2: Data Understanding"
  3  = "Skill 3: Data Cleaning"
  4  = "Skill 4: Exploratory Data Analysis (EDA)"
  5  = "Skill 5: Dimensional Reduction"
  6  = "Skill 6: Statistical Modelling"
  7  = "Skill 7: Statistical Reasoning and Interpretation"
  8  = "Skill 8: Analytical Question Formulation"
  9  = "Skill 9: Reproducibility and Professional Practice"
  10 = "Skill 10: Communication and Storytelling with Data"
}

# Regex: extract fields from body
$reId    = [regex]"\*\*ID:\*\*\s*([A-Za-z0-9\-_\.]+)"
$reSkill = [regex]"\*\*Skill:\*\*\s*(\d+)\s*—"
$reLevel = [regex]"\*\*Level:\*\*\s*(Proficient|Mastery)"  # case-insensitive optional if needed

# Find project item id for an issue URL
$itemQuery = @"
query(\$url:URI!) {
  resource(url:\$url) {
    __typename
    ... on Issue {
      id
      projectItems(first:50) {
        nodes { id project { id } }
      }
    }
  }
}
"@

# Mutations
$mutText = @"
mutation(\$projectId:ID!, \$itemId:ID!, \$fieldId:ID!, \$value:String!) {
  updateProjectV2ItemFieldValue(input:{
    projectId:\$projectId
    itemId:\$itemId
    fieldId:\$fieldId
    value:{ text:\$value }
  }) { projectV2Item { id } }
}
"@

$mutSelect = @"
mutation(\$projectId:ID!, \$itemId:ID!, \$fieldId:ID!, \$optionId:String!) {
  updateProjectV2ItemFieldValue(input:{
    projectId:\$projectId
    itemId:\$itemId
    fieldId:\$fieldId
    value:{ singleSelectOptionId:\$optionId }
  }) { projectV2Item { id } }
}
"@

Write-Host "Loading issues from $Repo ..."
$issues = GhJson @("issue","list","--repo",$Repo,"--state",$IssueState,"--limit","500","--json","number,title,url,body")

$updated = 0
$skipped = 0

foreach ($i in $issues) {
  $body = $i.body
  if (-not $body) { continue }

  # Epic signature: has an Atomic Deliverable ID line
  $mId = $reId.Match($body)
  if (-not $mId.Success) { continue }

  $mSkill = $reSkill.Match($body)
  $mLevel = $reLevel.Match($body)

  if (-not $mSkill.Success -or -not $mLevel.Success) {
    Write-Host "SKIP #$($i.number): couldn't parse Skill/Level"
    $skipped++; continue
  }

  $atomicId = $mId.Groups[1].Value.Trim()
  $skillNum = [int]$mSkill.Groups[1].Value.Trim()
  $level    = $mLevel.Groups[1].Value.Trim()
  $level    = ($level.Substring(0,1).ToUpper() + $level.Substring(1).ToLower())

  $skillLabel = $SkillLabelByNum[$skillNum]
  if (-not $skillLabel) {
    Write-Host "SKIP #$($i.number): no mapping for Skill #$skillNum"
    $skipped++; continue
  }

  $skillOptId = $SkillOptions[$skillLabel]
  if (-not $skillOptId) {
    Write-Host "SKIP #$($i.number): Project Skill option missing '$skillLabel' (check Project options)"
    $skipped++; continue
  }

  $levelOptId = $LevelOptions[$level]
  if (-not $levelOptId) {
    Write-Host "SKIP #$($i.number): Project Skill Level option missing '$level'"
    $skipped++; continue
  }

  # Find project item
  $itemRes = GhJson @("api","graphql","-f","query=$itemQuery","-f","url=$($i.url)")
  $issueNode = $itemRes.data.resource
  $itemId = ($issueNode.projectItems.nodes | Where-Object { $_.project.id -eq $ProjectId } | Select-Object -First 1).id

  if (-not $itemId) {
    Write-Host "SKIP #$($i.number): not in target Project"
    $skipped++; continue
  }

  Write-Host ""
  Write-Host "Epic #$($i.number): $($i.title)"
  Write-Host "  Atomic Deliverable ID: $atomicId"
  Write-Host "  Skill: $skillLabel"
  Write-Host "  Skill Level: $level"

  if ($DryRun) {
    Write-Host "  DRY RUN: would update fields"
    $updated++; continue
  }

  # Update text field
  GhJson @("api","graphql","-f","query=$mutText","-f","projectId=$ProjectId","-f","itemId=$itemId","-f","fieldId=$($AtomicField.id)","-f","value=$atomicId") | Out-Null

  # Update selects
  GhJson @("api","graphql","-f","query=$mutSelect","-f","projectId=$ProjectId","-f","itemId=$itemId","-f","fieldId=$($SkillField.id)","-f","optionId=$skillOptId") | Out-Null
  GhJson @("api","graphql","-f","query=$mutSelect","-f","projectId=$ProjectId","-f","itemId=$itemId","-f","fieldId=$($LevelField.id)","-f","optionId=$levelOptId") | Out-Null

  $updated++
}

Write-Host ""
Write-Host "DONE. Updated=$updated  Skipped=$skipped  (DryRun=$DryRun)"
