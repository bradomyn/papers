all : wr_tc.pdf

.PHONY : all clean

wr_tc.pdf : wr_tc.tex 
#figs
	#latex $^
	#bibtex WhiteRabbit
	#latex $^
	#latex $^
	#dvips WhiteRabbit
	#ps2pdf  -dPDFX -dEmbedAllFonts=true -dSubsetFonts=true -dEPSCrop=true WhiteRabbit.ps
	#pdflatex $^
	#bibtex WhiteRabbit
	#pdflatex $^
	#pdflatex $^
	latexmk -e $($pdflatex=q/pdflatex -synctex=1 %T/) -pdf wr_tc.tex

figs:
	$(MAKE) -C fig

clean :
#	$(MAKE) clean -C fig 
	rm -f *.eps *.pdf *.dat *.log *.out *.aux *.dvi *.ps *~ *.blg *.bbl

