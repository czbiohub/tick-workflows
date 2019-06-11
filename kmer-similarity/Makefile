fake_transcriptomes:
	nextflow run  czbiohub/nf-kmer-similarity -latest \
		-r olgabot/fix-fasta \
		--fastas 's3://tick-genome/rna/pacbio-isoseq/2018-06-07/fake_genome_and_transcriptome/*.fake_ref_transcriptome.fasta'\
		--one_signature_per_record \
		--outdir 's3://tick-genome/rna/pacbio-isoseq/2018-06-07/fake_genome_and_transcriptome/transcriptome_kmer_similarity/'\
		-work-dir 's3://tick-genome/nextflow-intermediates/' \
		-profile czbiohub_aws \
		-e.process.executor='awsbatch' \
		--log2_sketch_sizes 8,9
