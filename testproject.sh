#!/bin/bash
#
## SLURM submission script for OpenMP job final project
## change cpus-per-task to change number of threads
#SBATCH --job-name=fproject
#SBATCH --output=fproject.%J.out
#SBATCH --error=fproject.%J.err
#
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --time=5:00
#SBATCH --partition=class

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
./fproject
