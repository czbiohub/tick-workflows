midgut_local:
	nextflow run nf-core/rnaseq \
      -r dev \
      -latest \
      --reads "s3://czb-seqbot/fastqs/190228_NB501961_0212_AHGY53BGX9/*{R1,R2}*.fastq.gz" \
      --saveReference \
      --saveTrimmed \
      --saveAlignedIntermediates \
      --outdir "s3://tick-genome/nf-core/rnaseq" \
      -resume \
      -work-dir "s3://tick-genome/nextflow-intermediates/" \
			--custom_config_base "/home/olga/code/nf-core/configs" \
			-profile docker,czbiohub_local \
      --pseudo_aligner salmon \
      --fasta /home/olga/ibm_lg/czbiohub-reference/ixodes_scapularis/GCA_002892825.2_ISE6_asm2.2_deduplicated_genomic.fna \
      --gff /home/olga/ibm_lg/czbiohub-reference/ixodes_scapularis/GCA_002892825.2_ISE6_asm2.2_deduplicated_genomic.gff \
			--skipAlignment
