
## Working directory
ssh -o TCPKeepAlive=yes -o ServerAliveCountMax=20 -o ServerAliveInterval=300 ssun1116@163.152.180.108
cd merip_seq


## How to get the meripseq github code?
git clone https://github.com/username/meripseqpipe (after forking the directory)
git clone https://github.com/kingzhuky/meripseqpipe (without forking)


## Nextflow test code
nextflow run meripseqpipe -profile test,docker


## Nextflow analysis 
nextflow run meripseqpipe -profile docker --designfile designfile2.tsv --comparefile compare.txt \
--fasta GRCh38.primary_assembly.genome.fa --gtf gencode.v38.primary_assembly.annotation.gtf 

## designfile.tsv -> written with Rstudio 
## write.table(file, "filename", sep = '\t', row.names = F)

## comparefile -> use or not use? replicate? Should check the error code.

## Nextflow analysis - without deseq2
nextflow run meripseqpipe -profile docker --designfile designfile2.tsv --comparefile false -skip_deseq2 \
--fasta GRCh38.primary_assembly.genome.fa --gtf gencode.v38.primary_assembly.annotation.gtf 


