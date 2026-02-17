
TEX=Machine_Learning_in_Astronomy
MD=README

all: $(MD).md

$(MD).md: $(TEX).tex
	pandoc $(TEX).tex -f latex -t gfm -s -o profile/$(MD).md

clean:
	rm -f profile/$(MD).md

distclean: clean
