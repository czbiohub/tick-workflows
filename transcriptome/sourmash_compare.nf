params.directory = "s3://tick-genome/rna/pacbio-isoseq/2018-06-07/fake_genome_and_transcriptome/sourmash-kmer-signatures/*.sig"
Channel.fromPath(params.directory)
	.set{ signatures_ch }

params.ksizes = Channel.from([15, 21, 27, 33, 51])
params.molecules = Channel.from(['dna', 'protein'])

process sourmash_compare_sketches {
	tag "molecule-${molecule}_ksize-${ksize}"

	container 'czbiohub/nf-kmer-similarity'
	publishDir "${params.outdir}/", mode: 'copy'
	memory { 1024.GB * task.attempt }
	errorStrategy 'retry'
  maxRetries 5

	input:
	each ksize from params.ksizes
	each molecule from params.molecules
	file signatures_ch

	output:
	file "similarities_molecule-${molecule}_ksize-${ksize}.csv"

	script:
	"""
	sourmash compare \
        --ksize $ksize \
        --$molecule \
        --csv similarities_molecule-${molecule}_ksize-${ksize}.csv \
        $signatures_ch
	"""

}
