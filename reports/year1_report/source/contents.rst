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

WP 1.2: Library for Model Predictive Control
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Three main tasks were defined, i.e., using Modelica

1. To develop a framework to test and assess MPC performance
2. To compare and benchmark different MPC formulations
3. To develop an open-source Library for MPC

The development is actively ongoing, with monthly coordination meetings.
The main activity was focused on the initiation of a Building Optimization Performance Test framework (BOPTEST).
BOPTEST will allow testing of advanced control sequences on a range of models that emulate the response
of the building and HVAC system. The development of the testing infrastructure, and of emulators
for different types of buildings and HVAC systems, is ongoing.
Emulators have been selected for single-zone and multi-zone residential and commercial buildings
for both air-based and hydronic HVAC systems, a Modelica code template and MPC description template
are being developed, first thoughts about quantification of performance indicators
have been made and we are moving towards a prototype BOPTEST.

A journal paper about effect of model accuracy on the performance of MPC has been developed and submitted to a journal.

An abstract about the framework for simulation-based testing of advanced control strategies in buildings is being submitted for the BS2019 Conference.

There was a lot of interest in this BOPTEST from the participants in the Intelligent Building Operation (IBO) Workshop in Purdue (July 2018).


Task 2: Building and City Quarter Information Models
----------------------------------------------------

WP 2.1: City District Information Modeling
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
After having identified that our target scale is the urban district (for us meaning a scale of 100s to 1000s of buildings) and that our target scope is on the energy simulation of domestic and non-domestic buildings, the following priorities were agreed:

1. Data mapping: defining the questions to which modellers seek answers and the candidate tools available to answer them, the data needs of these tools, the country-specific data available and candidate strategies for plugging the gaps. A draft data availability mapping template has been prepared.

2. Archetypical definitions: country-specific categorisations of age bands and archetypal geometric forms for both domestic and non-domestic buildings, and strategies for the automated classification of age and form. This is to facilitate the association of semantic attributes to the built forms.

3. Parsimonious geometric processing: analysis of appropriate geometric complexity, workflows for the preparation and sanitation of 3D forms (e.g. from cadastral and LiDAR data) and the evaluation of algorithms to simplify these forms. The purpose here is to identify strategies for the preparation of 3D models that represent a good compromise between realism and the associated data and computational costs.

4. Parsimonious semantic enrichment: workflows for the acquisition and sanitation of semantic attribute data, the assignment of attributes to 3D models using this data, and for the plugging of gaps where attributional data is unavailable or of poor quality.

5. Data exchange: Comparisons between IFC and CityGML schemas, methods to enrich CityGML and the Energy ADE for specific simulation tools, integration of the EnergyADE into 3DCityDB.

6. Exemplar datasets: Semantically attributed 3D models for urban-scale building energy simulation for a range of geographical contexts.

7. Demonstrations of the application of developed workflows for specific simulations tools and geographic contexts.


Collaborative papers have been identified for several of these tasks.


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
