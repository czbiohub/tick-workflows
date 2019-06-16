REFERENCE=${HOME}/data/tick-genome/dna/2018-10-10-dovetail/ixodes_scapularis_06May2018_kaVVW.fasta.gz

OMNITIER35=${HOME}/data/tick-genome/dna/2019-06-07_omnnitier_compstor/tick/tick_assembly_35x/contigs2.fa
OMNITIER231=${HOME}/data/tick-genome/dna/2019-06-07_omnnitier_compstor/tick/tick_assembly_231x/Ixodes_scapularis_230x/contigs2.fa
PACBIO_TICK2_TRANSCRIPTOME=${HOME}/data/tick-genome/rna/pacbio-isoseq/2018-06-07/fake_genome_and_transcriptome/tick2.fake_ref_transcriptome.fasta
PACBIO_TICK2_GENOME=${HOME}/data/tick-genome/rna/pacbio-isoseq/2018-06-07/fake_genome_and_transcriptome/tick2.fake.genome.fasta
PACBIO_JCVI_ISE6=${HOME}/data/tick-genome/dna/2018-07-26-pacbio/contigs.fa
ISCAW1=${HOME}/data/tick-genome/dna/2018-12-03_IscaW1/Ixodes-scapularis-Wikel_CONTIGS_IscaW1.fa.gz
R1=${HOME}/data/tick-genome/dna/2018-06-28/pre-assembly_v3/tick_1_S1_R1_post-trimming.fastq.gz
R2=${HOME}/data/tick-genome/dna/2018-06-28/pre-assembly_v3/tick_1_S1_R2_post-trimming.fastq.gz


omnitier_busco:
	cd ~/data/tick-genome/dna/2019-06-07_omnnitier_compstor/tick/tick_assembly_35x
	run_busco --lineage ~/data/busco/lineages/arthropoda_odb9 --in contigs2.fa --out tick1 --mode genome --cpu 32

quast:
	# beforehand: need to 'source activate quast'
	quast --large \
		--k-mer-size 81 \
		--k-mer-stats \
		--output /mnt/ibm_lg/olga/tick-genome/dna/2019-06-10_quast_results/ \
		--threads 120 \
		-r ${REFERENCE} \
		--eukaryote \
		--labels OmniTier_35x,OmniTier_231x,PacBio_IsoSeq_Tick_2_fake_transcriptome,PacBio_IsoSeq_Tick_2_fake_genome,PacBio_JCVI_ISE6_cell_line,IscaW1 \
		--rna-finding \
		--conserved-genes-finding \
		--circos \
		--pe1 ${R1} \
		--pe2 ${R2} \
		${OMNITIER35} \
		${OMNITIER231} \
		${PACBIO_TICK2_TRANSCRIPTOME} \
		${PACBIO_TICK2_GENOME} \
		${PACBIO_JCVI_ISE6} \
		${ISCAW1}

quast_no_reads:
	# beforehand: need to 'source activate quast'
	quast --large \
		--k-mer-size 81 \
		--k-mer-stats \
		--output /mnt/ibm_lg/olga/tick-genome/dna/2019-06-10_quast_results/ \
		--threads 120 \
		-r ${REFERENCE} \
		--eukaryote \
		--labels OmniTier_35x,OmniTier_231x,PacBio_IsoSeq_Tick_2_fake_transcriptome,PacBio_IsoSeq_Tick_2_fake_genome,PacBio_JCVI_ISE6_cell_line,IscaW1 \
		--rna-finding \
		--conserved-genes-finding \
		--circos \
		${OMNITIER35} \
		${OMNITIER231} \
		${PACBIO_TICK2_TRANSCRIPTOME} \
		${PACBIO_TICK2_GENOME} \
		${PACBIO_JCVI_ISE6} \
		${ISCAW1}
