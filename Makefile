NAME = deepin-styleguide
SRC = ${NAME}.tex

build:
	@lualatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error ${SRC}
	@lualatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error ${SRC}

clean:
	@rm -f *.aux
	@rm -f *.log
	@rm -f *.out
	@rm -f *.gz
	@rm -f *.toc
	@rm -rf _minted-${NAME}

rebuild: clean build
