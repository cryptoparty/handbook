#!/bin/bash
if [ -z $1 ] ; then
	DIR=.
else
	DIR=$1
fi
mkdir $DIR
for d in chapter*; do
	mkdir $DIR/$d
done
for f in */*.md; do 
	pandoc -f markdown -t latex $f -o $DIR/$f.tex
done
