#!/bin/bash
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
\usepackage{hyperref}
\usepackage{paralist}
\usepackage{eurosym}



\begin{document}

\title{The Cryptoparty Handbook}
\author{Various authors}

\maketitle
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

echo '\end{document}' >> $DIR/main.tex
