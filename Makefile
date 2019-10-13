.SUFFIXES: .pdf .lytex
.lytex.pdf:
	lilypond-book --out=$(.PREFIX) --pdf $(.IMPSRC) && \
	  mkdir -p $(.PREFIX) && cd $(.PREFIX) && \
	  pdflatex $(.PREFIX) && cp $(.TARGET) ..
