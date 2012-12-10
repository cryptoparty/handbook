BUILD_DIR=build
INSTALL_DIR=/path/to/install

TEX_DIR=${BUILD_DIR}/tex
BOOK_DIR=${BUILD_DIR}/.

all: latex-pdf combined

${BUILD_DIR}:
	mkdir ${BUILD_DIR}

${TEX_DIR}/main.tex: ${BUILD_DIR} convert_to_tex.sh
	./convert_to_tex.sh ${TEX_DIR}

latex-pdf: ${TEX_DIR}/main.tex
	pdflatex --output-dir=${TEX_DIR} ${TEX_DIR}/main.tex
	pdflatex --output-dir=${TEX_DIR} ${TEX_DIR}/main.tex

${BOOK_DIR}/book.md: ${BUILD_DIR}
	cat chapter*/*.md > ${BOOK_DIR}/book.md

combined: ${BOOK_DIR}/book.md

install: combined latex-pdf
	cp ${TEX_DIR}/main.pdf ${INSTALL_DIR}/cryptoparty-handbook-`date +%F`.pdf
	cp ${BOOK_DIR}/book.md ${INSTALL_DIR}/cryptoparty-handbook-`date +%F`.md

clean: ${BUILD_DIR}
	rm -Rf ${BUILD_DIR}/*
