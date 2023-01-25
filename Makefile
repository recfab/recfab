resume.pdf: resume.md
	pandoc --from markdown --to pdf -t html5 -o $@ $<
