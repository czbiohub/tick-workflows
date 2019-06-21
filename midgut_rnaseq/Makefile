run:
  nextflow run nf-core/rnaseq \
                   -r salmon \
                       -latest \
                   --reads "s3://darmanis-group/shayanhoss/scSLAM/190610_M05295_0286_000000000-G43TH/fastqs/*{R1,R2}*.fastq.gz" \
                   -profile czbiohub_aws \
                   --saveReference \
                   --saveTrimmed \
                   --saveAlignedIntermediates \
                   --outdir "s3://darmanis-group/shayanhoss/scSLAM/190610_M05295_0286_000000000-G43TH/results_nextflow" \
                   -resume \
                   -work-dir "s3://darmanis-group/shayanhoss/scSLAM/190610_M05295_0286_000000000-G43TH/nextflow-intermediates/" \
                   --custom_config_base https://raw.githubusercontent.com/czbiohub/configs/olgabot/czb-ignore-igenomes \
                   --skipQC \
                   --fc_group_features_type gene_type \
                       --pseudo_aligner salmon \
                       --transcript_fasta s3://czbiohub-reference/gencode/human/v30/gencode.v30.transcripts.ERCC92.fa \
               -process.errorStrategy=ignore
