within Annex60_2_2_AixLib.S2_West.S2_West_DataBase;
record S2_West_WCandsanitaryroomsinnonresidentialbuildings "S2_West_WCandsanitaryroomsinnonresidentialbuildings"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 5,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.9,
    zoneID = "WCandsanitaryroomsinnonresidentialbuildings",
    usage = "WC and sanitary rooms in non-residential buildings",
    RoomArea = 6.9,
    Vair = 38.64,
    alphaiwi = 0.0,
    alphaowi = 7.700000000000001,
    alphaowo = 24.999999999999996,
    g = 0.5,
    NrPeople = 0.0,
    NrPeopleMachines = 0.0,
    LightingPower = 11.1,
    h_heater = 2002.2526779160298,
    gsunblind = {0.0, 1.0, 0.0, 0.0, 0.0},
    Aw = {0.0, 1.0, 0.0, 0.0, 0.0},
    withWindows = true,
    weightfactorswindow = {0.0, 1.0, 0.0, 0.0, 0.0},
    weightfactorswall = {0.0, 0.45381351250874585, 0.2730932437456271, 0.0, 0.2730932437456271},
    weightfactorground = 0.0,
    orientationswallshorizontal = {90.0, 90.0, 45.0, 90.0, 45.0},
    Ai = 22.349999999999998,
    withInnerwalls = true,
    R1i = 0.00296513633385,
    C1i = 2885829.8326,
    RWin = 0.07,
    UWin = 5.003248862897986,
    alphaConvWinInner = 2.7,
    alphaConvWinOuter = 20.0,
    Ao = 17.044,
    withOuterwalls = true,
    R1o = 0.00344985164278,
    RRest = 0.0188985219515,
    C1o = 1880648.11559,
    ActivityTypePeople = 3,
    RatioConvectiveHeatPeople = 0.5,
    ActivityTypeMachines = 2,
    RatioConvectiveHeatMachines = 0.5,
    rhoair = 1.19,
    cair = 1007,
    temperatureground = 286.15,
    Imax = 100.0,
    splitfac = 0.07,
    epso = 0.9,
    epsi = 0.9,
    epsw = 0.9,
    awin = 0.0,
    aowo = 0.7,
    useConstantACHrate = false,
    baseACH = 0.2,
    maxUserACH = 1.0,
    maxOverheatingACH = {3.0, 2.0},
    maxSummerACH = {1.0, 283.15, 290.15},
    winterReduction = {0.2, 273.15, 283.15},
    withAHU = false,
    minAHU = 0.0,
    maxAHU = 8.0);



end S2_West_WCandsanitaryroomsinnonresidentialbuildings;








