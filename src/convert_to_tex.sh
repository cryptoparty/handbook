for f in */*.md;do pandoc -f markdown -t latex $f -o $f.tex; done
