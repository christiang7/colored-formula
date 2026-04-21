# template-formula-style.tex
Created 2026-04-14


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing

## Latex File


*make.sh*
```bash
noweb.py -Rtemplate-formula-style.tex template-formula-style.tex.md > template-formula-style.tex && notify-send -a "Compilation of template-formula-style.tex" "" "$(date +"%Y-%m-%d") fertig"
```


*template-formula-style.tex*
```latex
% Farbige Formeln richtig einfärben über die group Umgebung
\def\mathcolor#1#{\@mathcolor{#1}}
\def\@mathcolor#1#2#3{%
	\protect\leavevmode
	\begingroup\color#1{#2}#3\endgroup
}
\newcommand*{\opcolor}[2]{\mathop{\color{#1}{#2}}}
%%%%%%%%%%%%%% important variables

\input{formula-theme.tex}

%--- markup of latex

\newcommand{\cimp}[1]{\textcolor{color-important}{\textbf{#1}}}

\newcommand{\csto}[1]{\textcolor{color-stochastic}{\textbf{#1}}}

\newcommand{\cpara}[1]{\textcolor{color-parameter}{\textbf{#1}}}

\newcommand{\cgen}[1]{\textcolor{color-general-variable}{\textbf{#1}}}

\newcommand{\cfunc}[1]{\textcolor{color-function-operator}{\textbf{#1}}}

%\newcommand{\cind}[1]{\textcolor{color-index}{\textbf{#1}}}

%--- Equations - formulas
\newcommand{\oupdelta}{{\color{color-function-operator}\updelta}}
\newcommand{\ovary}{{\color{color-function-operator}\updelta}}
\newcommand{\opartial}{\mathrm{\mathcolor{color-function-operator}\partial}}
\newcommand{\osum}[2]{\ensuremath{\mathcolor{color-function-operator}{\sum _{\mathcolor{black}{#1}} ^{\mathcolor{black}{#2}} }}}
\newcommand{\ooint}[2]{\ensuremath{\mathcolor{color-function-operator}{\int \limits_{\mathcolor{black}{#1}}^{\mathcolor{black}{#2}} }}}
\newcommand{\osqrt}[1]{\ensuremath{\mathcolor{color-function-operator}{\sqrt{\mathcolor{black}{#1}} }}}
\newcommand{\oodot}[1]{\ensuremath{\mathcolor{color-function-operator}{\dot{\mathcolor{black}{#1}} }}}
\newcommand{\ooddot}[1]{\ensuremath{\mathcolor{color-function-operator}{\ddot{\mathcolor{black}{#1}} }}}

\input{symbol-style.tex}
```
