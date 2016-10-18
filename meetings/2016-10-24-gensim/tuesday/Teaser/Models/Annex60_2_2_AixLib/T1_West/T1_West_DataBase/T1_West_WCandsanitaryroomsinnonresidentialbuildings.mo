within Annex60_2_2_AixLib.T1_West.T1_West_DataBase;
record T1_West_WCandsanitaryroomsinnonresidentialbuildings "T1_West_WCandsanitaryroomsinnonresidentialbuildings"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 5,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.9,
    zoneID = "WCandsanitaryroomsinnonresidentialbuildings",
    usage = "WC and sanitary rooms in non-residential buildings",
    RoomArea = 6.3,
    Vair = 52.919999999999995,
    alphaiwi = 0.0,
    alphaowi = 7.699999999999999,
    alphaowo = 24.999999999999996,
    g = 0.5,
    NrPeople = 0.0,
    NrPeopleMachines = 0.0,
    LightingPower = 11.1,
    h_heater = 1177.5366854677752,
    gsunblind = {0.0, 0.0, 0.0, 1.0, 0.0},
    Aw = {0.0, 0.0, 0.0, 0.96, 0.0},
    withWindows = true,
    weightfactorswindow = {0.0, 0.0, 0.0, 1.0, 0.0},
    weightfactorswall = {0.0, 0.0, 0.0, 1.0, 0.0},
    weightfactorground = 0.0,
    orientationswallshorizontal = {90.0, 90.0, 45.0, 90.0, 45.0},
    Ai = 21.398999999999997,
    withInnerwalls = true,
    R1i = 0.00325350273226,
    C1i = 3003819.3732,
    RWin = 0.480263157895,
    UWin = 1.692268542081155,
    alphaConvWinInner = 2.7,
    alphaConvWinOuter = 19.999999999999996,
    Ao = 5.004,
    withOuterwalls = true,
    R1o = 0.015405303407,
    RRest = 0.450696316406,
    C1o = 954463.935076,
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
    epsw = 0.9375000000000001,
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



end T1_West_WCandsanitaryroomsinnonresidentialbuildings;








