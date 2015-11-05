MCC:=/usr/local/MATLAB/R2013b/bin/mcc
MEX:=/usr/local/MATLAB/R2013b/bin/mex
MFLAGS:=-m -R -singleCompThread -R -nodisplay -R -nojvm
SRCDIR= ./
PROGS= findNeighbours simitar fastscoring
.PHONEY: all clean

all: $(PROGS)

$(PROGS): %: %.c
	$(MCC) $(MFLAGS) -o $@ $<

clean:
	-rm *.dmr
	-rm _condor_std???
	-rm readme.txt
	-rm mccExcludedFiles.log
