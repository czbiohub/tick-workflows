#!/bin/bash -euo pipefail
echo null > v_pipeline.txt
echo 19.03.0-edge > v_nextflow.txt
multiqc && multiqc --version > v_multiqc.txt
fastqc && fastqc --version > v_fastqc.txt
sourmash info > v_sourmash.txt
scrape_software_versions.py > software_versions_mqc.yaml
