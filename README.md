# slurm
Introduction to slurm


# getting started


## Generate a set of 250 input files:

```
cd sin
R CMD BATCH generate_inputs.R
```

Each input file contains the parameters (here just one x-value) for a
set of 250 simulations.

## run the jobs with slurm
Now these can be submitted as an 'array job' to slurm:

(running as sje30 on maths; change username as needed)

```
sbatch submit_array.sh
squeue -u sje30
```

## summarise the results

Put all the results back together into one summary plot

```
Rscript summarise.R
```

