.PHONY: clean

SRC = $(wildcard *.md)

all : $(addprefix pdf/, ${SRC:.md=.pdf})

./pdf/%.pdf : %.md
				pandoc $*.md --latex-engine=pdflatex -o pdf/$*.pdf

clean :
				rm -f pdf/*.pdf

