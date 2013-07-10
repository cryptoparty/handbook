BUILD_DIR=build

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
	rm -f ${BOOK_DIR}/book.md
	for file in chapter*/*.md; do \
		cat "$$file" >> ${BOOK_DIR}/book.md; \
		echo "" >> ${BOOK_DIR}/book.md; \
		echo "" >> ${BOOK_DIR}/book.md; \
	done

combined: ${BOOK_DIR}/book.md

install: combined latex-pdf
	cp ${TEX_DIR}/main.pdf ${BOOK_DIR}/../../cryptoparty-handbook-`date +%F`.pdf
	touch ${BOOK_DIR}/../../SHA256SUM
	sha256sum ${BOOK_DIR}/../../cryptoparty-handbook-`date +%F`.pdf >> ${BOOK_DIR}/../../SHA256SUM
	cp ${BOOK_DIR}/book.md ${BOOK_DIR}/../../cryptoparty-handbook-`date +%F`.md
	sha256sum ${BOOK_DIR}/../../cryptoparty-handbook-`date +%F`.md >> ${BOOK_DIR}/../../SHA256SUM
	./convert_to_epub.sh
	sha256sum book.md > SHA256SUM

clean: ${BUILD_DIR}
	rm -Rf ${BUILD_DIR}/*
