resume.pdf: resume.html
	wkhtmltopdf $< $@

resume.html: resume.md
	pandoc -s --from markdown --to html -o $@ $<
