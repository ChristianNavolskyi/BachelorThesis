#!/bin/bash

for file in ./*.svg; do
  inkscape -D -z --file=$(pwd)/$(basename ${file}) --export-pdf=$(pwd)/$(basename ${file} .svg).pdf
done
	
