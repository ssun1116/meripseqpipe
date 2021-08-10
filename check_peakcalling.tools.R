
matk_un = read.delim("result_trimmed/m6AAnalysis/AnnotatedPeaks/MATK_HK2UN_sample_normalized_annotatedbyhomer.bed")
matk_tgf = read.delim("result_trimmed/m6AAnalysis/AnnotatedPeaks/MATK_HK2TGF_sample_normalized_annotatedbyhomer.bed")

matk_un_pre = read.delim("result_trimmed/m6AAnalysis/m6APredictionSites/m6A_sites_HK2UN.bed", header = F)
matk_tgf_pre = read.delim("result_trimmed/m6AAnalysis/m6APredictionSites/m6A_sites_HK2TGF.bed", header = F)

peak_un = read.delim("result_trimmed/peakCalling/MATK/MATK_HK2UN_sample_normalized.bed", header = F)




matk_un = read.delim("result_mapq.trimmed/m6AAnalysis/AnnotatedPeaks/MATK_HK2UN_sample_normalized_annotatedbyhomer.bed")
matk_tgf = read.delim("result_mapq.trimmed/m6AAnalysis/AnnotatedPeaks/MATK_HK2TGF_sample_normalized_annotatedbyhomer.bed")

matk_un_pre = read.delim("result_mapq.trimmed/m6AAnalysis/m6APredictionSites/m6A_sites_HK2UN.bed", header = F)
matk_tgf_pre = read.delim("result_mapq.trimmed/m6AAnalysis/m6APredictionSites/m6A_sites_HK2TGF.bed", header = F)

peak_un = read.delim("result_trimmed/peakCalling/MATK/MATK_HK2UN_sample_normalized.bed", header = F)
