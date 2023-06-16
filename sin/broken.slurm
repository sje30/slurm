#!/bin/sh
# time in minutes here.
#SBATCH --time=00:00:15
#SBATCH --ntasks=1
#SBATCH --requeue
#SBATCH --array=2-200

sleep 100
exit 10

## exit 10
## generates JobState=FAILED Reason=NonZeroExitCode Dependency=(null)


## sleep 100
## generates 
   JobState=TIMEOUT Reason=TimeLimit Dependency=(null)


## timeout given to nearest minute.
