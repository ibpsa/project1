This file walks you through the workflow that was followed to setup the first version of the dummy district. If you are most interested in the results, it is advised to scroll towards the end of this message. In the beginning, the setup of the building models is explained as completely as possible.

HOW TO GET THE BUILDING MODELS?
First, a SketchUp-model (not attached) was drawn to lay out our dummy district. A picture of this dummy district is attached (“130321_simple_district_16.png”). 
Next, a CityGML-file ("SimpleDistrict_16.gml") was created based on this SketchUp-model using FME (commercial software from Safe Software). This CityGML file only contains the geometry and a virtual construction year. 
This CityGML-file is then imported by TEASER and used to export IDEAS building models.
All buildings are identical and are assumed to have 1980 as construction year. Based on this construction year, all energy-performance related data is allocated (this data was taken from the TABULA-project for Belgium (available: http://episcope.eu/building-typology/country/be/)). The exact assumptions (layers and their materials) for all building elements can be easily viewed in the TEASERxml-file, which is exported automatically from TEASER ("SimpleDistrict.teaserXML"). To do so, the XML notepad software is recommended (available: https://www.microsoft.com/en-us/download/details.aspx?id=7973), but you can also use another xml-viewer or even a regular notepad.  

DESCRIPTION OF THE USED BUILDING MODEL
Two-zone building models were used for the simulations, with a day zone (ground floor) and a night zone (first floor), as you will see in the TEASERxml-file. Some remarks when reading the TEASERxml-file: 
1. The windows are not described correctly, a better description can be found in “1980_windows_description.txt”.  
2. What is described as ceiling and floor in the TEASERxml-file, is actually stuck together in the IDEAS building models (the internal ceiling/floor is modelled in IDEAS and thus the heat flow between day zone and night zone is accounted for). 
3. The air cavities are not described correctly, a better description can be found in the IDEAS building models themselves.
4. The air infiltration rate is set to 0.4 air changes per hour
5. Please, ignore the use conditions within the TEASERxml-file (as they have been overwritten by the following).
The used occupant is a standard occupant, following ISO13790. How this occupant looks: 
final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
    "Specific power for dayzone {day, evening, night}";
  final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
    "Specific power for nightzone {day, evening, night}";
  final parameter Real[3] TDay(unit="degC") = {16,21,18}
    "Temperature set-points for dayzone {day, evening, night}";
  final parameter Real[3] TNight(unit="degC") = {16,18,20}
    "Temperature set-points for nightzone {day, evening, night}";
		With the first value daily between 7am and 5 pm, the second value between 5 pm and 11 pm and the third value during night. 
The used heating system is an ideal radiatior heating system. Caution: this model does not yet take domestic hot water into account. How this ideal heating system is implemented in Modelica: 
   for i in 1:nZones loop
     if noEvent((TSet[i] - TSensor[i]) > 0) then
       QHeatZone[i] = IDEAS.Utilities.Math.Functions.smoothMin(x1=C[i]*(TSet[i] - TSensor[i])/t, x2=QNom[i],deltaX=1);
     else
       QHeatZone[i] = 0;
     end if;
     heatPortRad[i].Q_flow = -fractionRad[i]*QHeatZone[i];
     heatPortCon[i].Q_flow = -(1 - fractionRad[i])*QHeatZone[i];
   end for;
  QHeaSys = sum(QHeatZone);
In the folder ‘SimpleDistrict’, you find the resulting IDEAS models that were created using TEASER and simulated to obtain the energy demand profiles. If you like to use these building models, you should download the IDEAS library and open it in Dymola (available: https://github.com/open-ideas/IDEAS).

DATA FORMAT OF THE SIMULATION RESULTS
The simulations results can be found in the Results-folder. The SimpleDistrict_district.csv-file gives the demand profiles (only for space heating! Currently, no domestic hot water is considered!) for all buildings (1 column per building, identical in this case, but in the future not!) at a 10-minute interval. The SimpleDistrict_energyKPI.csv gives an overview of the peak power and yearly energy demand per building. The SimpleDistrict_geometryKPI.csv gives an overview of the geometrical characteristics of the buildings, as well as their latitude, longitude and altitude. 
