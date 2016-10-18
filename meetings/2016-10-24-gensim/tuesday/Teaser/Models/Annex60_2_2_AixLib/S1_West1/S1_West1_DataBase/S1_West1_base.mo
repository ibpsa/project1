within Annex60_2_2_AixLib.S1_West1.S1_West1_DataBase;
record S1_West1_base "S1_West1_base"
  extends AixLib.DataBase.Buildings.BuildingBaseRecord(
    numZones = 4,
    buildingID = 0,
    zoneSetup = {
		Annex60_2_2_AixLib.S1_West1.S1_West1_DataBase.S1_West1_LivingRoom(),
		Annex60_2_2_AixLib.S1_West1.S1_West1_DataBase.S1_West1_TrafficArea(),
		Annex60_2_2_AixLib.S1_West1.S1_West1_DataBase.S1_West1_BedRoom(),
		Annex60_2_2_AixLib.S1_West1.S1_West1_DataBase.S1_West1_WCandsanitaryroomsinnonresidentialbuildings()
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
end S1_West1_base;


