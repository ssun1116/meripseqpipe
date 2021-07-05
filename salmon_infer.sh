
## salmon LIBTYPE (Infer the library type based on transcriptome mapping)

# Salmon indexing
grep "^>" <(gunzip -c GRCh38.primary_assembly.genome.fa.gz) | cut -d " " -f 1 > decoys.txt
sed -i.bak -e 's/>//g' decoys.txt
cat gencode.v38.transcripts.fa.gz GRCh38.primary_assembly.genome.fa.gz > gentrome.fa.gz

## Salmon quantifying
conda activate salmon
salmon index -t gentrome.fa.gz -d decoys.txt -p 12 -i salmon_index --gencode
salmon quant -i transcripts(salmon)_index -l A -1 reads1.fastq.gz -2 reads2.fastq.gz --validateMappings -o transcripts_quant