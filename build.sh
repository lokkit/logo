#!/bin/bash

output_dir=./dist
mkdir -p "$output_dir"

formats="pdf png"
widths="100 400 800 1000"
input_file_names="lokkit_icon lokkit_logo" # without .svg extension

for file in ${input_file_names}; do
  echo $file
  for width in ${widths}; do
    for format in ${formats}; do
      inkscape --export-${format} "${output_dir}/${file}_${width}.${format}" -w ${width} ${file}.svg
    done
  done
done
