digraph BioHybrid {
  rankdir=TB;
  graph [
    bgcolor="white",
    pad="0.2",
    nodesep="0.45",
    ranksep="0.55",
    splines=true,
    concentrate=true
  ];

  // ---------- Default node styles ----------
  node [fontname="Inter,Segoe UI,Helvetica,Arial", fontsize=11];
  edge [fontname="Inter,Segoe UI,Helvetica,Arial", fontsize=10, color="#9AA4B2"];

  // ---------- Helpers ----------
  // Process nodes: subtle cards
  node [shape=plain];
  // Material nodes: pill cards
  // We'll define each explicitly to keep fine control

  // ---------- Start / End ----------
  start [label=<
    <TABLE BORDER="0" CELLBORDER="0" CELLPADDING="0">
      <TR><TD><FONT COLOR="#9AA4B2">START</FONT></TD></TR>
    </TABLE>
  >];

  end [label=<
    <TABLE BORDER="0" CELLBORDER="0" CELLPADDING="0">
      <TR><TD><FONT COLOR="#9AA4B2">END</FONT></TD></TR>
    </TABLE>
  >];

  // ---------- Materials ----------
  tumour [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#111827" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#F8FAFC">
      <TR><TD ALIGN="LEFT">
        <FONT POINT-SIZE="12"><B>Tumor Sample</B></FONT><BR/>
        <FONT COLOR="#6B7280" POINT-SIZE="10">Bulk tissue</FONT>
      </TD></TR>
    </TABLE>
  >];

  lysate [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#111827" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#F8FAFC">
      <TR><TD ALIGN="LEFT">
        <FONT POINT-SIZE="12"><B>Cell Lysate</B></FONT><BR/>
        <FONT COLOR="#6B7280" POINT-SIZE="10">“Cell soup”: RNA + DNA + proteins + lipids</FONT>
      </TD></TR>
    </TABLE>
  >];

  rna_total [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#111827" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#EEF2FF">
      <TR><TD ALIGN="LEFT">
        <FONT POINT-SIZE="12"><B>Total RNA</B></FONT><BR/>
        <FONT COLOR="#6B7280" POINT-SIZE="10">rRNA, tRNA, mRNA, other RNA</FONT>
      </TD></TR>
    </TABLE>
  >];

  mrna_enriched [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#111827" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#ECFDF5">
      <TR><TD ALIGN="LEFT">
        <FONT POINT-SIZE="12"><B>Enriched mRNA</B></FONT><BR/>
        <FONT COLOR="#065F46" POINT-SIZE="10">Poly-A selected</FONT>
      </TD></TR>
    </TABLE>
  >];

  mrna_frag [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#111827" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#ECFDF5">
      <TR><TD ALIGN="LEFT">
        <FONT POINT-SIZE="12"><B>mRNA Fragments</B></FONT><BR/>
        <FONT COLOR="#065F46" POINT-SIZE="10">~200 bp targets (typical)</FONT>
      </TD></TR>
    </TABLE>
  >];

  cdna [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#111827" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#FFFBEB">
      <TR><TD ALIGN="LEFT">
        <FONT POINT-SIZE="12"><B>cDNA</B></FONT><BR/>
        <FONT COLOR="#92400E" POINT-SIZE="10">Double-stranded</FONT>
      </TD></TR>
    </TABLE>
  >];

  cdna_adapt [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#111827" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#FFFBEB">
      <TR><TD ALIGN="LEFT">
        <FONT POINT-SIZE="12"><B>cDNA + Adapters</B></FONT><BR/>
        <FONT COLOR="#92400E" POINT-SIZE="10">Flow-cell binding + indexes</FONT>
      </TD></TR>
    </TABLE>
  >];

  cdna_pcr [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#111827" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#FEF2F2">
      <TR><TD ALIGN="LEFT">
        <FONT POINT-SIZE="12"><B>Amplified Library</B></FONT><BR/>
        <FONT COLOR="#991B1B" POINT-SIZE="10">Many copies of same fragments</FONT>
      </TD></TR>
    </TABLE>
  >];

  cdna_qc [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#111827" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#F8FAFC">
      <TR><TD ALIGN="LEFT">
        <FONT POINT-SIZE="12"><B>QC-Passed Library</B></FONT><BR/>
        <FONT COLOR="#6B7280" POINT-SIZE="10">Correct size + concentration</FONT>
      </TD></TR>
    </TABLE>
  >];

  waste [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#9CA3AF" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#FFFFFF">
      <TR><TD ALIGN="LEFT">
        <FONT POINT-SIZE="12" COLOR="#6B7280"><B>Wash / Discard</B></FONT><BR/>
        <FONT COLOR="#9AA4B2" POINT-SIZE="10">rRNA, tRNA, other RNA</FONT>
      </TD></TR>
    </TABLE>
  >];

  // ---------- Process cards ----------
  lyse [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#CBD5E1" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#FFFFFF">
      <TR><TD ALIGN="LEFT">
        <FONT COLOR="#111827"><B>LYSE</B></FONT><BR/>
        <FONT COLOR="#6B7280" POINT-SIZE="10">Break open cells</FONT>
      </TD></TR>
    </TABLE>
  >];

  extract [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#CBD5E1" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#FFFFFF">
      <TR><TD ALIGN="LEFT">
        <FONT COLOR="#111827"><B>EXTRACT</B></FONT><BR/>
        <FONT COLOR="#6B7280" POINT-SIZE="10">Isolate total RNA</FONT>
      </TD></TR>
    </TABLE>
  >];

  enrich [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#CBD5E1" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#FFFFFF">
      <TR><TD ALIGN="LEFT">
        <FONT COLOR="#111827"><B>ENRICH</B></FONT><BR/>
        <FONT COLOR="#6B7280" POINT-SIZE="10">Poly-A selection (mRNA)</FONT>
      </TD></TR>
    </TABLE>
  >];

  fragment [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#CBD5E1" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#FFFFFF">
      <TR><TD ALIGN="LEFT">
        <FONT COLOR="#111827"><B>FRAGMENT</B></FONT><BR/>
        <FONT COLOR="#6B7280" POINT-SIZE="10">Shorten transcripts</FONT>
      </TD></TR>
    </TABLE>
  >];

  convert [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#CBD5E1" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#FFFFFF">
      <TR><TD ALIGN="LEFT">
        <FONT COLOR="#111827"><B>CONVERT</B></FONT><BR/>
        <FONT COLOR="#6B7280" POINT-SIZE="10">Reverse transcription</FONT>
      </TD></TR>
    </TABLE>
  >];

  adapt [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#CBD5E1" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#FFFFFF">
      <TR><TD ALIGN="LEFT">
        <FONT COLOR="#111827"><B>ADAPTER LIGATION</B></FONT><BR/>
        <FONT COLOR="#6B7280" POINT-SIZE="10">Add adapters to both ends</FONT>
      </TD></TR>
    </TABLE>
  >];

  amplify [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#CBD5E1" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#FFFFFF">
      <TR><TD ALIGN="LEFT">
        <FONT COLOR="#111827"><B>PCR AMPLIFY</B></FONT><BR/>
        <FONT COLOR="#6B7280" POINT-SIZE="10">Increase copies</FONT>
      </TD></TR>
    </TABLE>
  >];

  qc [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#CBD5E1" CELLSPACING="0" CELLPADDING="10" BGCOLOR="#FFFFFF">
      <TR><TD ALIGN="LEFT">
        <FONT COLOR="#111827"><B>QUALITY CONTROL</B></FONT><BR/>
        <FONT COLOR="#6B7280" POINT-SIZE="10">Size + concentration checks</FONT>
      </TD></TR>
    </TABLE>
  >];

  // ---------- Annotations ----------
  note_pcr [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#FCA5A5" CELLSPACING="0" CELLPADDING="8" BGCOLOR="#FFFFFF">
      <TR><TD ALIGN="LEFT">
        <FONT COLOR="#991B1B"><B>Effect:</B></FONT><BR/>
        <FONT COLOR="#111827" POINT-SIZE="10">Molecule count ↑↑</FONT><BR/>
        <FONT COLOR="#111827" POINT-SIZE="10">Distinct fragments =</FONT>
      </TD></TR>
    </TABLE>
  >];

  note_enrich [label=<
    <TABLE BORDER="0" CELLBORDER="1" COLOR="#A7F3D0" CELLSPACING="0" CELLPADDING="8" BGCOLOR="#FFFFFF">
      <TR><TD ALIGN="LEFT">
        <FONT COLOR="#065F46"><B>Effect:</B></FONT><BR/>
        <FONT COLOR="#111827" POINT-SIZE="10">Keep poly-A RNAs</FONT><BR/>
        <FONT COLOR="#111827" POINT-SIZE="10">Wash away others</FONT>
      </TD></TR>
    </TABLE>
  >];

  // ---------- Composition “zoom-in” cluster ----------
  subgraph cluster_totalRNA {
    label=<<FONT COLOR="#6B7280">Total RNA composition (conceptual)</FONT>>;
    color="#E5E7EB";
    style="rounded";
    fontname="Inter,Segoe UI,Helvetica,Arial";
    fontsize=10;

    rrna [label=<
      <TABLE BORDER="0" CELLBORDER="1" COLOR="#E5E7EB" CELLSPACING="0" CELLPADDING="8" BGCOLOR="#FFFFFF">
        <TR><TD><B>rRNA</B> <FONT COLOR="#6B7280" POINT-SIZE="10">(~80–90%)</FONT></TD></TR>
      </TABLE>
    >];

    trna [label=<
      <TABLE BORDER="0" CELLBORDER="1" COLOR="#E5E7EB" CELLSPACING="0" CELLPADDING="8" BGCOLOR="#FFFFFF">
        <TR><TD><B>tRNA</B></TD></TR>
      </TABLE>
    >];

    mrna_raw [label=<
      <TABLE BORDER="0" CELLBORDER="1" COLOR="#E5E7EB" CELLSPACING="0" CELLPADDING="8" BGCOLOR="#FFFFFF">
        <TR><TD><B>mRNA</B> <FONT COLOR="#6B7280" POINT-SIZE="10">(~1–5%)</FONT></TD></TR>
      </TABLE>
    >];

    otherRNA [label=<
      <TABLE BORDER="0" CELLBORDER="1" COLOR="#E5E7EB" CELLSPACING="0" CELLPADDING="8" BGCOLOR="#FFFFFF">
        <TR><TD><B>Other RNA</B></TD></TR>
      </TABLE>
    >];
  }

  // ---------- Main flow ----------
  start -> tumour [color="#CBD5E1"];

  tumour -> lyse -> lysate -> extract -> rna_total [color="#94A3B8", penwidth=1.3];
  rna_total -> enrich -> mrna_enriched -> fragment -> mrna_frag -> convert -> cdna -> adapt -> cdna_adapt -> amplify -> cdna_pcr -> qc -> cdna_qc -> end [color="#94A3B8", penwidth=1.3];

  // ---------- Enrichment waste (make filtering explicit) ----------
  enrich -> waste [style="dashed", color="#CBD5E1"];
  rrna -> waste [style="dashed", color="#CBD5E1"];
  trna -> waste [style="dashed", color="#CBD5E1"];
  otherRNA -> waste [style="dashed", color="#CBD5E1"];

  // ---------- “Contains” relationships (dotted) ----------
  rna_total -> rrna     [style="dotted", arrowhead="none", color="#CBD5E1"];
  rna_total -> trna     [style="dotted", arrowhead="none", color="#CBD5E1"];
  rna_total -> mrna_raw [style="dotted", arrowhead="none", color="#CBD5E1"];
  rna_total -> otherRNA [style="dotted", arrowhead="none", color="#CBD5E1"];

  // ---------- Annotation callouts ----------
  note_enrich -> enrich [style="dashed", color="#A7F3D0", arrowhead="none"];
  note_pcr -> amplify   [style="dashed", color="#FCA5A5", arrowhead="none"];

  // ---------- Layout nudges ----------
  { rank=same; lyse; tumour; }
  { rank=same; enrich; note_enrich; }
  { rank=same; amplify; note_pcr; }
  { rank=sink; waste; }
}