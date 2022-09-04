#!/bin/bash

for pf in ./task2/{2010..2020}/{01..12}/{001..005}; do
  mkdir -p "$(dirname $pf)" && echo "Файл $(echo $pf | cut -d '/' -f 5)" > "$pf.txt"
done
