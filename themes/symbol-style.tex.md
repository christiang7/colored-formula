# symbol-style.tex
Created 2026-04-15


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing

## Latex File


*make.sh*
```bash
noweb.py -Rsymbol-style.tex symbol-style.tex.md > symbol-style.tex && notify-send -a "Compilation of symbol-style.tex" "" "$(date +"%Y-%m-%d") fertig" 
```


*symbol-style.tex*
```latex

%-- important 
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

\newcommand{\ocom}{{\color{color-function-operator},}}
\newcommand{\osem}{{\color{color-function-operator};}}
\newcommand{\odiag}{{\color{color-function-operator}\mathrm{diag}}}
\newcommand{\odet}{{\color{color-function-operator}\mathrm{det}}}
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
