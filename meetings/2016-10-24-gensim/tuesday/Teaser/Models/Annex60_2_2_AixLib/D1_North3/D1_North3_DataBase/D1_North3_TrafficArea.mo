within Annex60_2_2_AixLib.D1_North3.D1_North3_DataBase;
record D1_North3_TrafficArea "D1_North3_TrafficArea"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 6,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.9,
    zoneID = "TrafficArea",
    usage = "Traffic area",
    RoomArea = 31.3,
    Vair = 175.28,
    alphaiwi = 0.0,
    alphaowi = 7.700000000000001,
    alphaowo = 24.999999999999996,
    g = 0.5,
    NrPeople = 0.0,
    NrPeopleMachines = 0.0,
    LightingPower = 7.0,
    h_heater = 4543.230308465585,
    gsunblind = {0.0, 0.0, 1.0, 0.0, 0.0, 0.0},
    Aw = {0.0, 0.0, 1.24, 0.0, 0.0, 0.0},
    withWindows = true,
    weightfactorswindow = {0.0, 0.0, 1.0, 0.0, 0.0, 0.0},
    weightfactorswall = {0.5248854527380454, 0.07503232654351707, 0.0, 0.0, 0.07503232654351707, 0.10499867300865914},
    weightfactorground = 0.22005122116626136,
    orientationswallshorizontal = {90.0, 45.0, 90.0, 90.0, 45.0, 90.0},
    Ai = 31.442,
    withInnerwalls = true,
    R1i = 0.00223285755634,
    C1i = 5462388.948,
    RWin = 0.37181663837,
    UWin = 1.692268542081155,
    alphaConvWinInner = 2.6999999999999997,
    alphaConvWinOuter = 19.999999999999996,
    Ao = 77.996,
    withOuterwalls = true,
    R1o = 0.00133822636607,
    RRest = 0.030209971439,
    C1o = 11973467.5802,
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
    epsw = 0.7258064516129032,
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
    maxAHU = 2.0);



end D1_North3_TrafficArea;








