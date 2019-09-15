.PHONY: all clean

all: jmsdelim.zip

clean:
	git clean -fx .

jmsdelim.pdf: jmsdelim.dtx jmsdelim.sty
	pdflatex jmsdelim.dtx
	pdflatex jmsdelim.dtx
	pdflatex jmsdelim.dtx

jmsdelim.sty: jmsdelim.dtx
	pdflatex -interaction=batchmode jmsdelim.ins

jmsdelim.tds.zip: README.md jmsdelim.sty jmsdelim.pdf
	rm -rf jmsdelim.tds.zip tds
	install -d tds/tex/latex/jmsdelim
	install -t tds/tex/latex/jmsdelim jmsdelim.sty
	install -d tds/doc/latex/jmsdelim
	install -t tds/doc/latex/jmsdelim README.md jmsdelim.pdf jmsdelim.dtx
	cd tds ; zip -qr ../jmsdelim.tds.zip *
	rm -rf tds

PACKED = README.md jmsdelim.sty jmsdelim.dtx jmsdelim.pdf

jmsdelim.zip: $(PACKED) jmsdelim.tds.zip
	rm -f $@ jmsdelim
	ln -s . jmsdelim
	zip -qr $@ $(addprefix jmsdelim/,$(PACKED)) jmsdelim.tds.zip
	rm -f jmsdelim
