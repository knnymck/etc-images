#!/bin/bash

cd /Users/kenny/Documents/Projects/pata/extracted_final_pages

for file in *.pdf; do
    base="${file%.pdf}"
    pdftoppm -r 300 -png "$file" "$base"
    mv "${base}-1.png" "${base}.png"
done