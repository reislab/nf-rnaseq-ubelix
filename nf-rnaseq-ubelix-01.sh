#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1GB

module load Workspace
module load Nextflow/22.10.1

# Set working directory to your project folder (e.g., <reis> below)
$WORKDIR=/storage/workspaces/ips_reislab/reislab/reis

# Setup directory structure
mkdir -p $WORKDIR/nf-rnaseq-ubelix/results
cd $WORKDIR
$OUTDIR=/nf-rnaseq/results

# Run pipeline
nextflow run nf-core/rnaseq -r 3.11.1 -profile test --outdir $OUTDIR
