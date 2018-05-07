TARGET=Konfirmacio_kerdesek-valaszok
GEN_FLAGS=-V lang=hun
PDF_FLAGS=-V documentclass=report --toc

all: $(TARGET).pdf $(TARGET).epub

$(TARGET).pdf: README.md Makefile
	pandoc $< $(GEN_FLAGS) $(PDF_FLAGS) -o $@

$(TARGET).epub: README.md Makefile
	pandoc $< $(GEN_FLAGS) -o $@

clean:
	rm -f $(TARGET)
