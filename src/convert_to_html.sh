#!/bin/bash

# requires python-beautifulsoup4

DATE=`date +%F`
DIR=../dist/cryptoparty-handbook-$DATE
mkdir $DIR 2>/dev/null

IDX=$DIR/index.html
SIDX=$DIR/index-short.html

echo "<html><title>Cryptoparty Handbook: Index</title><body><h1>Cryptoparty Handbook</h1><ol start=0>" > $IDX

for d in chapter*; do
        if [ ! -d $DIR/$d ] ; then
                mkdir $DIR/$d
        fi
        title=`echo $d | sed 's/chapter_[0-9][0-9]_//; s/_/ /g; s/^./\U&/; s/ ./\U&/g'`
        rm -f $DIR/$d/$d.mdidx
        for f in $d/*.md; do 
                cat $f >> $DIR/$d/$d.mdidx
                echo >> $DIR/$d/$d.mdidx
                echo >> $DIR/$d/$d.mdidx
        done
        echo "<h2><a href=\"$d/$d.html\">$title</a></h2>" >> $IDX
        echo "<li><a href=\"$d/$d.html\">$title</a></li>" >> $SIDX
        TITLE=`echo $d | sed 's/chapter_[0-9][0-9]_//; s/_/ /g; s/^./\U&/; s/ ./\U&/g'`
        echo "<h1>CryptoParty handbook - $TITLE</h1><p>Version: $DATE</p>" > $DIR/$d/$d.before
        pandoc -s -S --toc -f markdown -t html --css=../handbook.css --title="CryptoParty handbook - $TITLE" -B $DIR/$d/$d.before $DIR/$d/$d.mdidx -o $DIR/$d/$d.html
        python extract_toc.py $DIR/$d/$d.html | sed "s/\"#/\"$d\/$d.html#/" >> $IDX
        rm -f $DIR/$d/$d.mdidx
        cp -au $d/*.png $d/*.jpg $DIR/$d 2>/dev/null
done

echo "</ol></body></html>" >> $IDX

