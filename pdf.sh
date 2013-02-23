#!/bin/sh
# skrypt do generacji doumentu PDF
# wygenerowanie pierwszego pliku aux
# pdfelatex -file-line-error-style -output-directory=tmp -aux-directory=tmp -include-directory=tex tex/main.tex
# pdfelatex -file-line-error-style -output-directory=tmp -aux-directory=tmp -include-directory=tex tex/main.tex
pdfelatex -file-line-error-style tex/main.tex
pdfelatex -file-line-error-style tex/main.tex
# tworzenie odwo�a� do bibliografii
bibtex -min-crossrefs -1 main
#bibtex -min-crossrefs -1 bk
#bibtex -min-crossrefs -1 st
#bibtex -min-crossrefs -1 doc
#bibtex -min-crossrefs -1 web
# utworzenie indeksu
#makeindex *.idx -o main.ind
# aktualizacja aux
# pdfelatex -file-line-error-style -output-directory=tmp -aux-directory=tmp -include-directory=tex tex/main.tex
pdfelatex -file-line-error-style tex/main.tex
# stworzenie poprawnych odnosnik�w
# pdfelatex -file-line-error-style -output-directory=tmp -aux-directory=tmp -include-directory=tex tex/main.tex
pdfelatex -file-line-error-style tex/main.tex
# i interaktywny pdf gotowy
mv main.pdf pnazimek_msc.pdf
