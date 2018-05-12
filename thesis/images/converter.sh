#!/bin/bash

for file in $(find . -type f -name '*.svg'); do
  inkscape -D -z --file=$(pwd)/${file} --export-pdf=$(pwd)/${file%.*}.pdf
done
