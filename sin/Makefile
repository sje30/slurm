## Use a generic rule to make output files.

INPUTS := $(wildcard *.dat)

TARGETS := $(INPUTS:.dat=.out)

TEST:
	echo $(TARGETS)

all: $(TARGETS)

%.out: %.dat
	sin.R $^

.PHONY:
clean:
	rm -f *.out input*.sh *.res



