## summarise all the runs so far.

system("cat input_*.res > results.all")

results <- read.delim('results.all',header=F,sep=' ')
pdf(file='summarise.pdf')
plot(results[,1], results[,2], type='p',pch=20)
dev.off()
