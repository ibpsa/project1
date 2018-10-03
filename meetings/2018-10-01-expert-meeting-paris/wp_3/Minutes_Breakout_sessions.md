# IBPSA Project 1 Paris Expert Meeting

Paris, October 1-2, 2018

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [IBPSA Project 1 Paris Expert Meeting](#ibpsa-project-1-paris-expert-meeting)
	- [Breakout session 1-1](#breakout-session-1-1)
		- [Presentation Krzysztof](#presentation-krzysztof)
		- [Presentation Ina](#presentation-ina)
	- [Breakout session 1-2](#breakout-session-1-2)
		- [Presentation Bram](#presentation-bram)
		- [Discussion on results building modelling group](#discussion-on-results-building-modelling-group)
	- [Breakout session 2-1](#breakout-session-2-1)
		- [Discussion building models](#discussion-building-models)
		- [Discussion thermal network model](#discussion-thermal-network-model)
		- [Discussion on possible interactions and further steps](#discussion-on-possible-interactions-and-further-steps)
	- [Breakout session 2-2](#breakout-session-2-2)
		- [Presentation Enora](#presentation-enora)
		- [Presentation Julie](#presentation-julie)
		- [Presentation Igor](#presentation-igor)
	- [Breakout session 2-3](#breakout-session-2-3)
		- [WP 1.1](#wp-11)
		- [WP 1.2](#wp-12)
		- [WP 2.2](#wp-22)
	- [Breakout session 2-4](#breakout-session-2-4)

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
- Brain storm session > framework of a DESTEST (+ reality check! > what are we going to work on?)

## Breakout session 2-1

### Discussion building models

- The following people agreed to model the single building that was part of our first dummy district. An elaborate description can be found at: https://github.com/ibpsa/project1/tree/master/wp_3_2_destest (in this repository, you find a README.txt-file; the climate file in TMY-format as well as a MOS-file to convert the weather format to EPW-format, you also find the IDEAS Modelica models as well as the results in csv format from these models). If you have any questions, please don’t hesitate to send Ina an e-mail (ina.dejaeger@kuleuven.be). 
  - Ina: IDEAS - finished
  - Alessandro: Buildings (higher-order) - finished
  - Michael: AixLib - under construction
  - Enora: Dimosim
  - Julie: Buildings (reduced-order)
  - Haris: BuildingsSystems
  - Send results to Ina by 31st of October: 
    - Indoor temperature profile (day zone + night zone) [K]
    - Total heat demand for space heating [W]
    - 600 s timestep


### Discussion thermal network model

- Presentation by Felix
  - Depening on the tolerance of the solver: different results ?! (will look into it!)
  - Bad experience with the integrator block in Modelica
  - Bram co-developed the plug flow
  - Bram and Annelies developed a substation model
- The following people agreed to model the network (we want to perform both an inter-model comparison and an intra-model comparison). If you have any questions, please don’t hesitate to contact Felix (felix.buenning@empa.ch). 
  - Felix: ??? - finished
  - Bram: ??? - finished (?)
  - Enora: Dimosim
  - Julie: Modelica IBPSA library
  - Alessandro: Buildings library
  - Konstantin: get junction model working
  - Send results to Felix by 15th of November: @Felix, could you please specify the exact variables and the time step you would like to have in order to make an in-depth comparison? 

### Discussion on possible interactions and further steps

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
## Breakout session 2-3

All participants join other sessions

### WP 1.1
Alessandro, Bram, Konstantin, Michael

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
- Igor: 
- Julie: 
- Enora: 

## Action points
- Send short summary (bullet points) of pitch to Dirk so he can condense it into a first version of the framework (pitches will be added in these minutes as well)
- Check commitments in breakout session 2-1
