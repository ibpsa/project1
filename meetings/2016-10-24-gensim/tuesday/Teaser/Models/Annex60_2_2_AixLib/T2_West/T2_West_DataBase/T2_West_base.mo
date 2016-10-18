within Annex60_2_2_AixLib.T2_West.T2_West_DataBase;
record T2_West_base "T2_West_base"
  extends AixLib.DataBase.Buildings.BuildingBaseRecord(
    numZones = 4,
    buildingID = 0,
    zoneSetup = {
		Annex60_2_2_AixLib.T2_West.T2_West_DataBase.T2_West_LivingRoom(),
		Annex60_2_2_AixLib.T2_West.T2_West_DataBase.T2_West_TrafficArea(),
		Annex60_2_2_AixLib.T2_West.T2_West_DataBase.T2_West_BedRoom(),
		Annex60_2_2_AixLib.T2_West.T2_West_DataBase.T2_West_WCandsanitaryroomsinnonresidentialbuildings()
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
end T2_West_base;


