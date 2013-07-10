#!/bin/bash

# check prerequisites
type pandoc >/dev/null 2>&1 || { echo >&2 "!!! Pandoc not installed, aborting."; exit 1; }

#copy the combined markdown from src/build/ to src/
cp build/book.md .

#symlink all images to src/ so that pandoc does not complain about not finding images
for f in `find . -name "*.jpg"`; do ln -s $f . ; done
for f in `find . -name "*.png"`; do ln -s $f . ; done

#do the conversion
pandoc book.md -o book.epub

#change the filename
cp book.epub ../cryptoparty-handbook-`date +%F`.epub

rm ./book.md
rm ./book.epub

#cleanup all the symlinks
find -type l -delete
