build: resume.pdf
.PHONY: build

resume.pdf: resume.html
	wkhtmltopdf $< $@

resume.html: resume.md style.css
	pandoc -s -c style.css --from markdown --to html -o $@ $<
