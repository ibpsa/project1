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
  <img src="{{ site.url }}/assets/img/overview.jpg" alt="Overview" width="600px">
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

To register, please visit the [registration form](https://docs.google.com/a/lbl.gov/forms/d/1tyu3Qb3ydPseACxBgtL_UTKIdQS75eKr4zX89v7T0EM/viewform).

To receive announcements, [join the email announcement list](https://groups.google.com/forum/#!forum/ibpsa-project-1-announcements/join).

The main tasks, which evolved from the original
[workplan]({{ site.url }}/downloads/ibpsa_project1_workplan.pdf), are as follows:

<div class="row">
      <div class="col-md-6">
      <h2>Task 1: Modelica libraries</h2>
<h3>Work package 1.1: Modelica IBPSA Library</h3>
<p>
<b>Task leader:</b> Michael Wetter, LBNL, Berkeley, CA.
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
 from RWTH Aachen University, Germany.
</li>
<li>
 <a href="http://simulationresearch.lbl.gov/modelica">Buildings</a>,
 from LBNL, Berkeley, CA, USA.
</li>
<li>
 <a href="http://www.modelica-buildingsystems.de">BuildingSystems</a>,
 from UdK Berlin, Germany.
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
<h3>Work Package 1.2: Building Optimization Performance Tests and Modelica library for MPC</h3>
<p>
<b>Task leader:</b> Lieve Helsen, KU Leuven, Belgium.
</p>
<p>
This work package is developing
a software package called BOPTEST that allows testing, assessing, comparing and benchmarking
Model Predictive Control algorithms and other control formulations, and
a Modelica library for use within a Model Predictive Controller.
</p>
<p>
The BOPTEST framework consist of reference building emulation test cases, key performance indicators
(KPIs) for quantification and assessment, and a software platform to select and manage test cases,
exchange control and measurement data, calculate KPIs and generate reports. The aim of a test case is
to provide a clear and unambiguously defined scenario where any controller can be tested to enable a
fair comparison between different control strategies. Therefore, a test case is defined as a
combination of a building emulator model and a data-set gathering boundary conditions like weather,
energy prices, emission factors, occupancy schedules and comfort requirements for a one-year duration.
The test cases
selected represent combinations of buildings and energy systems typically encountered in Europe and the
US. Each test case describes the signals that are accessible at different control levels, e.g. room
temperature set points at high level, damper positions, fan and pump speeds, flow rates etc. at low level.
Baseline controllers are included and operate whenever the control signal is not overwritten by the
external (tested) controller.
</p>
<p>
Also, a library with models that are suited for use in
nonlinear Model Predictive Control (MPC) will be developed.
Also developed will be a test infrastructure for advanced control algorithms.
This test infrastructure will allow to test and compare the performance of MPC algorithms
with emulated building models in the loop.
</p>
</div>
<div class="col-md-6">
    <img src="{{ site.url }}/assets/img/spaCooModelica.png" alt="Modelica model"
    width="75%">
</div>
</div>
<!-- ------------------------------------ -->


<div class="row">
          <div class="col-md-6">
          <h2>Task 2: Building and City Quarter Models</h2>
<p>
This task will develop free open-source
GIS/BIM data model to Modelica translators for individual building and
community energy systems. As in the Annex 60, emphasis was placed on
the district and building model to Modelica transformation process.
Task 2 is dedicated to continuing BIM-oriented developments but focuses on the GIS
transformation process for community energy systems. This will be
accomplished through the use of existing standards for exchanging
energy calculation data, and through extending standards such as
CityGML as appropriate. This capability will facilitate the
construction of whole building and district Modelica models, it will integrate
energy performance simulation, especially with respect to Modelica,
with the developments of BIM/GIS-based tools that are ongoing outside
of this project, and provide a path for a next-generation modeling
that also specifies control sequences.
</p>
</div>
<div class="col-md-6" >
  <img src="{{ site.url }}/assets/img/gis_model.png" alt="Network temperatures"
width="75%">
</div>
</div>
<!-- ------------------------------------ -->

<div class="row">
<div class="col-md-6">
<h2>Task 3: Application and Dissemination</h2>
<p>
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

<h3>Work Package 3.2: Application </h3>
<p>
<b>Task leader:</b> Alessandro Maccarini, Aalborg University, Denmark.
</p>
<p>
This work package will demonstrate capabilities enabled by the use of Modelica for building and district energy systems. A number of case studies from different applications (e.g. HVAC systems in buildings, district heating networks etc.) will be collected and described through a unified template. The template includes information such as objective of the simulation study, system diagram, computing time, libraries and models used. The collection and systematic description of application case studies aim at:

-Sharing best practices and document them for dissemination to the simulation community
-Illustrating which advantages Modelica offers for the design, modeling and analysis of building and district energy systems
-Identifying research needs for Task 1 and Task 2 
</p>
</div>
<div class="col-md-6">
<img src="{{ site.url }}/assets/img/TwoRoomsWithStorage_T.png" alt="Room temperatures"
width="75%">
</div>
</div>
<p>
The software develop in this project will be available under the following
<a href="license.html">open-source license</a>.
</p>

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
