TARGET=Konfirmacio_kerdesek-valaszok
PDF_FLAGS=-V documentclass=report --toc

all: $(TARGET).pdf $(TARGET).epub

$(TARGET).pdf: README.md Makefile
	pandoc $< $(PDF_FLAGS) -o $@

$(TARGET).epub: README.md Makefile
	pandoc $< -o $@

clean:
	rm -f $(TARGET)
