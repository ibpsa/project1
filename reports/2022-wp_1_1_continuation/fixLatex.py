#!/usr/bin/python
# -*- coding: utf-8 -*-
import os, sys
from io import open
print(sys.version)

oldFil=os.path.join("build", "latex", "ibpsa_modelica.tex")
newFil=os.path.join("build", "latex", "ibpsa_modelica.tex-new")

def freplace(old, new):
    with open(oldFil, mode="rt", encoding="utf-8") as fin, open(newFil, mode="wt", encoding="utf-8") as fout:
        for line in fin:
            fout.write(line.replace(old, new))
    os.remove(oldFil)
    os.rename(newFil, oldFil)


freplace('\\tableofcontents', '')
freplace('\\phantomsection\\label{index::doc} \\clearpage', '')
freplace('sphinxmanual',
        'report')
freplace('\documentclass[letterpaper,11pt, openany]{sphinxmanual}',
        '\documentclass[letterpaper,11pt,english]{report}')
freplace('\sphinxmaketitle',
        '\input{../../source/titlepage.tex} \setcounter{page}{2}')
freplace('\phantomsection\label{index::doc}',
        '\phantomsection\label{index::doc} \clearpage')
freplace('\subsection{',
        '\subsubsection{')
freplace('\section{',
        '\subsection{')
freplace('\chapter{',
        '\section{')

freplace('This document proposes a continuation',
         '\section{Abstract}\nThis document proposes a continuation')

