# color-definitions
Created [2025-02-18]()


## Description

## Journal
 - [x] Backlog
    - [ ] 
 - [x] Doing
 
## conf code


*make.sh*
```bash
noweb.py -Rstyle-light.conf color-definitions.md > style.conf && echo 'style.conf' && date
noweb.py -Rcolor-style.tex color-definitions.md > color-style.tex
noweb.py -Ratom-one-light-mod.theme color-definitions.md > atom-one-light-mod.theme
cp color-style.tex test-color_tex/color-style.tex
cp color-style.tex ~/Gedankenspeicher/Vorlagen/color-style.tex
ln -sf $(pwd)/style.conf ~/.config/zim/style.conf && echo 'fertig'
```


## light theme

### meaning for topics

#### general

[bold - strong](#bold---strong) - important
[emphasis - italic](#emphasis---italic) - example
[mark - both emphasis and bold](#mark---both-emphasis-and-bold) - 
[indent](#indent) - cite
[code](#code) - Code

#### coding 


#### physics



#### math

[bold - strong](#bold---strong) - important
[emphasis - italic](#emphasis---italic) - example
[mark - both emphasis and bold](#mark---both-emphasis-and-bold) - 
[indent](#indent) - cite
[code](#code) - Code



### headline

#0184bc

*headline-light-wiki*
```bash
foreground=#0184bc
```

*headline-light*
```bash
"selected-text-color": "#0184bc",
"text-color": "#0184bc"
```

*headline-light-color*
```bash
0184bc
```

### Bold - strong
#4078f2

*bold-light-wiki*
```bash
foreground=#4078f2
```

*bold-light*
```bash
"selected-text-color": "#4078f2",
"text-color": "#4078f2"
```

*bold-light-color*
```bash
4078f2
```


### emphasis - italic

*emphasis-light-wiki*
```bash
foreground=#e45649
```
#e45649

*emphasis-light*
```bash
"selected-text-color": "#e45649",
"text-color": "#e45649"
```

*emphasis-light-color*
```bash
e45649
```


### mark - both emphasis and bold

#f2ae49

#454e60
#f5f5f5


#fafafa

*mark-light-wiki*
```bash
foreground=#f2ae49
background=#f5f5f5
```
#f2ae49

*mark-light*
```bash
"selected-text-color": "#f2ae49",
"text-color": "#f2ae49"
```

*mark-light-color*
```bash
f2ae49
```


### strike

*strike-light-wiki*
```bash
foreground=#a0a1a7
```

#a0a1a7

*strike-light*
```bash
"selected-text-color": "#a0a1a7",
"text-color": "#a0a1a7"
```

### indent

used for indents, metadata, Link Reference, Comments

*indent-light-wiki*
```bash
foreground=#737373
```

#737373

*indent-light*
```bash
"selected-text-color": "#737373",
"text-color": "#737373"
```

### code
#d19a66

#986801

*code-light-wiki*
```bash
foreground=#986801
```

*code-light*
```bash
"selected-text-color": "#986801",
"text-color": "#986801"
```

*code-light-color*
```bash
986801
```


### link intern

*link-intern-light-wiki*
```bash
foreground=#50a14f
```

#50a14f


*link-intern-light*
```bash
"selected-text-color": "#50a14f",
"text-color": "#50a14f"
```

### link extern

*link-extern-light-wiki*
```bash
foreground=#a626a4
```
#a626a4

*link-extern-light*
```bash
"selected-text-color": "#a626a4",
"text-color": "#a626a4"
```

### tag
#986801

*tag-light-wiki*
```bash
foreground=#d19a66
```

*tag-light*
```bash
"selected-text-color": "#d19a66",
"text-color": "#d19a66"
```


### important quantity
#3890b5

*important-quantity*
```bash
3890b5
```


### function - operator
#0000b3
*function-operator*
```bash
0000b3
```

### index variable
#b30000

*index*
```bash
b30000
```

### number - value
black

### coordinate - general describing variable
#808080
*general-variable*
```bash
808080
```

### stochastic variable
#86592c
*stochastic*
```bash
86592c
```

### parameter
#008000
*parameter*
```bash
008000
```

### data 
#86592c
*data*
```bash
86592c
```
#660066


### latex style


LaTeX/Colors - Wikibooks, open books for an open world  
https://en.wikibooks.org/wiki/LaTeX/Colors  
LaTeX Color Definitions  
https://latexcolor.com/  
Using colors in LaTeX - Overleaf, Online LaTeX Editor  
https://www.overleaf.com/learn/latex/Using_colors_in_LaTeX  
\newcommand und \renewcommand – LaTeX Fragen Start  
https://latex-fragen.de/newcommand-und-renewcommand/  

*color-style.tex*
```latex
% Farbige Formeln richtig einfärben über die group Umgebung
\def\mathcolor#1#{\@mathcolor{#1}}
\def\@mathcolor#1#2#3{%
	\protect\leavevmode
	\begingroup\color#1{#2}#3\endgroup
}
\newcommand*{\opcolor}[2]{\mathop{\color{#1}{#2}}}
%%%%%%%%%%%%%% important variables

\definecolor{color-important}{HTML}{
#*important-quantity}}
}

\definecolor{color-function-operator}{HTML}{
#*function-operator}}
}

\definecolor{color-general-variable}{HTML}{
#*general-variable}}
}

\definecolor{color-index}{HTML}{
#*index}}
}

\definecolor{color-parameter}{HTML}{
#*parameter}}
}

\definecolor{color-stochastic}{HTML}{
#*stochastic}}
}

\definecolor{color-data}{HTML}{
#*data}}
}

\definecolor{color-headline}{HTML}{
#*headline-light-color}}
}

\definecolor{color-bold}{HTML}{
#*bold-light-color}}
}

\definecolor{color-emphasis}{HTML}{
#*emphasis-light-color}}
}

\definecolor{color-mark}{HTML}{
#*mark-light-color}}
}

\definecolor{color-code}{HTML}{
#*code-light-color}}
}



%--- markup of latex

%\newcommand{\cpart}[1]{\textcolor{color-headline}{\part{#1}}}

%\newcommand{\csection}[1]{\textcolor{color-headline}{\section{#1}}}

%\newcommand{\csubsection}[1]{\textcolor{color-headline}{\subsection{#1}}}

%\newcommand{\csubsubsection}[1]{\textcolor{color-headline}{\subsubsection{#1}}}

\newcommand{\cbold}[1]{\textcolor{color-bold}{\textbf{#1}}}

\newcommand{\cemph}[1]{\textcolor{color-emphasis}{\emph{#1}}}

\newcommand{\cund}[1]{\textcolor{color-mark}{\underline{#1}}}

\newcommand{\csf}[1]{\textcolor{color-code}{\textsf{#1}}}

\newcommand{\cimp}[1]{\textcolor{color-important}{\textbf{#1}}}

\newcommand{\csto}[1]{\textcolor{color-stochastic}{\textbf{#1}}}

\newcommand{\cpara}[1]{\textcolor{color-parameter}{\textbf{#1}}}

\newcommand{\cgen}[1]{\textcolor{color-general-variable}{\textbf{#1}}}

\newcommand{\cfunc}[1]{\textcolor{color-function-operator}{\textbf{#1}}}

\newcommand{\cind}[1]{\textcolor{color-index}{\textbf{#1}}}

\newtagform{index}{\color{color-index}(}{)}

\usetagform{index}

\hypersetup{hidelinks,colorlinks=false}%,colorlinks,citecolor={blue},urlcolor={color-link} ,linkcolor={color-important}

%\renewcommand{\thepart}{\textcolor{color-important}{\Roman{section}}}
%\renewcommand{\thesection}{\textcolor{color-important}{\arabic{section}}}
%\renewcommand{\thesubsection}{\textcolor{color-important}{\arabic{section}.\alph{subsection}}}
%\renewcommand{\thesubsubsection}{\textcolor{color-important}{\arabic{section}.\alph{subsection}.\roman{subsubsection}}}

%\renewcommand\thesection{\roman{section}}

%\allsectionsfont{\color{color-important}}

\newcommand{\cref}[1]{\textcolor{color-index}{\textbf{\ref{#1}}}}
\newcommand{\sref}[1]{\textcolor{color-important}{\textbf{\ref{#1}}}}
\newcommand{\ccite}[1]{\textcolor{color-index}{\textbf{\cite{#1}}}}
\newcommand{\cautocite}[1]{\textcolor{color-index}{\textbf{\autocite{#1}}}}

\addtokomafont{disposition}{\color{color-important}}% color of all headings
\addtokomafont{partentry}{\color{black}}% but not in the ToC
\addtokomafont{sectionentry}{\color{black}}% but not in the ToC
%\addtokomafont{subsectionentry}{\color{black}}% but not in the ToC
%\addtokomafont{subsubsectionentry}{\color{black}}% but not in the ToC

\renewcommand{\thetable}{\textcolor{color-index}{\textbf{\arabic{table}}}}
\renewcommand{\thefigure}{\textcolor{color-index}{\textbf{\arabic{figure}}}}

%--- Equations - formulas

\newcommand{\nL}{{ \color{color-important} L } }

\newcommand{\nnL}{{ \color{color-important} \mathcal{L}  } }

\newcommand{\ntL}{\tilde{{\color{color-important}L}}}
\newcommand{\nhL}{\hat{{\color{color-important}L}}}
\newcommand{\nnnL}{{\color{color-important}\mathscr{L}}}
\newcommand{\nH}{{\color{color-important}H}}
\newcommand{\nnH}{{\color{color-important}\mathcal{H}}}
%\newcommand{\nC}{{\color{color-important}C}}
\newcommand{\nR}{{\color{color-important} R } }


%--- stochastic
\newcommand{\sz}{{\color{color-stochastic}z}}
\newcommand{\sW}{{\color{color-stochastic}W}}

%--- parameter
\newcommand{\pD}{{\color{color-parameter}D}}
\newcommand{\pA}{{\color{color-parameter}A}}
%---


%%%%%%%%%%%%%% generalized coordinates

%\newcommand{\ca}{{\color{color-function-operator}a}
\newcommand{\cx} { {\color{color-general-variable} x } }
%\newcommand{\cX}{{\color{color-general-variable}X}
%\newcommand{\cx}{{\color{color-important}x}
\newcommand{\cy}{{\color{color-general-variable}y}}
\newcommand{\cw}{{\color{color-general-variable}w}}
%\newcommand{\cW}{{\color{color-general-variable}W}
\newcommand{\ctau}{{\color{color-general-variable}\tau}}
%\newcommand{\cpi}{{\color{color-general-variable}\pi}

\newcommand{\cq}{{\color{color-general-variable}q}}

\newcommand{\dcq}{\dot{\cq}}
\newcommand{\ddcq}{\ddot{\cq}}

\newcommand{\dddcq}{\dddot{\cq}}
\newcommand{\ddddcq}{\ddot{\ddot{\cq}} }

\newcommand{\cQ}{{\color{color-general-variable}Q}}
\newcommand{\nQ}{{\color{color-general-variable}Q}}
\newcommand{\dcQ}{\dot{\cQ}}
\newcommand{\np}{{\color{color-general-variable}p}}
\newcommand{\cp}{{\color{color-general-variable}p}}
\newcommand{\dcp}{{\dot{\cp} }}
\newcommand{\cpi}{{\color{color-general-variable}\pi}}
\newcommand{\cphi}{{\color{color-general-variable}\varphi}}
\newcommand{\cA}{{\color{color-general-variable}A }  }
\newcommand{\cxi}{{\color{color-general-variable}\xi}}

%---

\newcommand{\ct}{{\color{color-general-variable}t}}
\newcommand{\ccr}{{\color{color-general-variable}r}}
\newcommand{\ctheta}{{\color{color-general-variable}\theta}}
\newcommand{\fa}{{\color{color-general-variable} a } }

%\newcommand{\fN}{{\color{color-general-variable} N } }
\newcommand{\fA}{{\color{color-general-variable}A}}
\newcommand{\fvA}{{\color{color-general-variable}\mathcal{A}}}


%%%%%%%%%%%%%% functions

\newcommand{\nW}{{\color{color-function-operator}W}}
\newcommand{\neta}{{\color{color-function-operator}\eta}}
\newcommand{\fu}{{\color{color-function-operator}u}}
\newcommand{\dfu}{\dot{\fu}}
\newcommand{\fv}{{\color{color-function-operator}v}}
\newcommand{\nf}{{\color{color-function-operator}f}}
\newcommand{\nh}{{\color{color-function-operator}h}}
\newcommand{\nA}{{\color{color-function-operator}A}}
\newcommand{\nB}{{\color{color-function-operator}B}}
\newcommand{\nC}{{\color{color-function-operator}C}}
\newcommand{\nV}{{\color{color-function-operator}V}}
\newcommand{\nxi}{{\color{color-function-operator}\xi}}
\newcommand{\dif}{\mathrm{{\color{color-function-operator}d } } }
\newcommand{\ndelta}{{\color{color-function-operator}\delta}}
\newcommand{\fN}{{\color{color-function-operator}N}}
\newcommand{\fphi}{{\color{color-function-operator}\phi}}
\newcommand{\fPhi}{{\color{color-function-operator}\Phi}}
\newcommand{\fmu}{{\color{color-function-operator}\mu}}
\newcommand{\dfmu}{\dot{\fmu}}
\newcommand{\fr}{{\color{color-function-operator}r}}
\newcommand{\fT}{{\color{color-function-operator}T}}
\newcommand{\fln}{{\color{color-function-operator}\ln}}
\newcommand{\fg}{{\color{color-function-operator}g}}
\newcommand{\fq}{{\color{color-function-operator}q}}
\newcommand{\fpi}{{\color{color-function-operator}\varpi}}
\newcommand{\flambda}{{\color{color-function-operator}\lambda}}
\newcommand{\fZ}{{\color{color-function-operator}Z}}
\newcommand{\fX}{{\color{color-function-operator}X}}
\newcommand{\fY}{{\color{color-function-operator}Y}}
\newcommand{\fF}{{\color{color-function-operator}F}}
\newcommand{\fV}{{\color{color-function-operator}V}}

%---
%\newcommand{\fa}{{\color{color-function-operator} a } }
%\newcommand{\fN}{{\color{color-function-operator} N } }
%\newcommand{\fA}{{\color{color-function-operator}A}}
%\newcommand{\fvA}{{\color{color-function-operator}\mathcal{A}}}

\newcommand{\fK}{{\color{color-function-operator} K } }
\newcommand{\fE}{{\color{color-function-operator} E } }
\newcommand{\fW}{{\color{color-function-operator} W } }

\newcommand{\fc}{{\color{color-function-operator} c } }

\newcommand{\fsin}{{\color{color-function-operator} \sin}}
\newcommand{\fcos}{{\color{color-function-operator} \cos}}
\newcommand{\ftan}{{\color{color-function-operator} \tan}}
\newcommand{\farctan}{{\color{color-function-operator} \arctan}}
\newcommand{\fcosh}{{\color{color-function-operator} \cosh}}
\newcommand{\fsinh}{{\color{color-function-operator} \sinh}}
\newcommand{\fexp}{{\color{color-function-operator} \exp}}



\newcommand{\fl}{{\color{color-function-operator}l}}
\newcommand{\fS}{{\color{color-function-operator}S}}
\newcommand{\fGamma}{{\color{color-function-operator}\Gamma}}
\newcommand{\fb}{{\color{color-function-operator}b}}

\newcommand{\fG}{{\color{color-function-operator}G}}
\newcommand{\fvG}{{\color{color-function-operator}\mathcal{G}}}
\newcommand{\fs}{{\color{color-function-operator}s}}
\newcommand{\fB}{{\color{color-function-operator}B}}
\newcommand{\fvv}{\vec{\color{color-function-operator}v}}
\newcommand{\ff}{{\color{color-function-operator}f}}
\newcommand{\detg}{\sqrt{-{\color{color-function-operator}\fg} } }
\newcommand{\fC}{{\color{color-function-operator}C}}
\newcommand{\fepsilon}{{\color{color-function-operator}\varepsilon}}
\newcommand{\fnu}{{\color{color-function-operator}\nu}}
\newcommand{\fchi}{{\color{color-function-operator}\chi}}

\newcommand{\finfty}{{\color{color-function-operator}\infty}}

%%%%%%%%%%%%%% Operators

\newcommand{\oupdelta}{{\color{color-function-operator}\updelta}}
\newcommand{\ovary}{{\color{color-function-operator}\updelta}}
\newcommand{\opartial}{\mathrm{\mathcolor{color-function-operator}\partial}}
\newcommand{\osum}[2]{\ensuremath{\mathcolor{color-function-operator}{\sum _{\mathcolor{black}{#1}} ^{\mathcolor{black}{#2}} }}}
\newcommand{\ooint}[2]{\ensuremath{\mathcolor{color-function-operator}{\int \limits_{\mathcolor{black}{#1}}^{\mathcolor{black}{#2}} }}} 
\newcommand{\osqrt}[1]{\ensuremath{\mathcolor{color-function-operator}{\sqrt{\mathcolor{black}{#1}} }}}
\newcommand{\ocom}{{\color{color-function-operator},}}
\newcommand{\osem}{{\color{color-function-operator};}}
\newcommand{\odiag}{{\color{color-function-operator}\mathrm{diag}}}
\newcommand{\odet}{{\color{color-function-operator}\mathrm{det}}}
\newcommand{\oodot}[1]{\ensuremath{\mathcolor{color-function-operator}{\dot{\mathcolor{black}{#1}} }}}
\newcommand{\ooddot}[1]{\ensuremath{\mathcolor{color-function-operator}{\ddot{\mathcolor{black}{#1}} }}}
\newcommand{\ropartial}{{\opcolor{color-function-operator}\partial_{\ccr}}}
\newcommand{\topartial}{{\opcolor{color-function-operator}\partial_{\ct}}}
\newcommand{\npartial}{{\color{color-function-operator}\partial}}
\newcommand{\tpartial}{{\color{color-function-operator}\partial_{\ct}}}

%%%%%%%%%%%%%% indecies



%---
\newcommand{\iit}{{\color{color-index}t}}
\newcommand{\ir}{{\color{color-index}r}}
\newcommand{\ia}{{\color{color-index}a}}
\newcommand{\ita}{{\color{color-index}\tilde{a} } }
\newcommand{\ib}{{\color{color-index}b}}
\newcommand{\itb}{{\color{color-index}\tilde{b}} }
\newcommand{\ic}{{\color{color-index}c}}
\newcommand{\id}{{\color{color-index}d}}
\newcommand{\ie}{{\color{color-index}e}}
\newcommand{\iif}{{\color{color-index}f}}
\newcommand{\ii}{{\color{color-index}i}}
\newcommand{\iij}{{\color{color-index}j}}
\newcommand{\iin}{{\color{color-index}n}}
\newcommand{\iim}{{\color{color-index}m}}
\newcommand{\il}{{\color{color-index}l}}
\newcommand{\ik}{{\color{color-index}k}}


\newcommand{\ialpha}{{\color{color-index}\alpha}}
\newcommand{\ibeta}{{\color{color-index}\beta}}
\newcommand{\igamma}{{\color{color-index}\gamma}}
\newcommand{\imu}{{\color{color-index}\mu}}
\newcommand{\nmub[1]}{\bar{\nmu}_{#1}}
\newcommand{\itheta}{{\color{color-index}\theta}}
\newcommand{\iphi}{{\color{color-index}\varphi}}



\newcommand{\iibn}{{\color{color-index}\boldsymbol{n}}}
\newcommand{\iibm}{{\color{color-index}\boldsymbol{m}}}


%%%%%%%%%%%%%% derivatives


\newcommand{\dcphi}{\oodot{\cphi}}
\newcommand{\ddcphi}{\ooddot{\cphi}}
\newcommand{\dcA}{\oodot{\cA}}
\newcommand{\ddcA}{\ooddot{\cA}}
\newcommand{\dnq}{\oodot{\nnq}}

\newcommand{\dcphii}{\oodot{\cphi}_{\nni}}
\newcommand{\ddcphii}{\ooddot{\cphi}_{\nni}}
\newcommand{\dcAi}{\oodot{\cA}_{\nni}}
\newcommand{\ddcAi}{\ooddot{\cA}_{\nni}}
\newcommand{\dnqi}{\oodot{\nnq}_{\nni}}
%\newcommand{\partie[1]}{ \npartial_{\bar{\nmu}_{\scriptscriptstyle{#1}}}}
\newcommand{\partie[1]}{ \npartial_{\bar{\nmu}_{#1}}}

\newcommand{\da}{\oodot{\fa}}
\newcommand{\dda}{\ooddot{\fa}}
\newcommand{\ddda}{\fa^{(3)}}
\newcommand{\dddda}{\fa^{(4)}}
\newcommand{\dN}{\oodot{\fN}}
\newcommand{\ddN}{\ooddot{\fN}}
\newcommand{\dddN}{\fN^{(3)}}
\newcommand{\dA}{\oodot{\fA_{\phantom{,}}}\!}
%\newcommand{\ddA}{\color{color-function-operator}\ddot{A}}
\newcommand{\ddA}{{\ooddot{\fA_{\phantom{,}}}}\!}%\color{color-general-variable}
\newcommand{\dmu}{\oodot{\fmu}}
\newcommand{\du}{\oodot{\fu}}
\newcommand{\ddu}{\ooddot{\fu}}
\newcommand{\dddu}{\fu^{(3)}}
\newcommand{\dphi}{\oodot{\hspace{-0,35em}\fphi}}
\newcommand{\dvA}{\oodot{\fvA_{\phantom{a}}}\!\!}
\newcommand{\ddvA}{\ooddot{\fvA_{\phantom{a}}}\!\!}
\newcommand{\depsilon}{\oodot{\fepsilon}}

%%%%%%%%%%%%%% special variants

\newcommand{\vv}{v}
\newcommand{\MM}{M}
\newcommand{\va}{{\color{color-index}\mathrm{a}}}
\newcommand{\vV}{{\color{violet!80!black}V}}%#660066


```


### Wiki style config


*style-light.conf*
```bash
[TextView]
bullet_icon_size=GTK_ICON_SIZE_MENU
indent=30
tabs=None
linespacing=3
wrapped-lines-linespacing=0
font=! style=71083284 variant=800544037 17
justify=LEFT
pixels-inside-wrap=30

[Tag strong]
weight=PANGO_WEIGHT_BOLD
#*bold-light-wiki}}


[Tag emphasis]
style=PANGO_STYLE_ITALIC
#*emphasis-light-wiki}}

[Tag mark]
#*mark-light-wiki}}

[Tag strike]
#*strike-light-wiki}}
strikethrough=False

[Tag indent]
#*indent-light-wiki}}

[Tag code]
#*code-light-wiki}}
family=monospace

[Tag pre]
#*code-light-wiki}}
family=monospace
indent=20

[Tag page-link]
#*link-intern-light-wiki}}
underline=PANGO_UNDERLINE_SINGLE

[Tag link]
#*link-extern-light-wiki}}
underline=PANGO_UNDERLINE_SINGLE

[Tag tag]
#*tag-light-wiki}}

[Tag h1]
#*headline-light-wiki}}
underline=PANGO_UNDERLINE_SINGLE
weight=PANGO_WEIGHT_BOLD
scale=1.75

[Tag h2]
#*headline-light-wiki}}
weight=PANGO_WEIGHT_BOLD
scale=1.52

[Tag h3]
#*headline-light-wiki}}
style=PANGO_STYLE_ITALIC
weight=PANGO_WEIGHT_BOLD
scale=1.32

[Tag h4]
#*headline-light-wiki}}
weight=PANGO_WEIGHT_BOLD
scale=1.15

[Tag h5]
#*headline-light-wiki}}
weight=PANGO_WEIGHT_BOLD

[Tag h6]
#*headline-light-wiki}}

[Tag checked-checkbox]

[Tag xchecked-checkbox]

[Tag migrated-checkbox]

```


### editor colors

*atom-one-light-mod.theme*
```json
{
    "custom-styles": {
        "Diff": {
            "Added line": {
                "selected-text-color": "#98c379",
                "text-color": "#98c379"
            },
            "Changed line (new)": {
                "selected-text-color": "#98c379",
                "text-color": "#98c379"
            },
            "Changed line (old)": {
                "selected-text-color": "#e06c75",
                "text-color": "#e06c75"
            },
            "Removed line": {
                "selected-text-color": "#e06c75",
                "text-color": "#e06c75"
            }
        },
        "Go": {
            "Predeclared Identifier": {
                "selected-text-color": 
                "#986801"
                ,
                "text-color": 
                "#986801"
            }
        },
        "INI Files": {
            "Assignment": {
                "selected-text-color": "#383a42",
                "text-color": "#383a42"
            },
            "Section": {
                "selected-text-color": "#4078f2",
                "text-color": "#4078f2"
            }
        },
        "JavaScript": {
            "Built-in Objects": {
                "selected-text-color": "#986801",
                "text-color": "#986801"
            },
            "Function Declaration": {
                "selected-text-color": "#0184bc",
                "text-color": "#0184bc"
            },
            "Function Name": {
                "selected-text-color": "#0184bc",
                "text-color": "#0184bc"
            },
            "Module": {
                "selected-text-color": "#a626a4",
                "text-color": "#a626a4"
            },
            "Object Member": {
                "selected-text-color": "#e45649",
                "text-color": "#e45649"
            },
            "Object Method (Built-in)": {
                "selected-text-color": "#0184bc",
                "text-color": "#0184bc"
            }
        },
        "Markdown": {
            "Auto-Link": {
                #*link-extern-light}}
            },
            "Blockquote": {
                #*indent-light}}
            },
            "Blockquote: Emphasis Text": {
                #*indent-light}}
            },
            "Blockquote: Link": {
                #*link-extern-light}}
            },
            "Blockquote: Normal Text": {
                #*indent-light}}
            },
            "Blockquote: Strikethrough Text": {
                #*indent-light}}
            },
            "Blockquote: Strong Text": {
                #*indent-light}}
            },
            "Blockquote: Strong-Emphasis Text": {
                #*indent-light}}
            },
            "Code": {
                #*code-light}}
            },
            "Comment": {
                #*indent-light}}
            },
            "Email": {
                #*link-extern-light}}
            },
            "Emphasis Text": {
                #*emphasis-light}}
            },
            "Fenced Code": {
                #*code-light}}
            },
            "Footnote": {
                #*link-extern-light}}
            },
            "Header H1": {
                #*headline-light}}
            },
            "Header H2": {
                #*headline-light}}
            },
            "Header H3": {
                #*headline-light}}
            },
            "Header H4": {
                #*headline-light}}
            },
            "Header H5": {
                #*headline-light}}
            },
            "Header H6": {
                #*headline-light}}
            },
            "Line Break": {
                "text-color": "#383a42"
            },
            "Link": {
                #*link-extern-light}}
            },
            "Mailto-Link": {
                #*link-extern-light}}
            },
            "Metadata": {
                #*indent-light}}
            },
            "Normal Text: Link": {
                #*link-extern-light}}
            },
            "Reference-Link": {
                #*link-intern-light}}
            },
            "Reference-Link ID": {
                #*link-intern-light}}
            },
            "Reference-Link Name": {
                #*indent-light}}
            },
            "Reference-Link Target": {
                #*indent-light}}
            },
            "Reference-Link Target: Link": {
                #*link-intern-light}}
            },
            "Reference-Link: Email": {
                #*link-extern-light}}
            },
            "Reference-Link: Link": {
                #*link-extern-light}}
            },
            "Strong Text": {
                #*bold-light}}
            },
            "Strong-Emphasis Text": {
                #*mark-light}}
            }
        },
        "Python": {
            "Builtin Function": {
                "selected-text-color": "#0184bc",
                "text-color": "#0184bc"
            },
            "Import": {
                "selected-text-color": "#a626a4",
                "text-color": "#a626a4"
            },
            "String Substitution": {
                "selected-text-color": "#986801",
                "text-color": "#986801"
            }
        },
        "Rust": {
            "Lifetime": {
                "selected-text-color": "#986801",
                "text-color": "#986801"
            },
            "Macro": {
                "selected-text-color": "#4078f2",
                "text-color": "#4078f2"
            },
            "Self": {
                "selected-text-color": "#e45649",
                "text-color": "#e45649"
            },
            "Trait": {
                "selected-text-color": "#986801",
                "text-color": "#986801"
            },
            "Type": {
                "selected-text-color": "#0184bc",
                "text-color": "#0184bc"
            }
        },
        "TypeScript": {
            "Built-in Objects": {
                "selected-text-color": "#986801",
                "text-color": "#986801"
            },
            "Module": {
                "selected-text-color": "#a626a4",
                "text-color": "#a626a4"
            },
            "Object Member": {
                "selected-text-color": "#e45649",
                "text-color": "#e45649"
            },
            "Object Method (Built-in)": {
                "selected-text-color": "#0184bc",
                "text-color": "#0184bc"
            },
            "Types": {
                "selected-text-color": "#4078f2",
                "text-color": "#4078f2"
            }
        },
        "XML": {
            "Attribute": {
                "selected-text-color": "#986801",
                "text-color": "#986801"
            },
            "Element": {
                "selected-text-color": "#e45649",
                "text-color": "#e45649"
            }
        }
    },
    "editor-colors": {
        "BackgroundColor": "#fafafa",
        "BracketMatching": "#ff6e6e",
        "CodeFolding": "#e5e5e6",
        "CurrentLine": "#0c383a42",
        "CurrentLineNumber": "#383a42",
        "IconBorder": "#fafafa",
        "IndentationLine": "#626772",
        "LineNumbers": "#9d9d9f",
        "MarkBookmark": "#0404bf",
        "MarkBreakpointActive": "#8b0607",
        "MarkBreakpointDisabled": "#820683",
        "MarkBreakpointReached": "#6d6e07",
        "MarkError": "#c24038",
        "MarkExecution": "#4d4e50",
        "MarkWarning": "#ce7c2b",
        "ModifiedLines": "#e06c75",
        "ReplaceHighlight": "#ef747e",
        "SavedLines": "#98c379",
        "SearchHighlight": "#33526fff",
        "Separator": "#a6b0ba",
        "SpellChecking": "#c24038",
        "TabMarker": "#8894a6",
        "TemplateBackground": "#31363b",
        "TemplateFocusedPlaceholder": "#123723",
        "TemplatePlaceholder": "#123723",
        "TemplateReadOnlyPlaceholder": "#4d1f24",
        "TextSelection": "#e5e5e6",
        "WordWrapMarker": "#cddff1"
    },
    "metadata": {
        "name": "Atom One Light mod",
        "revision": 1
    },
    "text-styles": {
        "Alert": {
            "background-color": "#4d1f24",
            "bold": true,
            "selected-text-color": "#95da4c",
            "text-color": "#95da4c"
        },
        "Annotation": {
            "selected-text-color": "#50a14f",
            "text-color": "#50a14f"
        },
        "Attribute": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "BaseN": {
            "selected-text-color": "#986801",
            "text-color": "#986801"
        },
        "BuiltIn": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "Char": {
            "selected-text-color": "#50a14f",
            "text-color": "#50a14f"
        },
        "Comment": {
            "italic": true,
            "selected-text-color": "#a0a1a7",
            "text-color": "#a0a1a7"
        },
        "CommentVar": {
            "italic": true,
            "selected-text-color": "#e45649",
            "text-color": "#e45649"
        },
        "Constant": {
            "selected-text-color": "#986801",
            "text-color": "#986801"
        },
        "ControlFlow": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "DataType": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "DecVal": {
            "selected-text-color": "#986801",
            "text-color": "#986801"
        },
        "Documentation": {
            "selected-text-color": "#da4453",
            "text-color": "#e45649"
        },
        "Error": {
            "selected-text-color": "#f44747",
            "text-color": "#f44747",
            "underline": true
        },
        "Extension": {
            "bold": true,
            "selected-text-color": "#4078f2",
            "text-color": "#4078f2"
        },
        "Float": {
            "selected-text-color": "#986801",
            "text-color": "#986801"
        },
        "Function": {
            "selected-text-color": "#4078f2",
            "text-color": "#4078f2"
        },
        "Import": {
            "selected-text-color": "#50a14f",
            "text-color": "#50a14f"
        },
        "Information": {
            "selected-text-color": "#e46700",
            "text-color": "#c45b00"
        },
        "Keyword": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "Normal": {
            "selected-text-color": "#383a42",
            "text-color": "#383a42"
        },
        "Operator": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "Others": {
            "selected-text-color": "#27ae60",
            "text-color": "#27ae60"
        },
        "Preprocessor": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "RegionMarker": {
            "background-color": "#153042",
            "selected-text-color": "#3daee9",
            "text-color": "#2980b9"
        },
        "SpecialChar": {
            "selected-text-color": "#0184bc",
            "text-color": "#0184bc"
        },
        "SpecialString": {
            "selected-text-color": "#da4453",
            "text-color": "#da4453"
        },
        "String": {
            "selected-text-color": "#50a14f",
            "text-color": "#50a14f"
        },
        "Variable": {
            "selected-text-color": "#e45649",
            "text-color": "#e45649"
        },
        "VerbatimString": {
            "selected-text-color": "#da4453",
            "text-color": "#da4453"
        },
        "Warning": {
            "selected-text-color": "#da4453",
            "text-color": "#da4453"
        }
    }
}


```


## dark theme

### equations


color definitions of kate are different from the latex color definitions
Funktion: CornflowerBlue #41B0E4
Index: VioletRed #EF58A0
Koordinaten: yellow - #FFF200,  Lavender - #F49EC4, Dandelion - #FDBC42 , Goldenrod - #FFDF42
Parameter: Tomato - #FF6347
wichtige Variable: LimeGreen - #8DC73E
Daten: Chocolate - #7B3F00 -  	#D2691E, gray - #949698, RawSienna #974006
Wahrscheinlichkeit: RawSienna #974006
andere Farben: Wheat - #F5DEB3


### wiki style

*style-dark.conf*
```bash
[TextView]
bullet_icon_size=GTK_ICON_SIZE_MENU
indent=30
tabs=None
linespacing=3
wrapped-lines-linespacing=0
font=! style=71083284 variant=800544037 17
justify=LEFT
pixels-inside-wrap=30

[Tag strong]
weight=PANGO_WEIGHT_BOLD
foreground=#00aaff

[Tag emphasis]
style=PANGO_STYLE_ITALIC
foreground=#ff5858

[Tag mark]
foreground=#ffeb7a
background=#668685

[Tag strike]
strikethrough=False
foreground=#d08770

[Tag code]
foreground=#12df8a
family=monospace

[Tag indent]
foreground=#55aa7f

[Tag pre]
foreground=#12df8a
family=monospace
indent=20

[Tag link]
foreground=#b2ba6a
underline=PANGO_UNDERLINE_SINGLE

[Tag page-link]
foreground=#8e7cc3
underline=PANGO_UNDERLINE_SINGLE

[Tag tag]
foreground=#4e9a06

[Tag h1]
foreground=#00d9d9
underline=PANGO_UNDERLINE_SINGLE
weight=PANGO_WEIGHT_BOLD
scale=1.75

[Tag h2]
foreground=#00c8c8
weight=PANGO_WEIGHT_BOLD
scale=1.52

[Tag h3]
foreground=#00c8c8
style=PANGO_STYLE_ITALIC
weight=PANGO_WEIGHT_BOLD
scale=1.32

[Tag h4]
foreground=#00c8c8
weight=PANGO_WEIGHT_BOLD
scale=1.15

[Tag h5]
foreground=#00c8c8
weight=PANGO_WEIGHT_BOLD

[Tag h6]
foreground=#00c8c8

[Tag checked-checkbox]

[Tag xchecked-checkbox]

[Tag migrated-checkbox]

```
