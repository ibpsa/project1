# IBPSA Project 1 Rome Expert Meeting

Rome, August 31-September 1, 2019

***Present***: Dirk Saelens, Ina De Jaeger (notes), Felix Bünning, Enora Garreau, Alessandro Maccarini, Michael Mans, Peter Remmen, Katy Hinkelman, Gaëlle Faure,  Lien De Backer, Konstantin Filonenko, Hicham Johra, Nicholas Long, Haris Shamsi

***Excused***: Annelies Vandermeulen, Arash Erfani

## Breakout session 1-1

### Joint session with 1.1
Presentation Ina
   - It takes 6 min per building to simulate
   -  Which solver do you use? Dassl. Have you tried different solvers? This could influence a lot! Ina looked into it. Indeed, it influences the simulation time extensively, but I have only compared Dassl, Lsodar and Cvode. There, Dassl came out best.
   - Tried a supercomputer? [...]
   - Look into the paper of Filip. This paper introduces the basics in a clear way.
   - Don't use buildingspy, use the dymola interface. It is way faster. However, I did not get it working for multiple cores. Peter can send a script.
   -   XXX + Michael W: maybe try to condense your occupant profiles? So you don't have that many events? For instance, take the night together? Then it does not change and you don't have an event.

Presentation Annelies/Filip
   -   Explicit solvers (e.g. Euler) are way better than implicit solvers. For Euler, the simulation time scales linear with the number of equations. For the others, it could go quadratically. Scaling computation time with district size should be linear > make sure you can use Euler.
   -   Filip advises to only go up to 50 - 100 thermal zones in 1 simulation in IDEAS.
   -   Isn't it an idea to simplify the "structure"? Don't use the white-box model, but rather the RC-models.

## Breakout session 1-2

### Progress of the buildings group
***--> someone else took notes? Please, include or send them to Ina***

 - How to report results?
	 - Nicholas (NREL): How to report the errors? Boxplots of temperatures? + Can't you calculate the RMSEs? 
	 - Then, what is the reference? Maybe follow approach from BESTEST, where they use the 93rd confidence interval of the sample mean of a t-distribution as well as the standard deviation (?)
 -   16 occupants:
		- Currently contributions from IDEAS (Ina), Buildings (Alessandro) and DIMOSIM (Enora)
		- Additional contributions from AixLib (Michael & Peter) & BuildingsSystems (Harris)
 -   Renovations:
		-   Infiltration should also be changed: from 8 to 4 to (1+ventilation)
		-   We can define a ventilation system (= air flow + efficiency), but we can also agree to all just use the translated ACH and treat it in the same way as the infiltration rate
		-   Enora modelled in the SFD 0.4 for infiltration AND 0.4 for ventilation -> probably explains why it cools down so quickly -> re-simulate !
		-   U-value for the windows: include the glazing properties
			- Note in IDEAS: the general g-value does not work, you need to have the spectrum !
			-   Add the glazing to the teaserXML-file? How to do it?
 - Commitments?
	 - 16 occupants: Michael & Peter, Haris
	 - Renovation: to be determined
### Progress of the network group
***--> someone else took notes? Please, include or send them to Ina***

## Breakout session 2-1
### Overview of the new participants
Everyone prepares a short presentation on their work, on how they can contribute to the DESTEST development and how they can benefit from the DESTEST developtment
-   Hasan Sayegh, INES, France
-   Nicholas Long, NREL, US
-   Hisham Johra, Aalborg University, Denmark
-   Lien De Backer, UGent, Belgium
-   Katy Hinkelman, Boulder, Colorado, US
-   Walter Mazuroski, Brasil
-   Gaëlle Faure, Victoria university, Canada

## Breakout session 2-2
### Applications - Free presentations on applications
-   Multi-scale mondeling with modelica from heat exchanger to smart city - by Wangda & Katy
	-   Case 1: finned-tube heat exchanger model
	-   Case 2: comprehensive pliant permissive priority optimisation
	-   Case 3: multi-infrastructure modeling of smart and connected communities
-   Four case studies - by Konstantin
	-   Case 1: Comparison of two simulation tools for district heating: commercial tool Termis and Modelica (self-developed)
	-   Case 2: DH network
	-  Case 3: Termonet
	- Case 4: Emulator model for task 1.2 (bop test)

### Applications - Discussion on the template for application case studies
-   Add if it is open source available or not
-   More case studies?
	-   How long can we go back in time? If they are still relevant, it might be a good idea to include them

### DESTEST - Thinking about a dream list for future cases
-   Ina:  an electricity grid	
	- Katy could do it in the future
-   Michael: 16 buildings are handable, so keep these, but increase in complexity in the demands (coupled or decoupled)
-   Nicholas: do the full simulation with the coupling on a high performance simulation, this is an extreme case, it could work, but it is not for the average user
-   Alessandro: cooling will be tackled in the office building
-   We take a look at the pitches of Aachen meeting. What is still missing? 
	-   Renewables?
	-   Storage?
-   KPIs  -> we should think about it,
	
## Breakout session 2-3
### Joint session with 1.1
-   How to deal with the coupling between buildings and systems? Are there different methods to couple? A loose coupling?
-   You want to decrease maximum model size? Or you want to increase speed?
-   If you want to decouple, you need an expert. If someone can contribute some time, then they can get guidance from 1.1. They can set up a path.
-   Check impact of building model on the network model > start with detailed IDEAS model, then replace by RC model, then replace by a presimulated profiles
-   Report the kpis according to the performance: simulation time vs model time, if there is a peak, the solver has a problem, it is numerical problem, not the whole model that is slow.

### Next steps
-   Next steps + commitments for buildings
-   Next steps + commitments for network
* ***> someone else took notes? Please, include or send them to Ina***

## Breakout session 2-4
### Discussion on the proposal for an office building
* ***> someone else took notes? Please, include or send them to Ina***

### Introduction for newbies
 - Where to find what? -> see this presentation

### Joint session with WP2
-   CityGML format (visual way to go through the details)
-   Github repository with results + script for automating the plots
-   Standardised data format OK
- Joint platform with WP2? They don't want it to be open for everyone. We did not come to a clear solution
* ***> someone else took notes? Please, include or send them to Ina***

## Action points
 * Setup Doodle for next Coordination meeting (within 6 weeks) - Ina
 * Prepare slides and welcome e-mail for new participants - Ina
	 * Make sure new participants are subscribed to the Google groups - Ina
 * Model 16 occupants - Michael & Peter; Haris
	 * During the next Coordination meeting, we'll discuss about a deadline for these simulations
 * Model renovations - Ina 
	 * Ina will present the results at next coordination meeting, then we can discuss whether it is a good proposal
 * Finalize DESTEST case report 1 - Ina & Michael
	* By September 20, 2019
	* Then, the new participants can start modelling based on this text report
 * Model first dwelling - Lien (Trnsys), Nicholas (Energy+), Gaëlle (Energy+), ...
	 * During the next Coordination meeting, we'll discuss about a deadline for these simulations
 * What did we agree regarding the office model? 
 
 
## Follow-up
