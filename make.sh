#!/bin/bash
# Mo 28. Jul 18:24:03 CEST 2025
export CHROME_DEVEL_SANDBOX=/usr/local/sbin/chrome-devel-sandbox
noweb.py -Rstyle-light.conf Computer-Farben.md > style.conf && echo 'style.conf' && date
noweb.py -Rcolor-style.tex Computer-Farben.md > color-style.tex
noweb.py -Ratom-one-light-mod.theme Computer-Farben.md > atom-one-light-mod.theme
cp color-style.tex test-color_tex/color-style.tex
cp color-style.tex ~/Gedankenspeicher/Vorlagen/color-style.tex
ln -sf $(pwd)/style.conf ~/.config/zim/style.conf && echo 'fertig'
