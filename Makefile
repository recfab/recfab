build: resume.pdf cover_letter.pdf
.PHONY: build

resume.pdf: resume.html
	wkhtmltopdf $< $@

resume.html: resume.md style.css
	pandoc -s -c style.css --from markdown --to html -o $@ $<

cover_letter.pdf: cover_letter.html
	wkhtmltopdf $< $@

cover_letter.html: cover_letter.md style.css
	pandoc -s -c style.css --from markdown --to html -o $@ $<

cover_letter.md: cover_letter_template.md
	cp $< $@
