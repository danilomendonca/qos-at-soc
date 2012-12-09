compileAll: compileBib 
	pdflatex sbrc-2013.tex 


compileBib: 
	bibtex sbrc-2013

clean:
	rm *.aux *.dvi *.pdf *.blg *.bbl *.ps *.log *.~