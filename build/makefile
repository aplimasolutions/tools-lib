# makefile to compile md files to convert .docx
.PHONY: all compile convert-to-pdf clean download_deps purge_tempfiles
all: clean download_deps generate compile convert-to-pdf purge_tempfiles

clean:
	@echo "Cleaning up..."
	-rm ../content/home/output.md
	-rm output.pdf
	-rm compile.sh

download_deps:
	@echo "Downloding compile.sh.."
	curl -O https://raw.githubusercontent.com/aplimasolutions/tools-lib/master/build/compile.sh
	@echo "Granting execute permission.."
	chmod a+x compile.sh

generate:
	@echo "Generating the list of files to be compiled.."
	ls ../content/home/ > files.txt

compile:
	@echo "compiling.."
	./compile.sh
	@echo "finished..."

convert-to-pdf:
	@echo "importing pdf doc"
	mv ../content/home/output.pdf .

purge_tempfiles:
	@echo "removing tempfiles.."
	-rm ../content/home/output.md
	-rm compile.sh