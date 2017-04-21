#!/usr/bin/python
import os

newFil=os.path.join("build", "latex", "ibpsa_project1_workplan_draft.tex-new")
oldFil=os.path.join("build", "latex", "ibpsa_project1_workplan_draft.tex")

def replace(old, new):
    with open(newFil, "wt") as out:
        for line in open(oldFil):
            out.write(line.replace(old, new))
    os.remove(oldFil)
    os.rename(newFil, oldFil)

replace('\\tableofcontents', '')
replace('\\phantomsection\\label{index::doc} \\clearpage', '')
#replace('\def\sphinxdocclass{report}', 
#        '%\def\sphinxdocclass{report}')
replace('\def\sphinxdocclass{report}', 
        '\def\sphinxdocclass{article}')
replace('\documentclass[letterpaper,11pt, openany]{sphinxmanual}',
        '\documentclass[letterpaper,11pt,english]{article}')
replace('\maketitle',
        '\input{../../source/titlepage.tex} \setcounter{page}{2}')
replace('\phantomsection\label{index::doc}',
        '\phantomsection\label{index::doc} \clearpage')
replace('\subsection{',
        '\subsubsection{')
replace('\section{',
        '\subsection{')
replace('\chapter{',
        '\section{')
#replace('\\begin{thebibliography}{1}', 
#        '''\\chapter{References}
#\\begin{thebibliography}{1}''')




