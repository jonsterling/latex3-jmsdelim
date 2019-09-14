LATEX=pdflatex
LATEXOPT=--shell-escape
NONSTOP= # --interaction=nonstopmode

LATEXMK=latexmk
LATEXMKOPT=-pdf

MAIN=main
SOURCES=$(MAIN).tex *.sty Makefile

all:	$(MAIN).pdf

.refresh:
	touch .refresh

$(MAIN).pdf: $(MAIN).tex .refresh $(SOURCES)
		$(LATEXMK) $(LATEXMKOPT) \
			-pdflatex="$(LATEX) $(LATEXOPT) $(NONSTOP) %O %S" $(MAIN)

force:
		touch .refresh
		rm $(MAIN).pdf
		$(LATEXMK) $(LATEXMKOPT) \
			-pdflatex="$(LATEX) $(LATEXOPT) %O %S" $(MAIN)

clean:
		$(LATEXMK) -C $(MAIN)
		rm -f $(MAIN).pdfsync
		rm -rf *~ *.tmp
		rm -f *.bbl *.blg *.aux *.end *.fls *.log *.out *.fdb_latexmk

once:
		$(LATEXMK) $(LATEXMKOPT) -pdflatex="$(LATEX) $(LATEXOPT) %O %S" $(MAIN)

debug:
		$(LATEX) $(LATEXOPT) $(MAIN)

.PHONY: clean force once all
