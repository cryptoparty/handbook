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

# Only set if not overriden by an environment variable
DATE=${DATE:-`date +%F`}

cat > $DIR/main.tex <<EOF
\documentclass[oribibl]{scrbook}

\usepackage[T1]{fontenc}
\usepackage{amsmath,amssymb,latexsym}
\usepackage{algorithm, algorithmic}
\usepackage{graphicx}
\usepackage{varioref}
\usepackage{hyperref, url}
\usepackage{paralist}
\usepackage{eurosym}
\usepackage{placeins}
\usepackage{pdfpages}
\usepackage{tocloft}
\usepackage{upquote}

\def\tightlist{}

\let\stdsection\section
\renewcommand*{\section}{\FloatBarrier\stdsection}
\let\stdsubsection\subsection
\renewcommand*{\subsection}{\FloatBarrier\stdsubsection}
\renewcommand{\cftsubsecnumwidth}{3.8em}


\begin{document}
\includepdf{cover}
\clearpage

the CryptoParty handbook

Version: $DATE
\clearpage

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
		echo "\\input{$f.tex}" >> $DIR/main.tex
	done
done
# There are many links in the book where the link text is the same as the
# target URL. This attempts to avoid too many overfull hboxen by replacing
# those occurences with a single \url call. We assume that if the link text
# starts with http, then it's the same as the link.
sed -ie 's/\\href{http\([^}]*\)}{http[^}]*}/\\url{http\1}/' $DIR/*/*.tex
sed -ie 's/\\includegraphics/&[scale=0.92]/' $DIR/*/*.tex

echo '\end{document}' >> $DIR/main.tex
