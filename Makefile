TARGET=b_luchen_resume.pdf

# HINT: Run `make clean` if you get "Nothing to be done for `all`."
all: $(TARGET)

%.pdf: %.tex res.cls
	tar cf - $< res.cls | sudo docker run -i richardbronosky/latex-compiler > $@

clean:
	rm -f $(TARGET) $$(cat .gitignore)

deploy: $(TARGET)
	git pull --rebase && git push && scp $(TARGET) $(SERVER):www/bml.rocks/resume/$(TARGET)
