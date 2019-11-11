.PHONY: FORCE
paper.pdf: FORCE
	./latexrun paper

.PHONY: auto
auto:
	latexmk -pdf -pvc paper.tex

.PHONY: clean
clean:
	./latexrun --clean-all
	@rm -f paper.pdf paper.aux paper.bbl paper.blg paper.fdb_latexmk paper.fls paper.log paper.out
