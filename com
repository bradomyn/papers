#!/bin/bash

latexmk -e '$pdflatex=q/pdflatex -synctex=1 %T/' -pdf wr_tc.tex
