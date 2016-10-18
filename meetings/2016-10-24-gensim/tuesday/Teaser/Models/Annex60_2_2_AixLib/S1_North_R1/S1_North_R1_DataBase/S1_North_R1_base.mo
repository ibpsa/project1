within Annex60_2_2_AixLib.S1_North_R1.S1_North_R1_DataBase;
record S1_North_R1_base "S1_North_R1_base"
  extends AixLib.DataBase.Buildings.BuildingBaseRecord(
    numZones = 4,
    buildingID = 0,
    zoneSetup = {
		Annex60_2_2_AixLib.S1_North_R1.S1_North_R1_DataBase.S1_North_R1_LivingRoom(),
		Annex60_2_2_AixLib.S1_North_R1.S1_North_R1_DataBase.S1_North_R1_TrafficArea(),
		Annex60_2_2_AixLib.S1_North_R1.S1_North_R1_DataBase.S1_North_R1_BedRoom(),
		Annex60_2_2_AixLib.S1_North_R1.S1_North_R1_DataBase.S1_North_R1_WCandsanitaryroomsinnonresidentialbuildings()
		},
    Vair = 749.2799999999999 ,
    BuildingArea = 133.8
	,
	heatingAHU = false,
	coolingAHU = false,
	dehumidificationAHU = false,
	humidificationAHU = false,
	BPF_DeHu = 0.2,
	HRS = false,
	efficiencyHRS_enabled = 0.8,
	efficiencyHRS_disabled = 0.2
    );
end S1_North_R1_base;


