slides:
	pandoc -i -t beamer slides.md -o output/slides.pdf
seminar:
	pandoc -H ~/git/templates/latex/preamble.tex -o output/seminar.pdf seminar.md

