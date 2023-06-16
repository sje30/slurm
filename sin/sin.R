#!/usr/bin/env Rscript
args <- commandArgs(TRUE)
stopifnot(length(args)==1)

input_file <- args[1]
## read in the input_file
parameters <- scan(file=input_file, quiet=TRUE)
x = parameters[1]

output_file <- gsub('.dat', '.res', input_file)
write('# started', file = output_file, append=TRUE)
## pretend this takes a long time to compute.
Sys.sleep(runif(n=1, max=80))
y = sin(x)

## make the name of the output file be the name of the input file
## with a different suffix


write(c(x, y), file = output_file, append=TRUE)


