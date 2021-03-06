transcriptomes = "s3://tick-genome/rna/pacbio-isoseq/2018-06-07/fake_genome_and_transcriptome/tick*.fake_ref_transcriptome.fasta"
busco_group = "arthropoda"

process dammit_install_databases {

	container 'quay.io/biocontainers/dammit:1.0--py35h24bf2e0_3'
	publishDir "${params.outdir}/", mode: 'copy'
	memory { 512.GB * task.attempt }
	errorStrategy 'retry'
  maxRetries 3

	input:
	each ksize from ksizes
	each molecule from molecules
	each log2_sketch_size from params.log2_sketch_sizes
	file ("sketches/molecule-${molecule}_ksize-${ksize}_log2sketchsize-${log2_sketch_size}/*") from sourmash_sketches.collect()

	output:
  dir database_dir

	script:
	"""
	dammit databases --n_threads 8 --install ${database_dir} \
    --busco-group ${busco_group}
	"""

}


process dammit_annotate {

	container 'quay.io/biocontainers/dammit:1.0--py35h24bf2e0_3'
	publishDir "${params.outdir}/", mode: 'copy'
	memory { 512.GB * task.attempt }
	errorStrategy 'retry'
  maxRetries 3

	input:
  file transcriptomes
	file database_dir

	output:
	file "similarities_molecule-${molecule}_ksize-${ksize}_log2sketchsize-${log2_sketch_size}.csv"

	script:
	"""
	dammit annotate --n_threads 8 --busco-group ${busco_group}\
    ${transcriptomes}
	"""

}
