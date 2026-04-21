# template-formula-theme.tex
Created 2026-04-21


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing

## Latex File


*make.sh*
```bash
noweb.py -Rtemplate-formula-theme.tex template-formula-theme.tex.md > template-formula-theme.tex && lualatex -interaction=nonstopmode -shell-escape template-formula-theme.tex && lualatex -interaction=nonstopmode -shell-escape template-formula-theme.tex && notify-send -a "Compilation of template-formula-theme.tex" "" "$(date +"%Y-%m-%d") fertig" && xdg-open template-formula-theme.pdf 2>/dev/null 
```


*template-formula-theme.tex*
```latex

\definecolor{color-important}{HTML}{ {{important-color}} }

\definecolor{color-function-operator}{HTML}{ {{function-color}} }

\definecolor{color-operator}{HTML}{ {{operator-color}} }

\definecolor{color-general-variable}{HTML}{ {{variable-color}} }

\definecolor{color-index}{HTML}{ {{index-color}} }

\definecolor{color-parameter}{HTML}{ {{parameter-color}} }

\definecolor{color-stochastic}{HTML}{ {{stochastic-color}} }

\definecolor{color-data}{HTML}{ {{data-color}} }

```
