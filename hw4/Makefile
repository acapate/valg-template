LATEXMK = latexmk
FLAGS = -pdf -g -dvi-

CLEANCMD = $(LATEXMK) -c

# file paths
OUTDIR = ../resources/
HWFILE = hw.tex
FIRSTPAGEFILE = firstpage.tex
OUTFILE = $(OUTDIR)hw.pdf

EXFILE = ex$(HWNUM).tex

# pretex definitions
FIRSTPAGEDEF = \def\mkfirstpage{}
HWNUMCMD = \newcommand{\homeworknumber}{$(HWNUM)}
HWCHAPCMD = \newcommand{\homeworkchapter}{$(HWCHAP)}

FIRSTPAGEPRETEX = -usepretex="$(FIRSTPAGEDEF)$(HWNUMCMD)$(HWCHAPCMD)"
NOFIRSTPAGEPRETEX = -usepretex="$(HWNUMCMD)$(HWCHAPCMD)"

# ============================================ #
# HOMEWORK AND NAME CONFIGURATION
HWNUM = 4
HWCHAP = 5
NAME = thomasmuster
# ============================================ #

all: firsthw firsthwnotitle

firsthw: hw
	mv $(OUTFILE) hw$(HWNUM)first_$(NAME).pdf

firsthwnotitle: hwnotitle
	mv $(OUTFILE) hw$(HWNUM)first.pdf

finalhw: hw
	mv $(OUTFILE) hw$(HWNUM)final_$(NAME).pdf

finalhwnotitle: hw
	mv $(OUTFILE) hw$(HWNUM)final.pdf

hw: $(OUTDIR)$(FIRSTPAGEFILE) $(OUTDIR)$(HWFILE) $(EXFILE)
	cd $(OUTDIR); $(LATEXMK) $(FLAGS) $(FIRSTPAGEPRETEX) $(HWFILE); $(CLEANCMD)

hwnotitle: $(OUTDIR)$(HWFILE) $(OUTDIR)$(FIRSTPAGEFILE) $(EXFILE)
	cd $(OUTDIR); $(LATEXMK) $(FLAGS) $(NOFIRSTPAGEPRETEX) $(HWFILE); $(CLEANCMD)

tidy:
	$(LATEXMK) -c

clean:
	rm -f *.pdf
