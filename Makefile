# LaTeX commmon config
# Test your LaTeX environment with this simple build command.
# If it passes, then you are mostly good to go!
#
# Copyright (C) 2025 Mariusz Matusiak <matusiakmariusz@icloud.com>
#
# Prerequisites:
# - texlive distribution installed - the newer, the better
# - latexmk perl script installed - to get things done quickly in the right order
#

# Modify this line if you don't have latexmk in your PATH:
latexbin=latexmk
latexopt=-pdf -outdir=output_ -cd
src=$(wildcard *.tex)
timestamp=`date +%Y%m%d`

.ONESHELL:

all : common_doc

.PHONY : all common_doc clean

common_doc : ${src}
	${latexbin} ${latexopt} common_doc.tex

clean :
	rm -rf output_
