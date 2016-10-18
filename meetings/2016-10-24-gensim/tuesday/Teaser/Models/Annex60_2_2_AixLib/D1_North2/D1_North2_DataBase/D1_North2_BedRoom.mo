within Annex60_2_2_AixLib.D1_North2.D1_North2_DataBase;
record D1_North2_BedRoom "D1_North2_BedRoom"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 6,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.5,
    zoneID = "BedRoom",
    usage = "Bed room",
    RoomArea = 48.8,
    Vair = 273.28,
    alphaiwi = 0.0,
    alphaowi = 7.699999999999999,
    alphaowo = 24.999999999999996,
    g = 0.5,
    NrPeople = 5.0,
    NrPeopleMachines = 4.0,
    LightingPower = 4.5,
    h_heater = 7333.496873565688,
    gsunblind = {0.0, 0.0, 1.0, 1.0, 0.0, 1.0},
    Aw = {0.0, 0.0, 1.68, 4.32, 0.0, 2.7},
    withWindows = true,
    weightfactorswindow = {0.0, 0.0, 0.19310344827586204, 0.496551724137931, 0.0, 0.3103448275862069},
    weightfactorswall = {0.09059072952766434, 0.16858422551680557, 0.10923403908263296, 0.2848262564403956, 0.16858422551680557, 0.1781805239156959},
    weightfactorground = 0.0,
    orientationswallshorizontal = {90.0, 45.0, 90.0, 90.0, 45.0, 90.0},
    Ai = 71.314,
    withInnerwalls = true,
    R1i = 0.000965435205416,
    C1i = 9657979.00225,
    RWin = 0.0529945553539,
    UWin = 1.6922685420811552,
    alphaConvWinInner = 2.7000000000000006,
    alphaConvWinOuter = 20.0,
    Ao = 119.48,
    withOuterwalls = true,
    R1o = 0.00108805533846,
    RRest = 0.0209157035605,
    C1o = 18851084.7586,
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
    epsw = 0.31034482758620696,
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
    maxAHU = 0.0);



end D1_North2_BedRoom;








