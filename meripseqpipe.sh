
## Working directory
ssh -o TCPKeepAlive=yes -o ServerAliveCountMax=20 -o ServerAliveInterval=300 ssun1116@163.152.180.108
cd merip_seq


## How to get the meripseq github code?
git clone https://github.com/username/meripseqpipe (after forking the directory)
git clone https://github.com/kingzhuky/meripseqpipe (without forking)


## Nextflow test code
nextflow run meripseqpipe -profile test,docker


#############################################


## Nextflow analysis 
nextflow run meripseqpipe -profile docker --designfile designfile2.tsv --comparefile compare.txt \
--fasta GRCh38.primary_assembly.genome.fa --gtf gencode.v38.primary_assembly.annotation.gtf 

## comparefile -> use or not use? replicate? Should check the error code.


## Nextflow analysis - untrimmed. without deseq2
nextflow run meripseqpipe -profile docker --designfile designfile2.tsv --comparefile false --skip_deseq2 \
--fasta GRCh38.primary_assembly.genome.fa --gtf gencode.v38.primary_assembly.annotation.gtf --stranded yes 



## Nextflow - trimmed data. without deseq2
nextflow run meripseqpipe -profile docker --designfile tr_designfile.tsv --comparefile false --skip_deseq2 \
--fasta GRCh38.primary_assembly.genome.fa --gtf gencode.v38.primary_assembly.annotation.gtf --stranded yes


#############################################
# 50bp trimmed at 3' end

## Nextflow - 50bp trimmed. adapter nontrimmed data. without deseq2.
nextflow run meripseqpipe -profile docker --designfile 50bp.trimmed.designfile2.tsv --comparefile false --skip_deseq2 \
--fasta GRCh38.primary_assembly.genome.fa --gtf gencode.v38.primary_assembly.annotation.gtf --stranded yes 

## Nextflow - 50bp trimmed. adapter trimmed data. without deseq2.
nextflow run meripseqpipe -profile docker --designfile 50bp.trimmed.tr_designfile.tsv --comparefile false --skip_deseq2 \
--fasta GRCh38.primary_assembly.genome.fa --gtf gencode.v38.primary_assembly.annotation.gtf --stranded yes 

