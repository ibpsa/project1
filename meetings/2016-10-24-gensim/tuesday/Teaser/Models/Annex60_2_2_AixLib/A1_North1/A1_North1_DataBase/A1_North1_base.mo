within Annex60_2_2_AixLib.A1_North1.A1_North1_DataBase;
record A1_North1_base "A1_North1_base"
  extends AixLib.DataBase.Buildings.BuildingBaseRecord(
    numZones = 3,
    buildingID = 0,
    zoneSetup = {
		Annex60_2_2_AixLib.A1_North1.A1_North1_DataBase.A1_North1_LivingRoom(),
		Annex60_2_2_AixLib.A1_North1.A1_North1_DataBase.A1_North1_BedRoom(),
		Annex60_2_2_AixLib.A1_North1.A1_North1_DataBase.A1_North1_WCandsanitaryroomsinnonresidentialbuildings()
		},
    Vair = 8134.0 ,
    BuildingArea = 581.0
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
end A1_North1_base;


