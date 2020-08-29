#!/bin/bash

# This script compiles all .md files into a single md file to converted into docx file
# This script will normalize .md files by removing Hugo specifc details from those files
output="../content/home/output.md"
content_path="../content/home"
# this file will be pre-generated in previous make target
input="modules.txt"
while IFS= read -r file
do
  # skip line that starts with comment #
  [[ "$line" =~ ^#.*$ ]] && continue
  echo "compiling $file..."
  sed 1,3d "$content_path/$file" >> "$output"
  # add couple of empty lines at the end of the file
  echo >> "$output"
  echo >> "$output"
  # add --- separator at the end of the file
  echo --- >> "$output"
  # add one more empty line at the end of  the file
  echo >> "$output"
done < "$input"
echo "converting into pdf.."
cd "$content_path"
markdown-pdf output.md
#pandoc -o output.docx output.md
