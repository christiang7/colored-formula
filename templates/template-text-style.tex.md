# template-text-style.tex
Created 2026-04-14


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing

## Latex File


*make.sh*
```bash
noweb.py -Rtemplate-text-style.tex template-text-style.tex.md > template-text-style.tex && notify-send -a "Compilation of template-text-style.tex" "" "$(date +"%Y-%m-%d") fertig" 
```


*template-text-style.tex*
```latex
\definecolor{color-text}{HTML}{ {{text-color}} }

\definecolor{color-background-text}{HTML}{ {{text-background-color}} }

\definecolor{color-section}{HTML}{ {{section-color}} }

\definecolor{color-important}{HTML}{ {{section-color}} }

\definecolor{color-index}{HTML}{ {{index-color}} }

\definecolor{color-link}{HTML}{ {{link-color}} }

\definecolor{page-color-link}{HTML}{ {{page-link-color}} }

\definecolor{color-bold}{HTML}{ {{bold-color}} }

\definecolor{color-emphasis}{HTML}{ {{emphasis-color}} }

\definecolor{color-mark}{HTML}{ {{mark-color}} }

\definecolor{color-strike}{HTML}{ {{strike-color}} }

\definecolor{color-verbatim}{HTML}{ {{verbatim-color}} }


%--- markup of latex

%\newcommand{\cpart}[1]{\textcolor{color-headline}{\part{#1}}}

%\newcommand{\csection}[1]{\textcolor{color-headline}{\section{#1}}}

%\newcommand{\csubsection}[1]{\textcolor{color-headline}{\subsection{#1}}}

%\newcommand{\csubsubsection}[1]{\textcolor{color-headline}{\subsubsection{#1}}}

\newcommand{\cbold}[1]{\textcolor{color-bold}{\textbf{#1}}}

\newcommand{\cemph}[1]{\textcolor{color-emphasis}{\emph{#1}}}

\newcommand{\cund}[1]{\textcolor{color-mark}{\underline{#1}}}

\newcommand{\csf}[1]{\textcolor{color-code}{\textsf{#1}}}

%\newcommand{\cimp}[1]{\textcolor{color-important}{\textbf{#1}}}

%\newcommand{\csto}[1]{\textcolor{color-stochastic}{\textbf{#1}}}

%\newcommand{\cpara}[1]{\textcolor{color-parameter}{\textbf{#1}}}

%\newcommand{\cgen}[1]{\textcolor{color-general-variable}{\textbf{#1}}}

%\newcommand{\cfunc}[1]{\textcolor{color-function-operator}{\textbf{#1}}}

\newcommand{\cind}[1]{\textcolor{color-index}{\textbf{#1}}}

\newtagform{index}{\color{color-index}(}{)}

\usetagform{index}

\hypersetup{hidelinks,colorlinks=false}%,colorlinks,citecolor={blue},urlcolor={color-link} ,linkcolor={color-important}

%\renewcommand{\thepart}{\textcolor{color-important}{\Roman{section}}}
%\renewcommand{\thesection}{\textcolor{color-important}{\arabic{section}}}
%\renewcommand{\thesubsection}{\textcolor{color-important}{\arabic{section}.\alph{subsection}}}
%\renewcommand{\thesubsubsection}{\textcolor{color-important}{\arabic{section}.\alph{subsection}.\roman{subsubsection}}}

%\renewcommand\thesection{\roman{section}}

%\allsectionsfont{\color{color-section}}

\newcommand{\cref}[1]{\textcolor{color-index}{\textbf{\ref{#1}}}}
\newcommand{\sref}[1]{\textcolor{color-section}{\textbf{\ref{#1}}}}
\newcommand{\ccite}[1]{\textcolor{color-index}{\textbf{\cite{#1}}}}
\newcommand{\cautocite}[1]{\textcolor{color-index}{\textbf{\autocite{#1}}}}

\addtokomafont{disposition}{\color{color-section}}% color of all headings
\addtokomafont{partentry}{\color{black}}% but not in the ToC
\addtokomafont{sectionentry}{\color{black}}% but not in the ToC
%\addtokomafont{subsectionentry}{\color{black}}% but not in the ToC
%\addtokomafont{subsubsectionentry}{\color{black}}% but not in the ToC

\renewcommand{\thetable}{\textcolor{color-index}{\textbf{\arabic{table}}}}
\renewcommand{\thefigure}{\textcolor{color-index}{\textbf{\arabic{figure}}}}

```
