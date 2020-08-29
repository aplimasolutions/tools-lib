# makefile to compile md files to convert .docx
.PHONY: all compile convert-to-pdf clean
all: clean generate compile convert-to-pdf

clean:
	@echo "Cleaning up..."
	rm files.txt
	rm ../content/home/output.md
	rm output.pdf
	rm compile.sh

download_deps:
	@echo "Downloding compile.sh.."
	curl -O https://raw.githubusercontent.com/aplimasolutions/tools-lib/master/build/compile.sh 

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


