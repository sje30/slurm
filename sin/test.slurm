#!/bin/sh
# time in minutes here.
#SBATCH --time=1
#SBATCH --ntasks=1
#SBATCH --output=t1/slurm-%j.out

uname -a

date

