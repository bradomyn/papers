.SUFFIXES: .fig .mp .eps .ps

.mp.eps:
	mpost $*.mp && mv $*.0 $*.eps

all: delaymodel.eps hybrid.ps
delaymodel.eps: delaymodel.mp
clean:
	rm -f *.eps *.log *.bak *.mmp *.dvi *.tex *.mpx


