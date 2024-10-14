BUILD_DIR=_build

TEXROOT=main.tex

IMAGES=photo.jpg

PDF=main.pdf

all: $(PDF)

LATEXFLAGS+=-pdf
LATEXFLAGS+=-shell-escape
LATEXFLAGS+=-verbose
LATEXFLAGS+=-file-line-error
LATEXFLAGS+=-synctex=1
LATEXFLAGS+=-interaction=nonstopmode
LATEXFLAGS+=-outdir=$(BUILD_DIR)

$(PDF): $(TEXROOT) $(IMAGES) | $(BUILD_DIR)
	latexmk $(LATEXFLAGS) $<

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)
