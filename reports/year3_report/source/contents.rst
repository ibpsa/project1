Introduction
============

IBPSA Project 1 had a productive year, with the an expert meeting
held in Rome in August 2019, and a virtual expert meeting held
in May 2020.
Both were attended by around 50 people.

Each of the three tasks had several coordination meetings.
Funding for the continued collaboration has been secured by many
of the key participants.


Management of the Project
=========================

As of September 9, 2020,
there are
29 organizational participants and 49 individual participants.
Engie Lab is a sponsoring participant.
A full list of the participants can be found at
https://ibpsa.github.io/project1/participation.html
and a list of meetings with their minutes is available at
https://github.com/ibpsa/project1/wiki/Meetings.


Progress of the activities
==========================

Task 1: Modelica
----------------

WP 1.1: Library for design and operation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The former IEA Annex 60 library has been renamed to
*IBPSA Library* and is posted under a BSD license at
https://github.com/ibpsa/modelica-ibpsa

The development of the Modelica IBPSA Library,
hosted at https://github.com/ibpsa/modelica-ibpsa,
is actively ongoing, with monthly coordination
meetings.
A main addition this year are models for
 * borefields,
 * pressure independent air dampers,
 * three-way control valves with opening characteristics provided through
   user-defined table, and
 * BESTEST simulation for weather data.

Improvements have been done to models for
 * weather data (to allow user-supplied data that do not cover 1 year, and
   to overwrite weather data with constant values for steady-state simulation), and
 * thermal zones using a reduced order model that allows now also tracking
   of trace substances such as CO2.

Also, many icons have been refactored so that the simulation
dynamically shows current temperatures, flow rates, sensor and actuator signals.

The library is used at the core of the Modelica libraries

 * AixLib, from RWTH Aachen University, Germany: https://github.com/RWTH-EBC/AixLib
 * Buildings, from LBNL, Berkeley, CA, USA: http://simulationresearch.lbl.gov/modelica
 * BuildingSystems, from UdK Berlin, Germany: http://www.modelica-buildingsystems.de
 * IDEAS from KU Leuven, Belgium: https://github.com/open-ideas/IDEAS


WP 1.2: Model Predictive Control
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Three main tasks were defined, i.e. Using Modelica 

1.     To develop a framework to test and assess MPC performance 

2.     To compare and benchmark different MPC formulations

3.     To develop an open-source Library for MPC

The developments are actively ongoing, with monthly coordination meetings. The main activity was focused on the continued development (maintenance and feature enhancements) and prototype testing of the Building Optimization Performance Test framework (BOPTEST). BOPTEST allows testing of advanced control sequences on a range of models that emulate the response of the building and HVAC system. Emulators are being developed (some of them have been finalized and undergone a peer review based on the test case peer review document) for single-zone and multi-zone residential and commercial buildings for both air-based and hydronic HVAC systems, quantitative performance indicators have been integrated as a calculation module in the BOPTEST framework, the prototype BOPTEST is ready and now being tested by different institutes using their own-developed MPC algorithms, a web interface for BOPTEST to store and present test results and show other information about test cases is being developed, and first steps are taken to generate data sets for uncertain forecasts to be used by the BOPTEST users. In a next step, starting from the IBPSA library we will develop a library of models (IbpsaMpc) that can be used to efficiently solve optimal control problems for building and district energy systems (and that can be combined with parameter and state estimation algorithms). Moreover, we will reflect on how we can broaden the user space to e.g. the Machine Learning Community.

Publications:

Contribution to IBPSA Newsletter, 2020

D. Blum, F. Jorissen, S. Huang, Y. Chen, J. Arroyo, K. Benne, Y. Li, V. Gavan, L. Rivalin, L. Helsen, D. Vrabie, M. Wetter, and M. Sofos. (2019). Prototyping the BOPTEST
framework for simulation-based testing of advanced control strategies in buildings. In Proc. of the 16th International Conference of IBPSA, Sep 2 – 4. Rome, Italy. Available
from http://www.ibpsa.org/building-simulation-2019

Ján Drgona, Lieve Helsen, Draguna Vrabie. (2019). Stripping off the implementation complexity of physics-based model predictive control for buildings via deep learning. 
Conference on Neural Information Processing Systems, December, 2019.

D.H. Blum, K. Arendt, L. Rivalin, M.A. Piette, M. Wetter, C.T. Veje. (2019). Practical Factors of Envelope Model Setup and Their Effects on the Performance of Model Predictive
Control for Building Heating, Ventilating, and Air Conditioning Systems. Applied Energy , Vol. 236, p. 410 - 425.

Javier Arroyo, Fred Spiessens, Lieve Helsen (2020). Identification of multi-zone grey-box building models for use in model predictive control. Journal of Building Performance
Simulation, Vol. 13, p. 472-486.

Ján Drgoňa, Javier Arroyo, Iago Cupeiro Figueroa, David Blum, Krzysztof Arendt, Donghun Kim, Enric Perarnau Ollé, Juraj Oravec, Michael Wetter, Draguna L. Vrabie, Lieve Helsen
(2020). All you need to know about model predictive control for buildings.: Annual Reviews in Control – accepted.

Abstracts submitted to BS2021 Conference:

Javier Arroyo, Carlo Manna, Fred Spiessens and Lieve Helsen (2020).  Reinforced Model Predictive Control for Building Energy Management

Filip Jorissen, Damien Picard and Lieve Helsen (2020). Automated workflows for optimal design and control of buildings using Modelica


Task 2: Building and City Quarter Information Models
----------------------------------------------------

WP 2.1: City District Information Modeling
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
After having identified that our target scale is the urban district (for us meaning a scale of 100s to 1000s of buildings) and that our target scope is on the energy simulation of domestic and non-domestic buildings, the following priorities were agreed:

1. Data mapping: defining the questions to which modellers seek answers and the candidate tools available to answer them, the data needs of these tools, the country-specific data available and candidate strategies for plugging the gaps. A draft data availability mapping template has been prepared.

2. Archetypical definitions: country-specific categorisations of age bands and archetypal geometric forms for both domestic and non-domestic buildings, and strategies for the automated classification of age and form. This is to facilitate the association of semantic attributes to the built forms.

3. Parsimonious semantic enrichment: workflows for the acquisition and sanitation of semantic attribute data, the assignment of attributes to 3D models using this data, and for the plugging of gaps where attributional data is unavailable or of poor quality.

4. Identification and quantification of uncertainties for district level energy simulations.

5. Virtual Reality applications for 3D city models. 

Publications:

Avichal  Malhotra, Eric Fichter, Gerald Schweiger, Jérôme Frisch, Christoph Alban van Treeck. IBPSA Project 1: Update on city quarter and building information modelling. In Ibpsa news, Volume: 30, Issue: 1, Page(s): 31-35.
 
Avichal Malhotra, Julian Bischof, James Allan, James O'Donnell, Thomas Schweiger, Joachim Benner, Gerald Schweiger (2020). A Review on country specific data availability and acquision techniques for city quarter information modelling for building energy analysis. In proceedings of the 8th German-Austrian IBPSA Conference BauSIM 2020: September 23th - September 25th / Publisher TU Graz.


WP 2.2: Building Information Modeling
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The current work in Task 2.2 was focusing on transforming building information models towards building performance simulation. Furthermore, a common toolchain is developed for simulations in the Modelica based TEASER library and in EnergyPlus.

Starting with the import of the IFC file to Python using IfcOpenShell, generic python instances of the IFC entities are created to warrant scheme- and tool-independency. The data provided by the IFC file is analyzed. Using enrichment methods based on a multistage hierarchical decision system, non-existing values are added to the python instances. The multistage hierarchical decision system comprises five steps:

1.	Search for default property sets or association sets (Export Tool dependent)

2.	Use predefined functions to calculate required values from existing values

3.	Use statistical data enrichment by predefined templates (JSON format)

4.	Ask for user input (combined user query at the end of runtime if possible)

5.	Use default values (if useful)

Thermal zones are generated based on IfcSpaces and linked to the corresponding building elements and space boundaries. 

Based on the enriched data, simulation tool-specific preprocessing is executed. The building elements are mapped to the corresponding parameters of the simulation tools. 

For building performance simulations in TEASER, a multiroom Modelica model is generated with TEASER mako templates. For the simulation in EnergyPlus, the geometry of each IfcRelSpaceBoundary is generated using OpenCascade and exported to EnergyPlus using the geomeppy library (MIT License). If no space boundaries are provided in the IFC data, a space boundary generation algorithm is applied.



Task 3: Application and Dissemination
-------------------------------------

WP 3.1 Application
^^^^^^^^^^^^^^^^^^

In this work package a District Energy Simulation Test (DESTEST) is under development. The aim is to provide a means to validate models of urban energy systems or subsystems and to define district energy cases for testing in different simulation environments.

The first ongoing steps include the selection, description and simulation of a district heating network topology that will serve as a simple first case. The work has been split up in two groups that work interactively: (1) the building modeling group focusses on the selection and modeling of the buildings in the district, (2) the network modeling group investigates the sizing and operation of the energy network.

An abstract has been submitted to the BS2019 conference to report on the progress.

WP 3.2 Dissemination
^^^^^^^^^^^^^^^^^^^^

Project 1 will be presented at the 2018
Building Performance Analysis Conference and SimBuild,
which is co-organized by ASHRAE and IBPSA-USA,
on September 26-28, 2018.

A journal paper about effect of model accuracy
on the performance of MPC has been submitted to a journal.


Unforseen events
================

None.


Issues requiring attention of the Board
=======================================

None.

.. bibliography:: references.bib
   :cited:
