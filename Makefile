all: notes.html notes.pdf

%.html: %.adoc
	asciidoctor -r asciidoctor-bibliography $<

%.pdf: %.adoc
	asciidoctor-pdf -r asciidoctor-bibliography notes.adoc

#	asciidoctor-pdf -r asciidcotor-bibliography $<
clean:
	rm -f *.html *.pdf
