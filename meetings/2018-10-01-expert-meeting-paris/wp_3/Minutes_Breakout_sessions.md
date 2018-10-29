# IBPSA Project 1 Paris Expert Meeting

Paris, October 1-2, 2018

## Contents
<!-- TOC depthFrom:2 depthTo:3 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Contents](#contents)
- [Breakout session 1-1](#breakout-session-1-1)
	- [Presentation Krzysztof](#presentation-krzysztof)
	- [Presentation Ina](#presentation-ina)
- [Breakout session 1-2](#breakout-session-1-2)
	- [Presentation Bram](#presentation-bram)
	- [Organisation of the break-out sessions of day 2](#organisation-of-the-break-out-sessions-of-day-2)
- [Breakout session 2-1](#breakout-session-2-1)
	- [Discussion building models](#discussion-building-models)
	- [Discussion thermal network model](#discussion-thermal-network-model)
- [Breakout session 2-2](#breakout-session-2-2)
	- [Presentation Enora](#presentation-enora)
	- [Presentation Julie](#presentation-julie)
	- [Presentation Igor](#presentation-igor)
	- [Small brain storm session](#small-brain-storm-session)
- [Breakout session 2-3](#breakout-session-2-3)
	- [WP 1.1](#wp-11)
	- [WP 1.2](#wp-12)
	- [WP 2.2](#wp-22)
- [Breakout session 2-4](#breakout-session-2-4)
- [Action points](#action-points)

<!-- /TOC -->

## Breakout session 1-1

### Presentation Krzysztof

**TERMONET Project**
- Model predictive control for special configuration of thermal network with boreholes (non-insulated pipes)
- Important to control on district level to avoid too low temperatures in network, decreasing COP of heat pumps
- Compare individual MPC to distributed
- High-order model for the design and sizing, but low-order model for control and optimization (> scalability)
- Optimization using
  - Multiple shooting
  - Genetic algorithm

### Presentation Ina

**Status of PhD work**
- Overview of previous work
  - Comparison between using geometrical archetypes and geometrical models (CityGML)
  - Comparison of different levels of detail (CityGML)
  - Influence of window-to-wall ratio
  - Deterministic data enrichment using TABULA/TEASER
- Next steps
  - Probabilistic data enrichment using EPC database > quantile regression model
  - Correlation between predicted values (U-values)

## Breakout session 1-2

### Presentation Bram

**Neighbourhood heat load aggregation**
(collab with Ina and Annelies)
- Used for design optimization of District Energy Systems, focus on storage sizing
- Using deterministic heat load profiles
  - Reduce complexity, but not accuracy
- Compare individual simulation of all buildings to archetype simulation with scaling
  - Detailed models: white box IDEAS models
  - Reduced order models: TEASER four-element models
- Peak heating demand represented very well, but lower powers show some difference
- Annual energy use is approximated very well
- Discussion on generation of "typical" comfort set-points for archetype simulation, including simpler method to reduce computation time (10x speed-up)

### Organisation of the break-out sessions of day 2
- Brain storm session > framework of a DESTEST (+ reality check! > what are we going to work on specifically?)

## Breakout session 2-1

### Discussion building models

- The following people agreed to model the single building that was part of our first dummy district. An elaborate description can be found at: https://github.com/ibpsa/project1/tree/master/wp_3_2_destest (in this repository, you find a README.txt-file; the climate file in TMY-format as well as a MOS-file to convert the weather format to EPW-format, you also find the IDEAS Modelica models as well as the results in csv format from these models). If you have any questions, please don’t hesitate to send Ina an e-mail (ina.dejaeger@kuleuven.be).
  - Ina: IDEAS - finished
  - Alessandro: Buildings (higher-order) - finished
  - Michael: AixLib - under construction
  - Enora: Dimosim
  - Julie: Buildings (reduced-order)
  - Haris: BuildingsSystems
  - **Send results to Ina by 31st of October: in 1 csv-file **
    - Indoor temperature profile day zone [K]
    - Indoor temperature profile night zone [K]
    - Total heat demand for space heating [W]
    - 600 s timestep


### Discussion thermal network model

- Presentation by Felix
  - Depening on the tolerance of the solver: different results ?! (will look into it!)
  - Bad experience with the integrator block in Modelica
  - Bram co-developed the plug flow
  - Bram and Annelies developed a substation model
- The following people agreed to model the network (we want to perform both an inter-model comparison and an intra-model comparison). If you have any questions, please don’t hesitate to contact Felix (felix.buenning@empa.ch).
  - Felix: IBPSA library - finished
  - Bram: IBPSA library - finished (although it is exactly the same as Felix's code except for the automatic parameter loading)
  - Enora: Dimosim
  - Julie: IBPSA library
  - Alessandro: Buildings library
  - Konstantin: get junction model working
- Detailed information regarding common exercise can be found  [here](../../../wp_3_2_destest/Specifications/NetworkCommonExercise1.md)
  - **Send results to Felix by 15th of November**
  - Session to explain network modelling in Modelica will be organised soon (TBD)

## Breakout session 2-2

### Presentation Enora
- Influence of solar radiation in district energy simulations
- Compares different district geometries, different thermal characteristics and different solar radiation calculation methods

### Presentation Julie
- CRIGEN developed a web-based tool for aid decision, sizing and costing for DHC networks
- Data is imported from different French databases (if they don't have sufficient data, they use the TABULA archetypes)
- 10 different building use types
- Weather imported from MeteoMatics
- DHW is included
Use case of the city of Rennes, France

### Presentation Igor
- ZEN project (zero energy neighbourhoods)
  - 8 neighbourhoods (3 existing + 5 new)
- RockStore
  - Related to Annex 51
- LTTG+ (Low temperature thermal grid with surplus heat utilization
  - Extension of DSTG project (where they developed a Modelica library for networks)
  - In this project, they will also develop the building models

### Small brain storm session
- The outcome of WP3:
  - An elaborate framework of what would ideally be included in the DESTEST
  - Multiple sets of real models + an elaborate description of these models
     - You are able to model exactly the same model in your modelling environment
     - You are able to get a model and test e.g. the performance of your substation against the average
   - Document evolvement of the DESTEST as well (easy if you want to start modelling in Modelica)
- Different energy carriers: district heating, district cooling, smart grids (electrical networks), gas networks,
- Control?
- Scale?
  - Different models for different scales (high-order model > low-order model > load profiles)
- Time horizon: do we need to simulate the whole year? (most of us are convinced that we do)
- Possible interactions within IBPSA Project 1
  - **WP 1.1 Library**
    - Substation modelling: help defining list of typical configurations and their implementation
    - Check new fluid model implementation (see paper Dirk Zimmer using inertial pressure and mass flow state)
    - Debugging of network model regarding solver tolerance
  - **WP 1.2 BOP-TEST**
    - DESTEST could be one of the reference cases for BOP-TEST
    - Interest in developing control methods for thermal networks
  - **WP 2.2 Urban modelling**
    - Interaction to translate GIS into Urban Energy Models
    - Define neighbourhood archetypes

## Breakout session 2-3

All participants join other sessions

### WP 1.1
Alessandro, Bram, Konstantin, Michael
- Discuss new fluid port implementation according to paper Dirk Zimmer
  - Able to break algebraic loops
  - Problem is that current implementation still not robust, and Dynasim not easy to convince to do something about it, while new implementation has shown applicability in aircraft modelling
  - Filip not sure if this is the way to go; problem is shifted from Newton solver to integrator, but not removed. Is it worth the time and the non-backwards-compatibility?
  - Try to add this to base-models of fluid resistance components
- Short discussion of problem regarding influence of tolerance on network modelling results
  - Need to isolate problem better
    - = Make unit test for pipe that can be run at different tolerances
- Short discussion on implementation of ASHRAE control templates

### WP 1.2
Felix, ...

### WP 2.2
Ina, Dirk, ...
 - RWTH Aachen will develop a similar tool to TEASER (compatible to TEASER) to translate BIM (IFC) to Modelica

## Breakout session 2-4
Brainstorm on possible outcomes and next steps: everyone pitches 1 idea that they would like to realize within the project
- Felix:
- Alessandro:
- Haris:
- Konstantin:
- Ina:
- Bram:
  - Extension of neighborhood aggregation paper to assess the influence of district heating network on aggregated heat load.
  - Can this influence also be represented by a simple model?
- Igor:
- Julie:
- Enora:

## Action points
- Send short summary (bullet points) of pitch to Dirk so he can condense it into a first version of the framework (pitches will be added in these minutes as well)
- Check commitments in breakout session 2-1
