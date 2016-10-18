within Annex60_2_2_AixLib.T1_North3.T1_North3_DataBase;
record T1_North3_base "T1_North3_base"
  extends AixLib.DataBase.Buildings.BuildingBaseRecord(
    numZones = 4,
    buildingID = 0,
    zoneSetup = {
		Annex60_2_2_AixLib.T1_North3.T1_North3_DataBase.T1_North3_LivingRoom(),
		Annex60_2_2_AixLib.T1_North3.T1_North3_DataBase.T1_North3_TrafficArea(),
		Annex60_2_2_AixLib.T1_North3.T1_North3_DataBase.T1_North3_BedRoom(),
		Annex60_2_2_AixLib.T1_North3.T1_North3_DataBase.T1_North3_WCandsanitaryroomsinnonresidentialbuildings()
		},
    Vair = 1105.3560000000002 ,
    BuildingArea = 131.59
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
end T1_North3_base;


