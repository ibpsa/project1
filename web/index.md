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

The project will be conducted from summer 2017 to summer 2022,
performing the tasks outlined in the
[workplan]({{ site.url }}/downloads/ibpsa_project1_workplan.pdf).

To register, please visit the [registration form](https://docs.google.com/a/lbl.gov/forms/d/1tyu3Qb3ydPseACxBgtL_UTKIdQS75eKr4zX89v7T0EM/viewform).

To receive announcements, [join the email announcement list](https://groups.google.com/forum/#!forum/ibpsa-project-1-announcements/join).

There are three main tasks:

<div class="row">
      <div class="col-md-6">
      <h2>Task 1: Modelica libraries</h2>
<p>
This task will develop free open-source
libraries of Modelica models for building and community energy and control
systems with associated documentation for new and experienced users.
Modelica libraries will be developed for design and operation through
the further development of the Modelica IBPSA Library, a library which is
used as the core of the four Modelica libraries
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
