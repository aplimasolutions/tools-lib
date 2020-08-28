# makefile to compile md files to convert .docx
.PHONY: all compile convert-to-pdf clean
all: generate compile convert-to-pdf

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

clean:
	@echo "Cleaning up..."
	rm files.txt
	rm ../content/home/output.md
	rm output.pdf
