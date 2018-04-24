################################################INTRODUCTION################################################
This text file describes the process of designing and dimensioning the pipe network for the DESTEST set-up.
The heating network is a radial network with two main streams, one going between the first two columns of
buildings and the other one going between the third and fourth column of buildings. The network has one heat
source that is located centrally below the last row of buildings.

################################################FILES################################################
There are four files available:

1)	DistrictHeatingStructure.png
	This file shows a general overview of the network with all nodes and all pipes connecting the nodes.
	The nodes SimpleDistrict_1 to SimpleDistrict_16 correspond to the buildings defined in 
	SimpleDistrict_energyKPI.csv and SimpleDistrict_geometryKPI.csv in terms of position and peak load.

2)	Node data.csv is a table file that specifies the position and peak load of all nodes in the network.

3)	Pipe data.csv is a table file that specifies the beginning node, ending node, length, inner diameter, 
	insulation thickness and peak load of each pipe segment. 

4)	Pipedimensioning.py is a python script that automatically dimensions the pipes and outputs the three other
	files: Node data.csv, Pipe data.csv and DistrictHeatingStructure.png.
	
	The dimensioning is done as follows: 
	The longest pipe segments (e.g. node 'i' to '1') are dimensioned to not exceed a specified pressure loss 
	per meter under the given parameters: peak loads, fixed temperature difference between supply and return 
	and pipe roughness. The remaining pipes are then dimensioned to not exceed the total pressure loss of the 
	longest pipes. All pipe diameters are rounded to the next biggest DIN diameter. A corresponding insulation
	thickness is then chosen.(Taken from: http://www.germanpipe.de/domains/germanpipe_de/data/free_docs/eGP-PRE_de.pdf)
	The calculations are made using the Dacy-Weisbach equation and the explicit fiction factor approximation 
	by Moody. The kinematic viscosity of water is assumed to be constant.

	To run the program, the whole script (Pipedimensioning).py needs to be executed ones. Then the function 
	main() needs to be executed. Afterwards, the three files, as named above, can be found in the same directory 
	as the Pipedimensioning.py is executed in.
	
	The program is written for Python 3.5 and is dependent on the following packages: pandas, numpy, matplotlib,
	math, scipy, networkx.


