all: tex combined

tex:
	./convert_to_tex.sh
	pdflatex main.tex
	pdflatex main.tex

combined:
	cat */*.md > book.md

