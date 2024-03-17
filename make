#!/bin/sh
cd "$(dirname "$0")"
latexmk --xelatex FGP.tex
latexmk -c
(cd story && latexmk --xelatex --outdir=../ Story.tex)
latexmk -c story/Story.tex