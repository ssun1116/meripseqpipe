
## To select file that doesn't contain "tr" in filename
for sample in `ls -d -- !(*tr*)`; (cutadapt -u -50 -o 50bp.trimmed.${sample} ${sample} &) ; done

## To select file that contain "tr_" in filename
for sample in `ls -d -- *tr_*`; (cutadapt -u -50 -o 50bp.trimmed.${sample} ${sample} &) ; done

