within Annex60_2_2_AixLib.S2_West.S2_West_DataBase;
record S2_West_base "S2_West_base"
  extends AixLib.DataBase.Buildings.BuildingBaseRecord(
    numZones = 4,
    buildingID = 0,
    zoneSetup = {
		Annex60_2_2_AixLib.S2_West.S2_West_DataBase.S2_West_LivingRoom(),
		Annex60_2_2_AixLib.S2_West.S2_West_DataBase.S2_West_TrafficArea(),
		Annex60_2_2_AixLib.S2_West.S2_West_DataBase.S2_West_BedRoom(),
		Annex60_2_2_AixLib.S2_West.S2_West_DataBase.S2_West_WCandsanitaryroomsinnonresidentialbuildings()
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
end S2_West_base;


