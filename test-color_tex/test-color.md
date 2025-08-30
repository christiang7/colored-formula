# test-color
Created [2025-03-20]()


## Description

## Journal
 - [x] Backlog
    - [ ] 
 - [x] Doing

## Latex File

*test-color.tex*
```tex
\documentclass[10pt,fleqn,reqno,a4paper]{article}
\input{general-preamble.tex}
\input{color-style.tex}
\begin{document}%\selectlanguage{english}
\cpart{new chapter}

\csection{Stochastic Resonance Equation}
In our generic model we investigate the time evolution of a stochastic variable $ \cx $. 
In our work we want to simulate a \cunderline{particle}, that is performing a random walk in a fluid, namely the well known brownian motion.
Here we investigate only the drift in $ \cx $ \cemph{direction}. 
Additionally the particle is moving in a potential $ \fV (\cx) $ and we can \ctextsf{switch} on a driving force.
It has two \ctextbf{minima}, where the particle can be located.
These two states are separated trough a potential wall $ \oDelta \fV $. 
The time evolution is described as follows: 
\begin{align}
	\cx _{\ct} = - \fV_{\cx} (\cx) + A\fcos (\omega \ct + \phi) + \sigma \cx(\ct) \label{eq:StRe}
\end{align}
The subscript variable means a derivative $ \cx _{\ct} = \dif \cx/ \dif \ct $.
As usual: $ \ct $ time variable, $ A $ amplitude and $ \omega $ frequency of the oscillator and $ \cx (\ct) $ as noise, it is the temporal derivative of a Wiener Process.
\begin{align}
	\cxi(\ct) = \frac{\dif \sW}{\dif \ct}
\end{align}
The potential function $ \fV (\cx) $ of the stochastic variable $ \cx $:
\begin{align*}
	\fV (\cx) = -\frac{1}{2}\cx ^2 + \frac{1}{4} \cx ^4
\end{align*}
We use an oscillator to get a triggered resonance.
In our model we work with an additional Gaussian white noise and with the auto-correlation we get
\begin{align}
	\langle \cxi (\ct) \cxi(0) \rangle = 2D \ndelta(\ct)
\end{align}
with $ \sigma $ the noise factor, hence the variance of noise is $ \fsqrt{2\pD} = \sigma $.
In our investigation we set the initial phase to
\begin{align*}
	\cphi = 0 \; .
\end{align*}
We add all relations together and get for our simulation the main equation:
\begin{align}
	\cx _{\ct} =\cx ^3 -\cx + A\fcos (\omega \ct) +  \fsqrt{2\pD} \cx(\ct) \label{eq:StReq1}
\end{align}
The two minima of the potential function are $ \cx _{\pm} = \pm 1 $ and hence we have $ \oDelta \fV = 1/4 $.

\csubsection{something else}
\begin{align}
	\color{color-function-operator} L_{\ii} \vV
\end{align}
\end{document}
```

*make.sh*
```bash
noweb.py -Rtest-color.tex test-color.md > test-color.tex && pdflatex -synctex=1 -interaction=nonstopmode -shell-escape test-color.tex && date && xdg-open test-color.pdf 2>/dev/null 
```


