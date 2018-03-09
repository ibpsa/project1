# IBPSA Project 1 Expert Meeting in Berlin

**DRAFT**

On February 27 and 28, 2018, the IBPSA Project 1 held its first Expert Meeting at the UdK Berlin, hosted by Christoph Nytsch-Geusen.
The meeting was attended by 60 people. The main focus of meeting was to organize the work
within and the dependencies among the work packages. There was also a
well received keynote by Hubertus Tummescheit,
Chief Strategy Officer and co-founder of Modelon,
about "The Adoption of MPC in the Power Industry – Lessons Learned and Ideas for the Buildings Industry".

![IBPSA Project 1 Expert Meeting Attendees](berlin-photo.jpg "IBPSA Project 1 Expert Meeting Attendees"){:width="250px"}

During the meeting, the following work was prioritized for the work packages.
While detailed plans may change during the 5 year project duration,
the listing gives an overview about the main priorities.

## WP 1.1: Modelica Library for Design and Operation

The focus will be to develop a validated, well-documented Modelica library
for the design and operation of building and district energy systems. This will be
accomplished by further developing https://github.com/ibpsa/modelica-ibpsa, expanding
its scope and documentation, and restructuring the library for easier use by non-expert.

The goal is to create a library that will serve as the basis of user-focused distributions
of Modelica libraries for the building energy domain, in particular the libraries
AixLib (RWTH Aachen), Buildings (LBNL), BuildingSystems (UdK Berlin) and IDEAS (KU Leuven)
that use the IBPSA library as their core. Furthermore, a goal is that such libraries
will be included in building energy simulation programs, including but not limited to EnergyPlus.

## WP 1.2: Model Predictive Control

Lieve

## WP 2.1 City District Information Modeling

The focus here is on improving the efficiency and reducing the uncertainty of urban energy simulation workflows. Key subtasks include: (i) international data mapping: defining the task-dependent data needs of urban energy simulation software, the existence and - for this is often different - availability of data, and strategies to plug the gaps between what is needed and what is available; (ii) international archetype mapping: defining country-specific domestic and non-domestic building archetypes and associated age bands, to support the semantic attribution of 3D models for urban energy simulation. Likewise, the development of classification techniques to automate the assignment of archetypes and age bands using geospatial data; (iii) parsimonious geometric processing: better understanding the appropriate level of geometric complexity needed for urban energy simulation purposes, and developing and deploying strategies to reduce geometric model complexity to these apporpriate levels; (iv) parsimonious semantic enrichment: (semi-)autmated workflows for the acquisition, sanitation and assignment of attributes to 3D models; (v) data exchange, using CityGML and its related application domain extensions (ADEs); (vi) demonstration of the capabilities of urban energy simulation software. 

## WP 2.2 Building Information Modeling

Starting from the observation that geometry processing between BIM and BPS is a tedious and error-prone process lacking a robust method for space boundary and zone identification, this work package strives to develop advanced space boundary algorithms for BIM model topology analysis and multi-scale simulation model generation. As well, the focus is on continuing the developments of the modular BIM to BPS transformation toolchain from the IEA Annex 60 for the HVAC domain. Likewise, and as a precondition, the developments will include joint work and coordination of a common BIM/HVAC classification scheme, well-linked to international standardization issues as well as the continuation of the IDM and MVD developments of the IEA Annex 60.

## WP 3.1 Application

The aim of this work package is to demonstrate through applications the capabilities that are enabled through Modelica. This will lead to the identification of specific research needs that are subsequently communicated to the researchers active in Tasks 1 and 2.  The approach is to share best approaches and document them for dissemination to the community. The outcomes of this Work Package are a collection of case studies that demonstrates capabilities enabled by use of Modelica for building and district energy system design and operation.

## WP 3.2 District energy DESTEST

The second work package within Task 3 includes the development of a validation test for district energy models that started in IEA EBC Annex 60: DESTEST. In the Berlin meeting it was agreed to define a first common exercise that simulates the behavior of a simple thermal network in a simple neighborhood. This example will serve as a first test and will be progressively be made more complex to analyze research questions related to the simulation of district energy systems. The outcome of this work package is the description of a set of representative districts that can be used for testing different DES models or testing different DES implementations and approaches (f.i. central vs decentral storage) as well as a validation test procedure for district energy system models.



The next meeting will be in fall in Paris, organized by Lisa Rivalin and Valentin Gavan of Engie.

For more information about the project, visit https://ibpsa.github.io/project1/index.html
