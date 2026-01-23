# Genomics Data Mining Project

## Project Overview

Project-based analysis of high-dimensional genomic data, focusing on data preprocessing, exploratory analysis, dimension reduction, statistical modeling, and reproducible research practices. Meant to demonstrate proficiency and mastery of core data science skills through iterative analysis. 

TODO: Mermaid chart: Research Question --> data --> preprocessing --> dimensional reduction --> predictive modeling --> interpretation

### Hypothesis

Small, reasonable changed is preprocessing and modeling choices can substantially alter downstream conclusions in high-dimensional gene expression analysis. 

"How many small, reasonable choices does it take to rewrite the data story?"

### Dataset

TODO: Finalize / pick one

NOTE: Everything is focused on the "meta hypothesis" (in the Hypothesis section) which we'll demonstrate with a particular dataset, and a "sub hypothesis" defined in each option below. 

Options:
- Option 1: Tumor vs Normal, gene expression profiles can reliably distinguish tumor samples from normal tissue (...and this separation is robust across reasonable preprocessing and modeling choices)
- Option 2: Cancer Subtype Classification, distinct molecular subtypes of cancer exhibit seperable gene expression patterns (...that can be detected using dimensional reduction and supervised modeling)
- Option 3: Survival, gene expression patterns are associated with patient survival outcomes (... and can be used to distinguish high-risk from low-risk groups)
- Option 4: Batch Effects, technical batch effects can dominate biological signal in high-dimmensional gene expression data
  - NOTE: This is a more technical option, not really about the biology itself
- Option 5: Predicting Treatmeant Response, pre-treatment gene expression profiles are predictive of response to a given therapy.

## Project Management

### Requirements Traceability

TODO: Mermaid chart rubric --> epics --> tasks --> evidence

- Rubric is defined by document _________, they are broken down into individual requirements (i.e., "Atomic Deliverables")
- Epics are the atomic deliverables. (TODO can we reference a project object like the Epic type here?) (i.e., GitHub Issues of Type Epic)
- Tasks break down epics into specific work that will be completed (i.e., GitHub Issues of Type Task)
- Evidence is the actual deliverable/reproducible output of the task (i.e., Repo Artifacts / Files / Documents / etc.)

### Milestones  |  Semantic Versioning

```mermaid
gantt
    title Genomics Project Plan
    dateFormat YYYY-MM-DD
    axisFormat %a %b %d
    tickInterval 1week
    weekday monday
    excludes weekends, 2026-02-16, 2026-02-17, 2026-02-18, 2026-02-19, 2026-02-20



    Initialization          :active,      v0,           2026-01-21,    2026-01-29
    Status Update Report    :milestone,   msur1,        2026-01-29,    0d

    Proposal Phase          :             v1,           2026-01-29,    2026-02-26
  %%Proposal Submitted      :milestone,   mv1,          2026-02-04,    0d
    Proposal Submitted      :vert,        vv1,          2026-02-05,    0d
    Status Update Report    :milestone,   msur2,        2026-02-12,    0d
    Reading Week            :             off1,         2026-02-16,    2026-02-21
  %%Proposal Finalized      :milestone,   mv2,          2026-02-25,    0d
    Proposal Finalized      :vert,        vv2,          2026-02-26,    0d
    
    Analysis Phase          :             v2,           after v1,      2026-03-12
    Status Update Report    :milestone,   msur3,        2026-03-05,    0d
    Status Update Report    :milestone,   msur4,        2026-03-12,    0d
    
    Finalization Phase      :             v3,           after v2,      2026-04-02
  %%Final Project Submitted :milestone,   mv3,          2026-04-01,    0d
    Final Project Submitted :vert,        vv3,          2026-04-02,    0d
```

#### Phases 

| Phase | Start Date | Start Time | End Date | End Time |
| -----| -------------| ---------- | ---------- | -------- |
| Initialization | Thursday, January 22, 2026 | 00:00 | Wednesday, January 28, 2026 | 23:59 |
| Proposal | Thursday, January 29, 2026 | 00:00 | Wednesday, February 25, 2026 | 23:59 |
| Analysis | Thursday, February 26, 2026 | 00:00 | Wednesday, March 11, 2026 | 23:59 |
| Finalization | Thursday, March 12, 2026 | 00:00 | Wednesday, April 01, 2026 | 23:59 |

#### Milestones

| Milestone | Version | Date | Time |
| --------- | ------- | ---- | ---- |
| Status Update 1 | v0.1 | Wednesday, January 28, 2026 | 23:59 |
| Proposal Submitted | v1 | Wednesday, February 04, 2026 | 23:59 |
| Status Update 2 | v1.1 | Wednesday, February 11, 2026 | 23:59 |
| Proposal Finalized | v2 | Wednesday, February 25, 2026 | 23:59 |
| Status Update 3 | v2.1 | Wednesday, March 04, 2026 | 23:59 |
| Status Update 4 | v2.2 | Wednesday, March 11, 2026 | 23:59 |
| Final Project Submitted | v3 | Wednesday, April 01, 2026 | 23:59 |

The date-time represents when the version begins, and is always marked by the release of the specific milestone evidence. 

### Iterationas

We will be using a weekly iteration, which starts on a Thursday 00:00 and ends on the Wednesday 23:59

TODO: Can we reference project iterations here? 

NOTE: Iterations apply to Tasks, not epics. 

## Tooling & Workflow

Language & Environment
- Python 3.x
- TODO: venv or conda for environment isolation
- TODO: requirements.txt or environment.yml
- Jupyter Notebooks
- Git + GitHub
- Mastery+
  - Makerfile / Task Runner
  - Deterministic environment locking
  - Script-based pipeline modules
  - CI (i.e., GitHub Actions)
  - Parameterized notebooks
  - Docker
  - Interactive Dashboard / app
  - Multi-omics integration

Repo Structure

```
/
├── README.md
├── requirements.txt
├── notebooks/
│   └── iteration_1.ipynb
├── data/
│   ├── raw/
│   └── processed/
└── docs/
```

TODO: Describe folders/files



