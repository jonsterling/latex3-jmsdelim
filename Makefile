# ripped from ebproof
#
.PHONY: all clean

all: jmsdelim.pdf

clean:
	rm *.pdf
	git clean -fx .

jmsdelim.pdf: jmsdelim.dtx jmsdelim.sty
	pdflatex jmsdelim.dtx
	biber jmsdelim.bcf
	pdflatex jmsdelim.dtx
	pdflatex jmsdelim.dtx

jmsdelim.sty: jmsdelim.dtx
	pdflatex -interaction=batchmode jmsdelim.ins

