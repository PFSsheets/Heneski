all: charsheet asciisheet softlink

softlink: charsheet
	ln -sf Charsheet.pdf Heneski.pdf


charsheet: Charsheet.tex
	pdflatex $^

asciisheet: AsciiCharsheet.tex
	pdflatex $^

clean: 
	rm -f *.aux *.log Charsheet.pdf Heneski.pdf AsciiCharsheet.pdf *.out

