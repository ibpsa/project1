# IBPSA Project 1 Aachen Expert Meeting

Aachen, April 3-4, 2019

***Present***: Dirk Saelens, Ina De Jaeger (notes), Konstantin Filonenko, Annelies Vandermeulen, Felix Bünning, Rémi Pattureau, Enora Garreau, Alessandro Maccarini, Michael Mans, Igor Sartori (first day), Oystein Ronneseth (first day), Peter Remmen (second day)

***Excused***: Bram Van der Heijde, Haris Shamsi

## Breakout session 1-1

### Progress of the network group
* Results
    * Models
        * Still some differences between DIMOSIM and the other models. Probably the insulation is still a bit different. DIMOSIM has also a different implementation of by-pass. 
    * Substantial differences between the different solvers
        * Issue is not related to Dymola and Modelica
        * Issue where a lot of people are running into. The modeller don't have an in-depth knowledge about the solvers.
        * Network group needs to specify the maximal tolerance. That's then maybe for the Dymola users (although e.g. Dassl is not a Dymola-specific solver). 
* Difficulties
    * Model behaviour strongly dependent on the solver
    * Also on the control strategy
* Need for very precise case description !
    * Open discussion: what format to use? 
        * Felix thought about a text definition, whereas Ina thought about a standardized format (e.g. CityGML), which you can read in automatically. 
        * Dirk: can the network also be described? 
            * Yes, you have CityGML EnergyADE and CityGML NetworkADE
        * Igor: why can't we use the BESTEST Buildings? 
            * Focuses on the whole building: free floating behaviour, power, … > focuses on the building physics (not the HVAC, not the thermal bridges). They are typically one-zone. They also don't have offices and so on. 
        * Dirk: what are the KPIs? 
            * Do you only look to the thermal losses as a KPI? In the beginning, they also looked to the heat injection of the network. But, this KPI is not so dependent on the pipe model, it mainly depends on the heat demand of the buildings. 
            * So, KPIs: dynamic approach enables the temperature waves. KPIs should include:heat injection; thermal losses; temperature at the different substations; currently: mass flow rate is imposed at substations.
            * Dirk: it is important to define some important KPIs. 
* Future work - next steps
    * Proper documentation !
    * Dirk: losses to the ground included? 
        * Currently, it is a fixed temperature. We could model:
            * Some capacity around the ground
            * Some varying temperature
    * Integration of other building types
    * Change in network layout
    * Integration of renewables
    * Think about: what we want to accomplish? 
        * Dirk: think about the usability, within the 4th generation district heating networks? 
        * We need to rethink constantly, is what we are doing relevant? 
* Discussion
    * How do you quantify where the discrepancies come from? 
        * Plug flow vs dynamic
            * The difference is not a bug, it is a feature, the models are just different!
        * DIMOSIM vs Modelica
            * See above
    * How would these difference translate to the temperatures in the grid? 
* Introduction of Remi Pattureau
    * PhD on the most optimal district heating system for different districts
    * 5th generation DH, what does this mean again? "you need booster heat pumps and in 4th generation you don't"

## Breakout session 1-2

### Progress of the buildings group
* ***> someone else took notes? Please, include or send them to Ina***
* Definition of next common exercise: 
    * Based on template!
    * Don't limit ideas because they don't fit in the template, but do get a standardised format, in which we can clearly indicate: I want to do this or that or that. 
* Suggestions of Igor:
    * Igor suggested to use a "load profile generator" (under development at SINTEF/Norway) based on real measurements from buildings served by district heating; it contains several categories of non-residential buildings too. This would be a completely "black box" model and cannot help very much for investigating the building side, but it could be a useful tool for quickly generating a variety of loads for the network side. 
    * In addition, one could also think of using grey-box models (reduced order models) in two variations. One is to estimate the parameters from predefined archetypes, e.g. from TABULA, as some modelica libraries already do (I would call this a "light-grey" model). The other way is to calibrate parameters from real measurements (and I would call this a "dark-grey" model)... which of course implies we should have access to a common database with enough (hourly) measurements for several building types (homes, offices, etc.). So the first step should be to create such a database by pulling together measurements from the different institutes. 
    * Therefore, the building side could be simulated at all levels of detail: white-box models (detailed), grey-box models ("light-grey" archetype-calibrated & "dark grey" measurements-calibrated) and black-box models. The different levels could serve different purposes:
        * white & "light grey" box models are useful to study building design/retrofit options
        * "dark grey" and black box models are useful to study larger variability in the demand side, without having to model user behaviour
        * grey box models (both light and dark) can be used in combination with MCP (Task 1.2) in real-time controls


## Breakout session 2-1
### Joint session with 1.1
* Joint 1.1 and 3: DHC substation and central plant models
    * Development of simplified model for central plant in district heating models (WP 1.1)
    * Models for substations (WP 1.1)
    * Main topic is on how to couple the buildings with the network (the substation model)
        * Substation can be a heat exchanger or a booster heat pump, which connects the network to the building load. 
    
### WP 3.2 Template for case studies (by Alessandro)   
* Development of template for the collection of application case studies
    * We discuss the template for the case studies, give some feedback
    * Alessandro will update the template and present again at the closing session, in order to get feedback of the whole group
    * Who commits to fill out the template?
    	* Ina
    	* Konstantin (3x)
    	* Annelies
    	* Michael M
    	* Felix
    	* Christoph Nytsch-Geusen
    	* Igor
    	* Enora (to be decided if other tools can be included)
    
### Free presentations    
* Automated model generation and simplification for district heating and cooling grids - Michael Mans
    * Current status for automation of modelling district heating
    * Supernice! You can draw your network on a map, then it is automatically exported to uesgraph, then to modelica models to simulate thevdistrict heating and cooling network
    * It will be open-source (finish up + write paper)
    * You could implement something similar for electrical grids. 

## Breakout session 2-2
### Free presentations
* 3 case studies using Modelica - Konstantin
    * 3 projects !
    * District level:
        * Case 1: how will the district heating network be influenced by new technologies? For the city Vejl Nord. 
    * Building level:
        * Case 2: district heating of 3 dwellings > can we use uninsulated pipes? It is not a good idea, but it could work. 
    * Component level:
        * Ventilation in an office building > optimal control options !
    * 3 cases for the application !
* Discussion:
   * Peter: advantages of Modelica is that we have all the temperatures, we have the temperature waves. It would be nice if we could compare within the DESTEST between the different software packages (Thermis?), but they have static calculations. 
* Update on Modesto	- Annelies Vandermeulen
    * Current status of Modesto
    * Modelling efforts in Modelica to simulate a district heating network for Genk 
        * You clearly see the benefits / network flexibility > preliminary analyses, will be elaborated

### Pitches of participants for future work
* Definition of Next common exercise: pitches 
    * Konstantin: 
    * Ina: contribute more single-family dwellings (bigger, smaller, newer, older, different occupant behaviour, ...)
    * Felix: combined heating and cooling, first setup template, then fill in template for current case, then propose in the template what could be changed as a second common exercise!
    * Annelies:
        * Coupling of building and network should be in the substation models > she commits
				* Wish list: provide our cases as templates (meshed network, networks with mass flow reversals)
            * Typically: they don't want mass flow reversals in networks, but they do have it!
            * Heating and cooling = bidirectional by definition
            * Mass flow reversals > happen very often in meshed networks
    * Remi: 
        * Storage in networks? 
        * Different heat sources in networks? Including renewables?
        * Also, buildings! More diversity?
    * Enora:
        * More lay-outs of districts? Rural or urban? 
        * Electric networks as well? 
    * Alessandro:
        * Stick with 3 types (by that we mean: 1 geometry and 1 number of thermal zones, but 1 model can have different occupants and different insulation)
    * Michael:
        * Go on in documentation and reporting (make it available!!)
        * Diversity of building stock
        * Implement detailed occupant models in district systems?
        * Different lay-outs (meshed networks)
        * Define new KPIs in the network simulation
    * Dirk:
        * Scalability: go up to 50 - 100 -1000 buildings
        * Summary of ideas in BS2019 paper
	
	
## Breakout session 2-3
### Joint session with 1.1, 1.2
* DESTEST parallel session with 1.1 (Numerics with Felix, Michael Mans, 10 minutes)
    * Felix & Michael Mans: opportunitiy to discuss solver issues
* Optimal control (explore collaboration with 1.2)

### Set-up work plan for network group and building group
* Spontaneous gathering: discuss and decide on next steps and commitments
* See pictures [here](https://github.com/ibpsa/project1/blob/master/meetings/2019-04-03-expert-meeting-aachen/wp_3/190404_workplan_network.jpg) for network and [here](https://github.com/ibpsa/project1/blob/master/meetings/2019-04-03-expert-meeting-aachen/wp_3/190404_workplan_buildings.jpg) for building 


## Breakout session 2-4
* Discuss work plan of previous session with the whole group + make commitments
* Extend BSRome paper to journal paper
* ***> someone else took notes? Please, include or send them to Ina***

## Action points
* Setup Doodle for next Coordination meeting (within 6 weeks) - Ina
* See pictures of work plan for both network and building

## Follow-up
* Results were included in a Google Spreadsheet, which can be found [here](https://docs.google.com/spreadsheets/d/1AnvL1CzttjYHrJ7qINL3M3IJgnnVvDy2eloYHjl8OgY/edit#gid=0).
* Enora made the plots in this document, a few remarks from her side: 
    * At the beginning you (Ina) told us to use a 15min step simulation, but then we change to a 10min simulation. It's better if everyone has a 10min step, I don't know how to do with several steps in the spreadsheet, so for now 2 simulators don't match with the others
    * If someone wants to see a particular time during the year: click on edit charts above the plot, go to customize and then horizontal axis. There you can choose whatever time you want to see on the chart
    * To make things easier for the plots and the variation of the time schedule chosen for the charts, I had a column with the equivalent date during the year, it's just here for indication, don't use it on the plots, it's too heavy and too complicated for changing the visualisation window
    * If another simulator must be added, don't forget to add in the line 6 (hidden in the sheet) the name of the simulator, the automatic legend take the names on this line
