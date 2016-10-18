within Annex60_2_2_AixLib.S2_East1.S2_East1_DataBase;
record S2_East1_base "S2_East1_base"
  extends AixLib.DataBase.Buildings.BuildingBaseRecord(
    numZones = 4,
    buildingID = 0,
    zoneSetup = {
		Annex60_2_2_AixLib.S2_East1.S2_East1_DataBase.S2_East1_LivingRoom(),
		Annex60_2_2_AixLib.S2_East1.S2_East1_DataBase.S2_East1_TrafficArea(),
		Annex60_2_2_AixLib.S2_East1.S2_East1_DataBase.S2_East1_BedRoom(),
		Annex60_2_2_AixLib.S2_East1.S2_East1_DataBase.S2_East1_WCandsanitaryroomsinnonresidentialbuildings()
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
end S2_East1_base;


