#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1GB


mkdir -p ~/nf-rnaseq

$OUTDIR=~/nf-rnaseq/results

cd ~/nf-rnaseq

nextflow run nf-core/rnaseq -r 3.11.1 -profile test --outdir $OUTDIR
