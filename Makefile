SOURCE = main
FILEXTS = aux log out pdf  bbl blg synctex.gz fdb_latexmk fls

all: $(SOURCE).tex
	pdflatex $<
	bibtex $(SOURCE)
	pdflatex $<

.PHONY:
clean:
	@for ext in $(FILEXTS) ; do \
		rm $(SOURCE).$$ext 2>/dev/null ; \
	done || true
