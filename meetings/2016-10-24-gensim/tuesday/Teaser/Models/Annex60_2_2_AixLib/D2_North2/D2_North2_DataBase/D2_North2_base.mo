within Annex60_2_2_AixLib.D2_North2.D2_North2_DataBase;
record D2_North2_base "D2_North2_base"
  extends AixLib.DataBase.Buildings.BuildingBaseRecord(
    numZones = 4,
    buildingID = 0,
    zoneSetup = {
		Annex60_2_2_AixLib.D2_North2.D2_North2_DataBase.D2_North2_LivingRoom(),
		Annex60_2_2_AixLib.D2_North2.D2_North2_DataBase.D2_North2_TrafficArea(),
		Annex60_2_2_AixLib.D2_North2.D2_North2_DataBase.D2_North2_BedRoom(),
		Annex60_2_2_AixLib.D2_North2.D2_North2_DataBase.D2_North2_WCandsanitaryroomsinnonresidentialbuildings()
		},
    Vair = 784.0 ,
    BuildingArea = 140.0
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
end D2_North2_base;


