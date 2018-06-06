This folder contains scripts to convert data files to the correct 
format.

Included scripts are:
* csvtomodelica.py
	Contains cvs_to_modelica(), this method converts csv 
	files to txt files that are in the correct format to 
	be read by Modelica. The script also contains code to 
	convert the Buildings' heat profiles (resulting from 
	simulations) to txt files, and places them in the Data 
	Folder of the wp_3_2_destest/Modelica folder.
	To run this code, simply run csvtomodelica.py 
