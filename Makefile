.PHONY: clean all watch ignore-report add-report
FILE=thesis
TEX=$(FILE).tex
PDF=$(FILE).pdf
TEXMAKE=latexmk -pdf

all: $(PDF)

$(PDF):
	$(TEXMAKE) $(TEX)

watch:
	$(TEXMAKE) -pvc $(TEX)

clean:
	rm -rf *.aux *.bbl *.blg *dvi *.log *.out *.synctex.gz *.toc *.lot *.lof *.glsdefs *.ist *.pdf *.prv *.glo *.abl *.acn *.fdb_latexmk *.fls
