# Nextflow RNA-seq pipeline for UBELIX
Implementation of nf-core/rnaseq to UBELIX (UniBE's HPC cluster).

- nextflow 22.10.1
- nf-rnaseq 3.11.1

## Set-up GitHub repo 
This repo and other nf-core pipeline implementations follow the name convention:

> nf-"pipeline-name"-ubelix

Make your repo public **before** cloning it.

## Set-up git for repo cloning in UBELIX
### Create a Personal Access Token (PAT) in GitHub
In GitHub, go to:
> Settings > Developer settings > Personal access tokens

Create a PAT without expiration date, but with limited read-only access by enabling:
- repo:status
- public_repo
- read:packages
- read:public_key
- read:ssh_signing_key

**SAVE YOUR PAT IN A SECURE PLACE.**

## Clone repo in UBELIX
Go to your UBELIX workspace

``
cd /storage/workspaces/ips_reislab/reislab/"your-surname"
``

Then, clone repo

``
git clone "repo-link"
``

- username: GitHub username
- password: PAT created above

## Run script

``
sbatch your-script.sh
``