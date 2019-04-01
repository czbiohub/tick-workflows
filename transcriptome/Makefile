run_aws:
	nextflow run sourmash_compare.nf \
		-work-dir 's3://czb-nextflow/work' \
		-bucket-dir 's3://czb-nextflow/work' \
		-profile aws \
		-with-trace -with-timeline -with-dag -with-report -latest -resume
