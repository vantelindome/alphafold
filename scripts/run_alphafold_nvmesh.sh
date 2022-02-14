#!/bin/bash
#PJM -L rscgrp=cxgfs-single
#PJM -L elapse=48:00:00
#PJM -j
#PJM -S

module load cuda/11.2.1
export PATH=/center/local/app/x86/AlphaFold/v2.1.2/alphafold/bin:${PATH}

# Specify a fasta file whose structure you want to predict.
FASTAFILE="$HOME/cas9/alphafold/input/4UN3.fasta"
# Specify a folder to save output files
OUTPUTDIR="$HOME/work/output/alphafold/"
# You can restrict the structures that AlphaFold selects as templates
# before the release date specified as DATE
DATE="2099-07-14"

# AlphaFold is executed by using alphafold_nvmesh script stored in PATH directory
mkdir -p ${OUTPUTDIR}
echo "job start time:" `date +'%Y%m%d %H:%M:%S'` >> $OUTPUTDIR/time.log

alphafold_nvmesh --fasta_paths=${FASTAFILE} \
                                 --output_dir=${OUTPUTDIR} \
                                 --model_preset=monomer \
                                 --use_gpu_relax=True \
                                 --max_template_date=${DATE}

echo "job end time  :" `date +'%Y%m%d %H:%M:%S'` >> $OUTPUTDIR/time.log