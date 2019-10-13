clean:
	find . -maxdepth 1 -type d -name specials\* -exec rm -fr {} \;
	rm -f specials*pdf

.SUFFIXES: .pdf .lytex
.lytex.pdf:
	lilypond-book --out=$(.PREFIX) --pdf $(.IMPSRC) && \
	  mkdir -p $(.PREFIX) && cd $(.PREFIX) && \
	  pdflatex $(.PREFIX) && cp $(.TARGET) ..
