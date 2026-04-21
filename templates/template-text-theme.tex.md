# template-text-theme.tex
Created 2026-04-20


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing

## Latex File


*make.sh*
```bash
noweb.py -Rtemplate-text-theme.tex template-text-theme.tex.md > template-text-theme.tex 
```


*template-text-theme.tex*
```latex
% theme {{theme-name}}
% version {{theme-version}}
%

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
```
