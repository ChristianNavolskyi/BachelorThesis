#!/bin/bash

for file in $(find . -type f -name '*.svg'); do
  inkscape --file=$(pwd)/${file} --export-pdf=$(pwd)/${file%.*}.pdf
done
