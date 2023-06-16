#!/bin/sh
# time in minutes here.
#SBATCH --time=1
#SBATCH --ntasks=1
#SBATCH --array=0-249

JOB=`printf input_%03d.dat $SLURM_ARRAY_TASK_ID`
echo $JOB
./sin.R $JOB


