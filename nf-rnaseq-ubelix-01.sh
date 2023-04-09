#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1GB

# Set working directory to your project folder (e.g., <reis> below)
$WORKDIR=/storage/workspaces/ips_reislab/reislab/reis

# Clone git repo
git clone https://github.com/reislab/nf-rnaseq-ubelix.git

# Setup directory structure
mkdir -p $WORKDIR/nf-rnaseq-ubelix/results
cd $WORKDIR
$OUTDIR=/nf-rnaseq/results

# Run pipeline
nextflow run nf-core/rnaseq -r 3.11.1 -profile test --outdir $OUTDIR
