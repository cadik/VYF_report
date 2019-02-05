.PHONY: report.pdf all clean

all: report.pdf

# "raw2tex" and "dat2tex" are just placeholders for whatever custom steps
# you might have.

%.tex: %.raw
	./raw2tex $< > $@

%.tex: %.dat
	./dat2tex $< > $@

all: report.pdf

report.pdf: report.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make report.tex

clean:
	latexmk -CA


