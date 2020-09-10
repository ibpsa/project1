Introduction
============

IBPSA Project 1 had a productive year, with the two expert meetings attended
by around 50 people each. These meetings were similar in size than
for the preceeding IEA EBC Annex 60 project.

Each of the three tasks had several coordination meetings.
Funding for the continued collaboration has been secured by many
of the key participants.


Management of the Project
=========================

As of August 1, 2018,
there are currently 27 organizational participants,
2 sponsoring participants, and 30 individual participants.
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

The development is actively ongoing, with monthly coordination
meeting and an upcoming release 2.0.0, to be scheduled
for September.
A main addition this year are models for
 * heat pumps
 * glycol solution with user-specified mass fraction,
 * borefields (under development)

Also ongoing is the development of an I/O block
that allows reading and overwriting signals
through a web request. This is needed
for the *BOPTEST* emulator that is developed
in WP 1.2

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


WP 2.2: Building Information Modeling
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In the first phase of WP2.2, groundwork was set up for the collaborative development and testing of different classes of geometric algorithms for transforming building information models to building performance simulation. Various libraries were considered for reading IFC data and for processing geometric information such as IfcOpenShell, IfcPlusPlus, xBIM (IFC), OpenCascade, ParaSolid and the ACIS geometry kernel. Test runs with the IfcOpenShell library were successful for importing IFC files and extracting geometrical and semantical information from the IFC schema. The information then was used to export the building’s geometry to CAD files in the format STEP and STL using the OpenCascade library. The libraries were chosen because of their up-to-dateness, quality of documentation and support, dissemination in the building sector as well as extent, capability and suitability of the provided functions. Both libraries are distributed under a GNU Lesser General Public License. In the next working meeting, the final decision will be made which libraries to choose as basis for further developing and testing of various geometric algorithms for model transformation.

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
