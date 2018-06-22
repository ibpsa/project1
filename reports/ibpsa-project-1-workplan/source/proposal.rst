Introduction
============

Joe Clarke's vision statement :cite:`Clarke2015:1` calls for a
consolidation of models for HVAC and controls that can be used for
testing, as a review framework and as a library (Propositions 1, 3, 4,
5, 6, 7, 9, 11 and 12). The opportunity is

#. to standardize the approach for how such component and system models
   are represented, both as data-model and as mathematical models
   that formalize the physics, dynamics and control algorithms,
#. to agree upon the physics that should be included in such components for specific use cases, and
#. to share resources for development, validation and distribution of such component and system models

Similar objectives have been shared by IEA EBC Annex 60
(http://www.iea-annex60.org/), a project in which 41 institutes from
16 countries participated between 2012 and 2017. Annex 60 developed and
demonstrated new computational technologies based on the open
standards Modelica (as a modeling language), Functional Mockup
Interface FMI (for exchange of legacy models or simulators), and
Industry Foundation Classes (for Building Information Models).

The primary objectives within the technology-development subtask 1 of Annex 60 were:

#. To develop and distribute a well documented, vetted and validated
   open-source Modelica library that serves as the core of future
   building simulation programs.
#. To implement FMI interfaces in building simulation programs for
   co-simulation and model exchange and to coordinate the development of
   co-simulation master algorithms.
#. To develop an open-source tool-chain for district (GIS) and building (BIM) models to Modelica.

As Annex 60 terminates in Summer 2017,
a subset of the Annex 60 work was proposed to be continued under the umbrella of
the International Building Performance Simulation Association (IBPSA).
On December 10, 2015, the Board of Directors of IBPSA approved such a continuation,
as described in the proposal at
http://www.iea-annex60.org/downloads/ibpsa_annex60_proposal.pdf.
The continuation is called IBPSA Project 1 "BIM/GIS and Modelica
framework for building and community energy system design and
operation." It will be conducted from summer 2017 to summer 2022.
This document further describes this project.

Goals and Approach
==================

IBPSA Project 1 will
extend work from IEA EBC Annex 60, and further develop new generation
computational tools for the design and operation of building and
community energy and control systems.
Currently fragmented duplicative activities in modeling, simulation
and optimization of building and community energy systems will be
coordinated through the use of the open, non-proprietary standards IFC/CityGML for
BIM/GIS representation, and Modelica for model implementation.

Data modeling will include standards and transformation algorithms to link
object-oriented simulation modeling with building and geoinformation
(GIS) systems by adopting standards such as IFC and CityGML.
Mathematical modeling will include the development and validation
of dynamic models that represent the physics and control logic of
components and systems in Modelica, an open-standard for an equation-based,
object-oriented modeling language for engineered systems.

The anticipated outcomes are open-source, freely available, documented,
validated and verified Modelica libraries and BIM/GIS to/from Modelica
translators that allow buildings and community energy systems and
grids to be designed and operated as integrated, robust, performance
based systems with low energy use and low peak power demand.
These tools will also be used to develop a testing and benchmarking
infrastructure for advanced control algorithms and for district energy simulations.
The software development will be organized through a
stable software development process that
allows third-party developers to build applications that encapsulate
these technologies.

The primary target audience is the building energy research community,
students in building energy related sciences, and providers of
computing tools for buildings. The goals are

#. to consolidate the development of these technologies, ranging from
   equipment to system representations of the data (BIM/GIS) and their
   dynamic behavior (Modelica),
#. to share efforts for, and increase the range of, model validation, and
#. to provide to simulation tool providers stable, well-tested, validated and
   documented code that they can integrate in their software tools
   for deployment to design firms, energy service companies,
   equipment and control manufacturers,
#. to set up testing and benchmarking infrastructure for advanced control
   algorithms and for district energy simulations, and
#. to demonstrate through applications capabilities that are enabled through
   Modelica, and to identify and test through applications research needs
   and research results.

All software will be open source and free available, as described below.

Work Plan
=========

The work is organized in three tasks as follows:

#. Task 1: Further development of the open-source infrastructure
   https://github.com/ibpsa/modelica-ibpsa of models and test
   suite to coordinate Modelica-based model developments for building
   and district energy system design and operation :cite:`WetterEtAl2015:2`,
   as well as development of a Modelica library suitable for use in
   Model Predictive Controllers (MPC), and an infrastructure
   to test advanced control algorithms.
#. Task 2: Tool-chains that link object-oriented CAD systems, geoinformation
   systems, building and control design tools at various
   levels of detail with Modelica models, and that allow the deployment of
   these models to real-time systems in support of
   building commissioning, building controls and fault detection and
   diagnostics :cite:`ThoradeEtAl2015`.
#. Task 3: Application, demonstration and dissemination of work conducted in Tasks 1 and 2.

The tasks and work packages are as described below.

Task 1: Modelica
----------------

This task will develop free open-source
libraries of Modelica models for building and community energy and control
systems with associated documentation for new and experienced users.
Through WP 1.1, Modelica libraries will be developed for design and operation through
the further development of the Modelica IBPSA Library (previously called
the Modelica Annex 60 Library).
Through WP 1.2, a library with models that are suited for use in
nonlinear Model Predictive Control (MPC) will be developed.
Also through WP 1.2, a test infrastructure for advanced control algorithms
will be developed and used to compare the performance of MPC algorithms.

WP 1.1: Library for design and operation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The objective is to develop the Modelica IBPSA Library,
as a free open-source library of Modelica models for building and community energy systems.
This will be accomplished through the further development, documentation and
validation of the library.
The Modelica IBPSA Library is already used as the core of the four Modelica libraries
for buildings and community energy systems

* AixLib, from RWTH Aachen University, Germany: https://github.com/RWTH-EBC/AixLib
* Buildings, from LBNL, Berkeley, CA, USA: http://simulationresearch.lbl.gov/modelica
* BuildingSystems, from UdK Berlin, Germany: http://www.modelica-buildingsystems.de
* IDEAS from KU Leuven, Belgium: https://github.com/open-ideas/IDEAS

The anticipated outcome will be a comprehensive free open-source library
that is used by the above libraries,
by EnergyPlus
and potentially by other building simulation programs.

The deliverable will be two official releases of the library per year,
hosted on https://github.com/ibpsa/modelica-ibpsa,
and publications in the peer-reviewed literature.


WP 1.2: Library for Model Predictive Control
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The focus of WP 1.2 is threefold.
The first objective is to develop a Modelica library, possibly as a package
of the IBPSA Modelica library, with models that can be used to efficiently
solve optimal control problems for building and district energy systems within
a Model Predictive Control (MPC) algorithm, and that can be combined with
parameter and state estimation algorithms to adapt the models using measured data.
The approach is to formulate all physical equations to be at least
twice continuously differentiable with bounded derivatives on compact sets,
which is a requirement for many efficient nonlinear optimization algorithms.
The anticipated outcome is an open-source, free Modelica library of
component and system models for optimization, hosted on https://github.com/ibpsa.

The second objective is to develop a common framework to test and assess MPC performance.
This framework is a virtual test bed that represents a common architecture
with detailed building emulator models that allow control by MPC.
Both the more European hydronic systems and the more American air-based systems
are represented for different building types and complexities.
The anticipated outcome is an open source Building Optimization Test (BOPTEST)
hosted on https://github.com/ibpsa/project1-boptest.

The third objective is to compare and benchmark different
MPC formulations using the BOPTEST and selected performance indicators.
The anticipated outcome is a set of well-documented and tested MPC algorithms
with their corresponding performances as benchmarked, and guidelines for
good practice in MPC design.

Publications in the peer-reviewed literature are anticipated as well.


Task 2: Building and City Quarter Information Models
----------------------------------------------------

This task will develop free open-source
GIS/BIM data model to Modelica translators for individual building and
community energy systems. As in the Annex 60, emphasis was placed on
the district and building model to Modelica transformation process.
Task 2 shall be dedicated to continuing BIM-oriented developments but shall focus on the GIS
transformation process for community energy systems. This will be
accomplished through the use of existing standards for exchanging
energy calculation data, and through extending standards such as
CityGML as appropriate. This capability will facilitate the
construction of whole building and district Modelica models, it will integrate
energy performance simulation, especially with respect to Modelica,
with the developments of BIM/GIS-based tools that are ongoing outside
of this project, and provide a path for a next-generation modeling
that also specifies control sequences.


WP 2.1: City Quarter Information Modeling
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The objective is to develop GIS-based city quarter data model to Modelica translators for community energy systems.

Emphasis is placed on building upon existing standards such as CityGML and to make use of and to extend existing
Application Domain Extensions such as the Energy ADE.
For such city models, an automated process shall be developed
for transforming city models into reduced-order dynamic
Modelica simulation models for buildings and community energy systems.
For model instantiation in terms of physical and technical parameters,
data-base driven tools shall be enhanced based on the TEASER tool by RWTH Aachen.
The TEASER data which comprises data of the German/European building stock
shall be extended to integrate data of buildings world-wide
(scope depends on participating countries).

The outcome is a free open-source library of respective tools, data bases and tutorials
that can be used to generate and transform building/community models to Modelica models for district energy performance simulation.

The deliverable is an open-source, free tools library hosted on
https://github.com/ibpsa,
and publications in the peer-reviewed literature.


WP 2.2: Building Information Modeling
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The objective is to continue the developments of the BIM-to-Modelica transformation framework development, documentation and
process validation and to further enhance the Model View Definition (MVD) created within the Annex 60 for energy performance simulation. This is accomplished by making use of existing modeling processes, languages, tools and methods such as the ifcDoc tool, Python, C/C++, IDF and MVD. Special emphasis will be placed on the model geometry and topology analysis to support robust model transformation.

The outcome is a free open-source library of respective tools, data standards and tutorials that can be used to generate and transform building/community models to Modelica models for energy performance simulation. The deliverable is a tools library hosted on
https://github.com/ibpsa,
and publications in the peer-reviewed literature.


Task 3: Application and Dissemination
-------------------------------------


WP 3.1 Application
~~~~~~~~~~~~~~~~~~

The objective of this task is
to demonstrate through applications capabilities that are enabled through
Modelica, and to identify and test through applications research needs
and research results.
The approach is to share best approaches and document them for dissemination
to the community.

This task will also include the development of a validation test for
district energy models that started in IEA EBC Annex 60.

The outcomes are a collection of case studies that demonstrates
capabilities enabled by use of Modelica for building and district
energy system design and operation, and a validation test procedure for
district energy system models.

The deliverables are case study reports and a test procedure for
district energy system model validation.


WP 3.2 Dissemination
~~~~~~~~~~~~~~~~~~~~

The objective of this task is to disseminate the developed tools
and methodologies.
The approach is to publish papers in the peer-reviewed literature,
to host special tracks or sessions at local and international conferences,
such as the IBPSA, Modelica and ASHRAE conferences,
and to share material for use in lectures and in training for users
and developers.

The deliverables are papers and presentations about the various work
that resulted from this project.




General Provisions
==================

There shall be three levels of participation:

**Sponsoring participants** are participants or organizations that fund the project
with cash contribution at US-$ 5,000 per year. This membership will be
valid for one year, and can be renewed for multiple periods.
Contributions are to be paid to the Treasurer of IBPSA World. Finances are managed by the IBPSA.

**Organizational participants** are organizations such as companies,
research institutes or universities that commit to

 * contribute a minimum of 6 months of a full time employees per project
   year to the overall project using their own funding,
 * contribute to around 5 to 10 web-based coordination meetings annually, and
 * attend a semi-annual expert meeting, generally for two days using own funding.

These meetings are used to coordinate current work and to steer future development. As far
as possible, these coordination meetings will be collocated with an
international or a national IBPSA conference.

The operating agents can reassess the organizational membership annually
and terminate organizational memberships after such annual period, if the contributions of an
organization does not meet the above requirements.

**Individual participants** are contributors that participate in the project
as is custom in other open-source projects without a pre-determined level of commitment.

The operating agents can reassess the individual participant membership annually
and terminate membership if no substantial contributions are made.


New members members can apply at https://ibpsa.github.io/project1/participants.html.

Approval of memberships is done by the operating agents.


Duties of IBPSA
===============

IBPSA, or its regional affiliate, will provide at no cost the rooms
for the expert meetings and will at no cost announce activities of the project through its publication
channels (web site, newsletter, social media) and will provide access to a platform for dissemination, if applicable.

IBPSA will administer the funds of the project. 10% of the sponsoring organizations'
payments will remain with IBPSA to compensate for overheads, and the other 90% can be used by the project
to cover expenses at the discretion of the operating agents.
When the project terminates, all remaining funds will be owned by IBPSA.


Duties of the Operating Agent(s)
================================

The project leader(s) will provide an annual progress report to the IBPSA
board.


Intellectual Property
=====================

All workshops, software and documentation will be open accessible to anyone.

To ensure open collaboration among the participants, all code will
be released as open-source using the BSD 3-Clause
License as stated at
https://github.com/ibpsa/project1/blob/master/legal.md.

IBPSA will be the copyright owner.
The liberal nature of the license allows others to implement
the code in their software and distribute it to others at no cost.
Hence, IBPSA ownership of the copyright will allow others to
reuse and distribute the software.


.. bibliography:: references.bib
   :cited:
