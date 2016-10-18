within Annex60_2_2_AixLib.D1_North3.D1_North3_DataBase;
record D1_North3_WCandsanitaryroomsinnonresidentialbuildings "D1_North3_WCandsanitaryroomsinnonresidentialbuildings"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 6,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.9,
    zoneID = "WCandsanitaryroomsinnonresidentialbuildings",
    usage = "WC and sanitary rooms in non-residential buildings",
    RoomArea = 6.0,
    Vair = 33.599999999999994,
    alphaiwi = 0.0,
    alphaowi = 7.699999999999999,
    alphaowo = 24.99999999999999,
    g = 0.5,
    NrPeople = 0.0,
    NrPeopleMachines = 0.0,
    LightingPower = 11.1,
    h_heater = 1006.4726072525486,
    gsunblind = {0.0, 0.0, 1.0, 0.0, 0.0, 0.0},
    Aw = {0.0, 0.0, 0.96, 0.0, 0.0, 0.0},
    withWindows = true,
    weightfactorswindow = {0.0, 0.0, 1.0, 0.0, 0.0, 0.0},
    weightfactorswall = {0.41419154482930787, 0.10217271933024287, 0.3814630165102063, 0.0, 0.10217271933024287, 0.0},
    weightfactorground = 0.0,
    orientationswallshorizontal = {90.0, 45.0, 90.0, 90.0, 45.0, 90.0},
    Ai = 14.97,
    withInnerwalls = true,
    R1i = 0.00419451346571,
    C1i = 1768151.92898,
    RWin = 0.480263157895,
    UWin = 1.692268542081155,
    alphaConvWinInner = 2.7,
    alphaConvWinOuter = 19.999999999999996,
    Ao = 23.212000000000003,
    withOuterwalls = true,
    R1o = 0.00458746755975,
    RRest = 0.103639013559,
    C1o = 3936804.49873,
    ActivityTypePeople = 3,
    RatioConvectiveHeatPeople = 0.5,
    ActivityTypeMachines = 2,
    RatioConvectiveHeatMachines = 0.5,
    rhoair = 1.19,
    cair = 1007,
    temperatureground = 286.15,
    Imax = 100.0,
    splitfac = 0.07,
    epso = 0.9000000000000001,
    epsi = 0.9000000000000001,
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



end D1_North3_WCandsanitaryroomsinnonresidentialbuildings;








