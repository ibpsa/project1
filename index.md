---
layout: page
title: IBPSA Project 1
permalink: index.html
---

<div class="starter-template">
  <h1>IBPSA Project 1</h1>
  <p class="lead">
    BIM/GIS and Modelica Framework for building and community energy system
    design and operation
  </p>
  <img src="{{ site.url }}/assets/img/overview.jpg" alt="Overview" width="650px">
</div>

IBPSA Project 1 will create open-source software
that builds the basis of next generation computing tools
for the design and
operation of building and district energy and control systems.
It extends work conducted under the
[IEA EBC Annex 60](http://www.iea-annex60.org).
All work is open-source and built on three standards:

 - [IFC](http://www.buildingsmart-tech.org/) for data modeling at the building scale,
 - [CityGML](http://www.citygml.org/) for data modeling at the district scale, and
 - [Modelica](http://www.modelica.org) for modeling the performance of building and district energy systems.

<h2>Registration and Announcements</h2>

To register, please visit the [registration form](https://docs.google.com/a/lbl.gov/forms/d/1tyu3Qb3ydPseACxBgtL_UTKIdQS75eKr4zX89v7T0EM/viewform).

To receive announcements, [join the email announcement list]({{ site.url }}/participation.html).

<h2>Main Research Tasks</h2>
The main tasks, which evolved from the original
[workplan]({{ site.url }}/downloads/ibpsa_project1_workplan.pdf), are as
described below.

<h3>Task 1: Modelica Libraries</h3>
<h4>Work Package 1.1: Modelica IBPSA Library</h4>
<p>
<b>Work Package Leader:</b> Michael Wetter, LBNL, Berkeley, CA.
</p>
<p>
This work package will develop a free open-source
library of Modelica models for design and operation of
building and community energy and control
systems with associated documentation for new and experienced users.
The library is being developed through
the further development of the Modelica IBPSA Library
(<a href="https://github.com/ibpsa/modelica-ibpsa">github.com/ibpsa/modelica-ibpsa</a>),
a library which is used as the core of the four Modelica libraries
</p>
<ul>
<li>
 <a href="https://github.com/RWTH-EBC/AixLib">AixLib </a>,
 from RWTH Aachen University, Germany,
</li>
<li>
 <a href="http://simulationresearch.lbl.gov/modelica">Buildings</a>,
 from LBNL, Berkeley, CA, USA,
</li>
<li>
 <a href="http://www.modelica-buildingsystems.de">BuildingSystems</a>,
 from UdK Berlin, Germany, and
 </li>
 <li>
 <a href="https://github.com/open-ideas/IDEAS">IDEAS</a>,
 from KU Leuven, Belgium.
 </li>
 </ul>
<p>
All models are documented and validated against analytical solutions, against
the results of other simulators or against measurement data.
</p>
<h4>Work Package 1.2: Building Optimization Performance Tests and Modelica library for MPC</h4>
<p>
<b>Work Package Leader:</b> Lieve Helsen, KU Leuven, Belgium.
</p>
<p>
This work package is developing
a software package called BOPTEST that allows testing, assessing, comparing and benchmarking
Model Predictive Control algorithms and other control formulations.
It is also developing a Modelica library for use within a Model Predictive Controller.
</p>
<p>
The BOPTEST framework consist of reference building emulation test cases, key performance indicators
(KPIs) for quantification and assessment, and a software platform to select and manage test cases,
exchange control and measurement data, calculate KPIs and generate reports. The aim of a test case is
to provide a clear and unambiguously defined scenario where any controller can be tested to enable a
fair comparison between different control strategies. Therefore, a test case is defined as a
combination of a building emulator model and a data-set gathering boundary conditions like weather,
energy prices, emission factors, occupancy schedules and comfort requirements for a one-year duration.
The selected test cases
represent combinations of buildings and energy systems typically encountered in Europe and the
US. Each test case describes the signals that are accessible at different control levels, e.g. room
temperature set points at high level, and damper and valve positions and fan and pump speeds at low level.
Baseline controllers are included and operate whenever the control signal is not overwritten by the
external (tested) controller.
</p>
<p>
Also, a library with models that are suited for use in
nonlinear Model Predictive Control (MPC) is being developed.
</p>

<!-- ------------------------------------ -->
<h3>Task 2: Building and City Quarter Models</h3>
<h4>Work Package 2.1: City District Information Modeling</h4>
<p>
<b>Work Package Leader:</b> Gerald Schweiger, TU Graz, Austria.
</p>
<p>
This work package addresses urban scale energy performance simulation of domestic and non-domestic buildings.
Highlighting the exchange requirements and country-specific data mapping approaches, the work package also deals with
archetypal definitions of buildings with respect to the generalization of country-specific age-bands, geometrical forms
and building functions. Semantic data enrichment, parsimonious geometric information processing and the participation
in development of the CityGML schema and EnergyADE for specific simulation tools is also emphasized. Considering
different modelling techniques, generic import-export functionalities and enrichment algorithms, the team aims to
demonstrate the application of the developed workflows for a range of tools, including Modelica and EnergyPlus, and
for a range of geographical contexts and application use cases. The GML ToolBox, which extends the pre-processing
of geometric prerequisites, modelling of thermal zones and openings and checks CityGML base standards and ADE
conformance conditions for dynamic heating and cooling demand simulations in EnergyPlus, is one such example.
Another example is an extension to the TEASER tool that is currently being developed to process the five
CityGML Levels of Detail and Energy ADE information as an input for annual thermal simulation using Modelica.
A further example is the development of a new workflow for the preparation of large (thousands to tens of
thousands of buildings) urban scenes for simulation using the CitySim+ urban enery simulation engine.

Open source translators and workflows for district energy simulations can be recognized as some of the outputs for this work package.
</p>

<h4>Work Package 2.2: Building Information Modeling</h4>
<p>
<b>Work Package Leader:</b> Jérôme Frisch, RWTH Aachen University, Germany.
</p>
<p>
This work package starts from the core observations that CAD-integrated calculation and dimensioning requires detailed
models and that such models are typically not available in the early design stages. Furthermore, common HVAC
classification schemes are lacking.
HVAC wiring diagrams, which are relevant for linking with control descriptions, cannot
be exchanged with common software.
Standards are not available for digital function specification exchange.
Existing  BIM software is typically not capable of extracting space boundary descriptions
in a way to be used for energy performance
simulation using zonal modeling or CFD-based detailed indoor air flow analysis.
</p>
<p>
The work package therefore addresses such data classification and specification, geometry and HVAC model processing.
In the first phase, groundwork was set up for the collaborative development and testing of different classes of geometric
algorithms for transforming building information models to building performance simulation. Various libraries were
considered for reading IFC data and for processing geometric information such as IfcOpenShell, IfcPlusPlus, xBIM (IFC) as
well as geometry kernels such as OpenCascade, ParaSolid and ACIS.
</p>
<p>
Based on this experience, developments will be continued using the IfcOpenShell and OpenCascade libraries. Advanced space boundary algorithms for model topology analysis and model generation are currently tested and new algorithms are developed.
</p>
<p>
<a href="https://github.com/ibpsa/project1/tree/master/wp_2_2_bim">Link to the WP 2.2 development repository</a>
</p>

<h3>Task 3: Application and Dissemination</h3>
<h4>Work Package 3.1: District Energy DESTEST</h4>
<p>
<b>Work Package Leader:</b> Dirk Saelens, KU Leuven, Belgium.
</p>
<p>
This work package is developing a framework called DESTEST to test District Energy System simulations.
The aim of DESTEST is to provide a means to validate models of urban energy systems by defining specific district energy
cases for testing in different simulation environments. By carefully selecting and specifying these cases, and by using
different libraries for modeling these energy systems, a thorough verification, comparison and benchmarking will become
possible. The description of the DESTEST cases and the simulation results of extensively verified models for urban energy
systems will be made available as a reference for comparing other simulation programs and model libraries.
</p>
<p>
This work package makes use of common exercises in which different participants solve a well described case, discuss the difficulties during execution and compare the results. This common exercises will gradually increase in complexity: different building typologies and characteristics, climate and occupancy patterns as well as districts with different scales will be implemented. With respect to networks, cooling networks and electrical grids will also be analysed. Finally, demand and distribution subsystems will be combined to assess their performance and to check interoperability of tools that model separate subsystems.
</p>
<h4>Work Package 3.2: Application </h4>
<p>
<b>Work Package Leader:</b> Alessandro Maccarini, Aalborg University, Denmark.
</p>
<p>
This work package will demonstrate capabilities enabled by the use of Modelica for building and district energy systems. A number of case studies from different applications (e.g. HVAC systems in buildings, district heating networks etc.) will be collected and described through a unified template. The template includes information such as objective of the simulation study, system diagram, computing time, libraries and models used. The collection and systematic description of application case studies aim at
</p>
<ul>
<li>
identifying research needs for Task 1 and Task 2,
</li>
<li>
illustrating the advantages that Modelica offers for the design, modeling and analysis of building and district energy systems, and
</li>
<li>
sharing best practices and document them for dissemination to the simulation community.
</li>
</ul>

<h2>Duration and Management</h2>

<table>
<tr>
<td>
Duration
</td>
<td>2017-2022
</td>
</tr>
<tr valign="top">
<td>
Operating Agents
</td>
<td>
Michael Wetter, LBNL, Berkeley, CA<br/>
Christoph van Treeck, RWTH Aachen, Germany
</td>
</tr>
</table>

<h2>License</h2>
<p>
The software develop in this project will be available under the following
<a href="license.html">open-source license</a>.
</p>
