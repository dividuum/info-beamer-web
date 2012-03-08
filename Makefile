doc/index.html: info-beamer/doc/manual.md header.html footer.html
	(cat header.html; markdown_py -x toc -x tables -x codehilite $<; cat footer.html) > $@
	cp info-beamer/doc/*.png doc/

clean:
	rm -f doc/*

.PHONY: clean
