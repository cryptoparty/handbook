#!/bin/bash

# check prerequisites
type pandoc >/dev/null 2>&1 || { echo >&2 "!!! Pandoc not installed, aborting."; exit 1; }

if [ -z $1 ] ; then
	DIR=.
else
	DIR=$1
fi

if [ ! -d $DIR ] ; then
	mkdir $DIR
fi

cat > $DIR/main.tex <<EOF
\documentclass[oribibl]{scrbook}

\usepackage{amsmath,amssymb,latexsym}
\usepackage{algorithm, algorithmic}
\usepackage{graphicx}
\usepackage{varioref}
\usepackage{hyperref, url}
\usepackage{paralist}
\usepackage{eurosym}
\usepackage{placeins}
\usepackage{pdfpages}

\let\stdsection\section
\renewcommand*{\section}{\FloatBarrier\stdsection}
\let\stdsubsection\subsection
\renewcommand*{\subsection}{\FloatBarrier\stdsubsection}


\begin{document}
\includepdf{cover}
\cleardoublepage

\tableofcontents
\clearpage
EOF


for d in chapter*; do
	if [ ! -d $DIR/$d ] ; then
		mkdir $DIR/$d
	fi
	echo "\\graphicspath{{./$d/}}" >> $DIR/main.tex
	title=`echo $d | sed 's/chapter_[0-9][0-9]_//; s/_/ /g; s/^./\U&/; s/ ./\U&/g'`
	echo "\\chapter{$title}" >> $DIR/main.tex
	for f in $d/*.md; do 
		pandoc -f markdown -t latex $f -o $DIR/$f.tex
		echo "\\clearpage
\\input{$f.tex}" >> $DIR/main.tex
	done
done
# There are many links in the book where the link text is the same as the
# target URL. This attempts to avoid too many overfull hboxen by replacing
# those occurences with a single \url call. We assume that if the link text
# starts with http, then it's the same as the link.
sed -ie 's/\\href{http\([^}]*\)}{http[^}]*}/\\url{http\1}/' $DIR/*/*.tex

echo '\end{document}' >> $DIR/main.tex
