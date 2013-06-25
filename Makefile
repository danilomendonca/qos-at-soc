compileAll: compileBib 
	pdflatex sbcars.tex 


compileBib: 
	bibtex sbcars

clean:
	rm *.aux *.dvi *.pdf *.blg *.bbl *.ps *.log *.~
