## Generate the input files.

n <- 250 # number of data files to create

for (i in 0:(n-1)) {
  x <-  (i/n) * 2*pi
  datfile = sprintf("input_%03d.dat", i)
  write(x, file = datfile)
  jobfile = sprintf("input_%03d.sh", i)
  system(sprintf("m4 -DINPUTFILE=%s template.m4 > %s", datfile, jobfile))
}


