#!/bin/bash

FILE="root"

echo "Compilando $FILE.tex..."

pdflatex -interaction=nonstopmode $FILE.tex
bibtex $FILE
pdflatex -interaction=nonstopmode $FILE.tex
pdflatex -interaction=nonstopmode $FILE.tex

echo "Compilação finalizada."
