# Packages needed to be installed prior to document conversion:
# sudo apt-get install        \
#   pandoc                    \
#   texlive-latex-recommended \
#   texlive-fonts-recommended

TARGET=Konfirmacio_kerdesek-valaszok
GEN_FLAGS=-V lang=hu
PDF_FLAGS=-V documentclass=report --toc

all: $(TARGET).pdf $(TARGET).epub

$(TARGET).pdf: README.md Makefile
	pandoc $< $(GEN_FLAGS) $(PDF_FLAGS) -o $@

$(TARGET).epub: README.md Makefile
	pandoc $< $(GEN_FLAGS) -o $@

clean:
	rm -f $(TARGET)
