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

### E-mail sent by Ina on September 10
Dear WP3 colleagues,
Here, you finally find the follow-up e-mail from the IBPSA Project 1 Expert meeting in Rome. Thank you again for the enthusiasm you all brought to our discussions. A lot has been said, so a larger follow-up e-mail as well. 
1.	The meeting minutes of the break-out sessions can be found here (<https://github.com/ibpsa/project1/edit/master/meetings/2019-08-31-expert-meeting-rome/wp_3/minutes_breakout_sessions.md>).
    * Please, feel free to change/add anything. If you don’t have the rights to do it right away, don’t hesitate to send your comments to me. 
2.	I promised to send the details for the new participants. 
    * The presentation I gave in Rome is available here (<https://github.com/ibpsa/project1/blob/master/meetings/2019-08-31-expert-meeting-rome/wp_3/190901_WP3_howtogetstarted.pdf>). 
    * The key take-aways:
        * The description of the single-family dwelling will be finished by the end of this month. It would be nice if you could use this one to model the first single-family dwelling (either text of CityGML format). 
        * The description of the office building is under discussion again. Please, think about possible office descriptions that you have available and that you could present shortly at the next coordination meeting. However, we agreed on a simple layout office building, Dirk had shown. We should enrich this building with data, maybe with some standard data from TEASER?
3.	We think it would be nice to have a Skype call soon, to coordinate the next steps. I have set up a Doodle here (<https://doodle.com/poll/4xxfz8abvkv8vc3c>). Please, fill this in by September 16, 2019. Then, I’ll set up the meeting details and send them to you. 
a.	As we have more colleagues from the US joining, I think we should agree on having the meeting at a reasonable time for both sides. That’s why I only proposed 5pm-6pm. Please, let me know if you disagree or have other ideas.
4.	*Kind reminder*
    * Would those, who have presented something at the meeting, please send their slides to me (in pdf format)? I’ll upload them to the GitHub (you are also welcome to do it yourself by creating a pull request if you don’t have the rights to upload things directly).
5.	Smaller details  
    * Enora noted that the simulations are done with a 10 min timestep, but that the occupant profiles are provided at a 15 min timestep > I’ll resample the occupant profiles and upload them again on  GitHub (<https://github.com/ibpsa/project1/tree/master/meetings/2019-08-31-expert-meeting-rome/wp_3>).
    * I am currently working on the different insulation standards > will be ready for the next coordination meeting, we can discuss there 
    * A joint effort of Michael, Enora and me has resulted in this nice feature: a notebook.ai: https://notebooks.ai/MichaMans/project-1-plots-e59f9de8
        * This notebook allows you to download some of the simulated power profiles and temperatures of the others’ models and upload your own. Subsequently, you can compare your results and see if they are reasonable. You can fork this code from Michael’s 	account.
        * I’ll also add this link to the “follow-up” section of the expert meeting minutes.

