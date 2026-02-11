process alignment{

    publishDir "results/", mode: 'copy'

	input:
	path reads
	path ref

	output:
	path "alignment.sam"
    
	script:
	"""
	minimap2 -ax sr ${ref} ${reads} | samtools view -bS - > alignment.sam
	"""
}
