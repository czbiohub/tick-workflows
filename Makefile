flye_subassemblies:
	/mnt/data/code/Flye/bin/flye --subassemblies /newvolume/sanger/\
	GCF_000208615.1_JCVI_ISG_i3_1.0_genomic.fasta \
	/newvolume/pacbio_contigs/pacbio_con.fa -o /newvolume/subassembly_test/ \
	--meta -g 1g -t 24 -i 3
flye: 
	mkrdir nano_flye
	/mnt/data/code/Flye/bin/flye --nano-raw /newvolume/raw_data/all_tick.fastq.gz -g 1g -o /newvolume/raw_data/nano_flye/ --threads 4