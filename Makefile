TARGET=Konfirmacio_kerdesek-valaszok.pdf

PDF_FLAGS=-V documentclass=report --toc

$(TARGET): README.md Makefile
	pandoc $< $(PDF_FLAGS) -o $@

clean:
	rm -f $(TARGET)
