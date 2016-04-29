TARGET=main
LL=pdflatex
# CLEAN=latexmk -C

all: revision.tex $(TARGET)

pdf: revision.tex # $(TARGET)

.PHONY : clean revision.tex $(TARGET)


revision.tex:
	bash ./rev.sh

# $(TARGET): $(TARGET:%.pdf=%.tex) $(SRC)
$(TARGET):
	$(LL) $(TARGET).tex

clean:
	rm -f revision.tex 
    # $(CLEAN)