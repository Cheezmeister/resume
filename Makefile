TARGET=b_luchen_resume.pdf

# HINT: Run `make clean` if you get "Nothing to be done for `all`."
all: $(TARGET)

%.pdf: %.tex res.cls
	tar cf - $< res.cls | docker run -i richardbronosky/latex-compiler > $@

clean:
	rm -f $(TARGET) $$(cat .gitignore)

commit: $(TARGET)
	git commit --all && git push

deploy:
	 scp $(TARGET) $(SERVER):www/bml.rocks/resume/$(TARGET)
