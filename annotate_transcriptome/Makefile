busco:
	cd ~/data/tick-genome/rna/pacbio-isoseq/2018-06-07/fake_genome_and_transcriptome
	for FASTA in $(ls *.fasta) ; do if [[ $FASTA = "*no_slashes*" ]] ; then continue ; fi ; TICK=$(echo $FASTA | cut -f 1 -d '.') ;  echo '------' $TICK $TICK $TICK '------' ; G=$(echo $FASTA | sed 's:.fasta:.no_slashes.fasta:'); sed 's:/:__:g' $FASTA > $G ; run_busco --lineage ~/data/busco/lineages/arthropoda_odb9 --in $G --out $TICK --mode transcriptome --cpu 32 ; done
