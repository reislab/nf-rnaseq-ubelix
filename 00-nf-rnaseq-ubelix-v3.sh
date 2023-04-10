#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1GB

module load Workspace
module load Nextflow/22.10.1

# Setup directory structure
WORKDIR=$WORKSPACE/reis/nf-rnaseq-ubelix
OUTDIR=$WORKSPACE/reis/nf-rnaseq-ubelix/results

mkdir -p $OUTDIR
cd $WORKDIR

# Run pipeline

nextflow run nf-core/rnaseq -r 3.11.1 -resume --outdir $OUTDIR -c 'unibe_ibu.config'