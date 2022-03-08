

Abstract
========

This document proposes a continuation of Work Package 1.1 "Modelica Library Development"
of the IBPSA Project 1 after Project 1 finishes in August 2022.

The continuation is proposed through a newly formed IBPSA Committee that
can maintain and further develop the library.
We propose to form a committee rather than a new project
because the continuation is expected to be indefinite as long as there
are substantial contributions and usage of the developed code.


Proposal
========

IBPSA Project 1 will finish around August 2022.
IBPSA Project 1 lead to the Modelica IBPSA Library (https://github.com/ibpsa/modelica-ibpsa)
which is used as the core of various Modelica libraries for building and
district energy systems.
To further develop and maintain the library,
we propose that IBPSA forms a new committee called
"Modelica Committee".
The purpose and scope of the committee includes the following:

   (i) Maintain and further develop the Modelica IBPSA Library.
   The committee shall follow state of the art principles that
   ensure that models are reviewed, validated and well documented.
   The development shall respond to the requirements of 3rd party libraries
   that integrate the Modelica IBPSA Library as its core library.
   The Modelica IBPSA Library shall remain available under the existing BSD license.

   (ii) Coordinate the need of the IBPSA community with the Modelica Association and with
   Modelica modeling and simulation environment developers.


Upon approval by the IBPSA Board or its designated delegate, IBPSA shall contribute funding
to cover expenses for in-person coordination meetings, such as for rooms and food.
IBPSA shall also contribute funding to use services for continuous integration testing
such as github, travis or similar.
The proposed start date of the committee is August 1, 2022.

The proposed initial slate is

- Michael Wetter (LBNL, USA)
- Saranya Anbarasu (Penn State, USA)
- Yash Shukla (CEPT University, Ahmedabad, India)
- Massimo Cimmino (Polytechnique Montreal, Canada)
- Mingzhe Liu (Penn State, USA)
- Kathryn Hinkelman (Penn State, USA)
- Filip Jorissen (KU Leuven, Belgium)
- Klaas de Jonge (Ghent University, Belgium)
- Chengnan Shi (Penn State, USA)
- Christian Vering (RWTH Aachen, Germany)
- Christoph Nytsch-Geusen (UdK Berlin, Germany)
- Alessandro Maccarini (Aalborg University, Denmark)
- Hongxiang (Casper) Fu (LBNL, USA)
- Wangda Zuo (Penn State, USA)

*Notes*

1. In early 2022, the cost for continuous integration service is US-$ 69 per month.
2. As Modelica is an open standard for a modeling language, with various commercial and
   open-source modeling and simulation environments, forming an IBPSA "Modelica Committee"
   would not impact IBPSA's position to stay tool and vendor neutral.


Background
==========

IBPSA Project 1
---------------

IBPSA Project 1
"BIM/GIS and Modelica Framework for building and community energy system design and operation"
(https://ibpsa.github.io/project1)
is being conducted from August 2017 to August 2022.
Project 1 has 29 organizational participants, 2 sponsoring participants, and 55 individual participants,
with an estimated contribution of about 150 person-years.
Project 1 is a continuation of IEA EBC Annex 60
"New generation computational tools for building and community energy systems based on the Modelica and Functional Mockup Interface standards"
(https://www.iea-annex60.org/)
that was conducted from 2012 to 2017.
Both projects were lead by Michael Wetter (LBNL, Berkeley, CA, USA)
and Christoph van Treeck (RWTH Aachen, Aachen, Germany) as co-operating agents.

Project 1 has 6 work packages. One of it is
Work Package 1.1: "Modelica IBPSA Library",
led by Michael Wetter, and described below.
The continuation of this work package is subject of this proposal.


Project 1 - Work Package 1.1 "Modelica IBPSA Library"
-----------------------------------------------------

Work Package 1.1 has been developing the Modelica IBPSA Library, previously called
Modelica Annex60 Library :cite:`WetterEtAl2015:2`.
The library consists of close to 1000 models and functions.
It is available open-source under an IBPSA-approved BSD license,
developed at https://github.com/ibpsa/modelica-ibpsa, and
used as the core of the following four Modelica libraries:

 - AixLib, from RWTH Aachen University, Germany, (https://github.com/RWTH-EBC/AixLib),
 - Buildings, from LBNL, Berkeley, CA, USA, (http://simulationresearch.lbl.gov/modelica),
 - BuildingSystems, from UdK Berlin, Germany, (http://www.modelica-buildingsystems.de/), and
 - IDEAS, from KU Leuven, Belgium, (https://github.com/open-ideas/IDEAS).

Through these libraries, models of the Modelica IBPSA Library are
also used in derivative software, such as in
BOPTEST (:cite:`BlumArroyoEtAl2021`, https://github.com/ibpsa/project1-boptest),
Spawn of EnergyPlus (:cite:`WetterBenneGautierEtAl2020`, https://lbl-srg.github.io/soep/),
URBANopt for District Energy Systems (https://docs.urbanopt.net/workflows/des.html),
Electricity de France's BuildSysPro Library (https://github.com/EDF-Lab/BuildSysPro) and
PennState Smart and Connected Communities (SCC) Library (https://sites.psu.edu/sbslab/tools/smart-and-connected-communities-scc-library/)
and Net Zero Energy Community (NZEC) Library (https://sites.psu.edu/sbslab/tools/net-zero-energy-community-nzec-library/).

The Modelica IBPSA Library is being tested with the three Modelica tools OpenModelica, OPTIMICA/IMPACT and Dymola.


About Modelica
--------------

Modelica is an open standard for a language that has been developed
for modeling of engineered systems.
It has been developed as a tool-independent language that allows sharing
models among users, authoring and simulating these models in different
modeling and simulation environments, and avoiding that users depend on a
single simulation tool developer.
The evolution of the Modelica Language is governed by the Modelica Association (https://modelica.org/),
a non-profit organization with members from Europe, USA, Canada and Asia.
The Modelica Association develops also
the Modelica Standard Library, and other open standards that are related to simulation,
such as
the Functional Mock-Up Interface (FMI) Standard,
the System Structure and Parameterization (SSP) Standard, and
the Distributed Co-Simulation Protocol (DCP) Standard.

Modelica is free to use. Various tool providers offer
modeling and simulation environments, both free and commercial, see https://modelica.org/tools.html.



.. bibliography:: references.bib
