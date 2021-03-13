# Distributed Algorithms (2021S) LaTeX Build Template

This repository contains build scripts intended to be used for the "Distributed Algorihtms" lecture at TU Wien in the summer term of 2021.

## Dependencies

The Makefiles rely on `latexmk` for building the LaTeX files. On Linux, it
should be available for most major package managers. See the
[latexmk website](https://mg.readthedocs.io/latexmk.html) for more information on
installing the script. 

## Building an exercise PDF

You will find a Makefile in each `hwX (X={1-5})` directory, which provides 4
major build targets whose output depends on the exercise number `X` and the
provided name `NAME`:

- `firsthw` builds a pdf named `hwXfirst_NAME.pdf` in the exercise directory
with the titlepage
- `finalhw` builds a pdf named `hwXfinal_NAME.pdf` in the exercise directory
with the titlepage
- `firsthwnotitle` builds a pdf named `hwXfirst.pdf` in the exercise
directory without the title page
- `finalhwnotitle` builds a pdf named `hwXfinal.pdf` in the exercise
directory without the title page

## Adapting the Project

You can adapt the project according to your details and the exercise number by editing
the `NAME` variable in the Makefiles and `firstpage.tex` in the `resources` directory. 
The sources in the `hwX/sources.tex` file will be included on the first page of the document if the target builds it. 

As soon as the exercises are available, replace the `exX.tex` file with the
homework assignment.
