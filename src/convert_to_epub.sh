#!/bin/bash

# check prerequisites
type pandoc >/dev/null 2>&1 || { echo >&2 "!!! Pandoc not installed, aborting."; exit 1; }

cd build

#symlink all images to src/ so that pandoc does not complain about not finding images
for f in `find .. -name "*.jpg"`; do ln -s $f . ; done
for f in `find .. -name "*.png"`; do ln -s $f . ; done

#do the conversion
pandoc --epub-cover-image=../cover-800.jpg book.md -o book.epub

# Only set if not overriden by an environment variable
DATE=${DATE:-`date +%F`}

cp book.epub ../../dist/cryptoparty-handbook-$DATE.epub

ebook-convert ../../dist/cryptoparty-handbook-$DATE.epub ../../dist/cryptoparty-handbook-$DATE.mobi

#cleanup all the symlinks
find . -type l -delete
cd ..

