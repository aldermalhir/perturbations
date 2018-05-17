slides:
	pandoc -i -t beamer slides.md -o output/slides.pdf
seminar:
	pandoc -H ~/git/templates/latex/preamble.tex -o output/seminar.pdf seminar.md
talk:
	pandoc -V geometry:margin=4cm -H ~/git/templates/latex/preamble.tex -o output/talk.pdf talk.md
