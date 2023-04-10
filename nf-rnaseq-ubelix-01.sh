#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1GB

module load Workspace
module load Nextflow/22.10.1

# Setup directory structure
mkdir -p $WORKSPACE/reis/nf-rnaseq-ubelix/results
$OUTDIR="$WORKSPACE/reis/nf-rnaseq/results"
cd $WORKSPACE/reis/nf-rnaseq-ubelix

# Run pipeline
nextflow run nf-core/rnaseq -r 3.11.1 -profile test --outdir $OUTDIR
