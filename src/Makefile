BUILD_DIR=build
INSTALL_DIR=/path/to/install

TEX_DIR=${BUILD_DIR}/tex
BOOK_DIR=${BUILD_DIR}/.

all: latex-pdf combined

tex:
	./convert_to_tex.sh ${TEX_DIR}
	cp main.tex ${TEX_DIR}

latex-pdf: tex
	pdflatex --output-dir=${TEX_DIR} ${TEX_DIR}/main.tex
	pdflatex --output-dir=${TEX_DIR} ${TEX_DIR}/main.tex

book.md:
	cat chapter*/*.md > ${BOOK_DIR}/book.md

combined: book.md

install: book.md latex-pdf
	cp ${TEX_DIR}/main.pdf ${INSTALL_DIR}/cryptoparty-handbook-`date +%F`.pdf
	cp ${BOOK_DIR}/book.md ${INSTALL_DIR}/cryptoparty-handbook-`date +%F`.md

