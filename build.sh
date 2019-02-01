#!/bin/bash
echo 'Downloading RLesur/klippy ...'
Rscript -e 'devtools::install_github("RLesur/klippy")'
echo 'Rendering Book ...'
Rscript -e 'bookdown::render_book("index.Rmd")'

echo 'Moving output files to `docs/` ...'
mv out.html _bookdown_files/index.html
[[ -e out.rds ]] && mv out.rds _bookdown_files/
cp -r addons _bookdown_files

[[ -d docs ]] && rm -r docs
mv _bookdown_files docs