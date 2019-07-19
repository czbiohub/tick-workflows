midgut_local:
	nextflow run nf-core/rnaseq \
      -r dev \
      -latest \
      --reads '/home/olga/ibm_lg/czb-seqbot/fastqs/190228_NB501961_0212_AHGY53BGX9/*{R1,R2}*.fastq.gz' \
      --saveReference \
      --saveTrimmed \
      --saveAlignedIntermediates \
      --outdir /home/olga/ibm_lg/tick-genome/rna/midgut/nf-core-rnaseq// \
      -resume \
      -work-dir /home/olga/ibm_lg/nextflow-intermediates/ \
			--custom_config_base "/home/olga/code/nf-core/configs" \
			-profile docker,czbiohub_local \
      --pseudo_aligner salmon \
      --fasta /home/olga/ibm_lg/czbiohub-reference/ixodes_scapularis/ise6/GCA_002892825.2_ISE6_asm2.2_deduplicated_genomic.fna \
	--gtf /home/olga/ibm_lg/czbiohub-reference/ixodes_scapularis/ise6/Ixodes-scapularis-ISE6_BASEFEATURES_IscaI1.0.gtf
