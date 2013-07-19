#!/bin/bash

DIR=./cryptoparty-handbook-html
mkdir $DIR 2>/dev/null

IDX=$DIR/index.html

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
        echo "<li><a href=\"$d/$d.html\">$title</a></li>" >> $IDX
        pandoc -s -S --toc -f markdown -t html $DIR/$d/$d.mdidx -o $DIR/$d/$d.html
        rm -f $DIR/$d/$d.mdidx
        cp -au $d/*.png $d/*.jpg $DIR/$d 2>/dev/null
done

echo "</ol></body></html>" >> $IDX

