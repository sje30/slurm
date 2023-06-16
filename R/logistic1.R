#!/usr/bin/env Rscript
args <- commandArgs(TRUE)
stopifnot(length(args)==1)

input_file <- args[1]
## read in the three arguments from the data file
parameters <- scan(file=input_file)
n = parameters[1]
last = parameters[2]
alpha = parameters[3]

cat(sprintf("n %d\nlast %d\nalpha %.3f\n", n, last, alpha))


x=rep(0.01, n)
for (i in 1:(n-1)) {
  x[i+1] = alpha * x[i] * ( 1 - x[i] )
}

end <- (n-last):n
pdf_file <- "out.pdf"
final <- x[end]
pdf(file=pdf_file)
plot(end, final, type='l', lty=1, xlab='iteration', ylab='x', bty='n')
title(main=sprintf('alpha %.3f', alpha))
dev.off()



