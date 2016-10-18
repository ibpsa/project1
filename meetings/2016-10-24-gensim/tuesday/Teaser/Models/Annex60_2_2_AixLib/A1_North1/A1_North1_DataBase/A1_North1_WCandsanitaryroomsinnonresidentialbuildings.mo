within Annex60_2_2_AixLib.A1_North1.A1_North1_DataBase;
record A1_North1_WCandsanitaryroomsinnonresidentialbuildings "A1_North1_WCandsanitaryroomsinnonresidentialbuildings"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 4,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.9,
    zoneID = "WCandsanitaryroomsinnonresidentialbuildings",
    usage = "WC and sanitary rooms in non-residential buildings",
    RoomArea = 43.5,
    Vair = 609.0,
    alphaiwi = 0.0,
    alphaowi = 7.699999999999999,
    alphaowo = 25.0,
    g = 0.5,
    NrPeople = 0.0,
    NrPeopleMachines = 0.0,
    LightingPower = 11.1,
    h_heater = 13039.370204960387,
    gsunblind = {1.0, 0.0, 0.0, 0.0},
    Aw = {5.4, 0.0, 0.0, 0.0},
    withWindows = true,
    weightfactorswindow = {1.0, 0.0, 0.0, 0.0},
    weightfactorswall = {0.5614460024723372, 0.0, 0.0, 0.18529349107413376},
    weightfactorground = 0.25326050645352904,
    orientationswallshorizontal = {90.0, 90.0, 90.0, 0.0},
    Ai = 34.8,
    withInnerwalls = true,
    R1i = 0.0017479024556,
    C1i = 8868769.35396,
    RWin = 0.0853801169591,
    UWin = 1.692268542081155,
    alphaConvWinInner = 2.7,
    alphaConvWinOuter = 20.0,
    Ao = 44.44,
    withOuterwalls = true,
    R1o = 0.00252613258466,
    RRest = 0.053528301214,
    C1o = 6536815.0306,
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
    epsi = 0.9000000000000001,
    epsw = 0.16666666666666666,
    awin = 0.0,
    aowo = 0.7000000000000002,
    useConstantACHrate = false,
    baseACH = 0.2,
    maxUserACH = 1.0,
    maxOverheatingACH = {3.0, 2.0},
    maxSummerACH = {1.0, 283.15, 290.15},
    winterReduction = {0.2, 273.15, 283.15},
    withAHU = false,
    minAHU = 0.0,
    maxAHU = 8.0);



end A1_North1_WCandsanitaryroomsinnonresidentialbuildings;








