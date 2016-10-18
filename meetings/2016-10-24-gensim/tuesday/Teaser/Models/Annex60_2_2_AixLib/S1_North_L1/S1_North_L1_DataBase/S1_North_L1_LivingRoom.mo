within Annex60_2_2_AixLib.S1_North_L1.S1_North_L1_DataBase;
record S1_North_L1_LivingRoom "S1_North_L1_LivingRoom"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 5,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.5,
    zoneID = "LivingRoom",
    usage = "Living",
    RoomArea = 58.3,
    Vair = 326.47999999999996,
    alphaiwi = 0.0,
    alphaowi = 7.6999999999999975,
    alphaowo = 24.999999999999996,
    g = 0.5,
    NrPeople = 1.5,
    NrPeopleMachines = 2.0,
    LightingPower = 7.0,
    h_heater = 8901.555254332528,
    gsunblind = {1.0, 0.0, 1.0, 0.0, 1.0},
    Aw = {8.71, 0.0, 2.22, 0.0, 6.6},
    withWindows = true,
    weightfactorswindow = {0.4968625213918996, 0.0, 0.1266400456360525, 0.0, 0.37649743297204785},
    weightfactorswall = {0.13370597157694053, 0.0, 0.09415290178897506, 0.0, 0.23086453787660946},
    weightfactorground = 0.5412765887574749,
    orientationswallshorizontal = {90.0, 45.0, 90.0, 45.0, 90.0},
    Ai = 70.94,
    withInnerwalls = true,
    R1i = 0.000988403460395,
    C1i = 12366226.2505,
    RWin = 0.0263007776143,
    UWin = 1.6922685420811552,
    alphaConvWinInner = 2.7,
    alphaConvWinOuter = 20.0,
    Ao = 108.054,
    withOuterwalls = true,
    R1o = 0.000724729213788,
    RRest = 0.0207748285276,
    C1o = 14718998.8603,
    ActivityTypePeople = 3,
    RatioConvectiveHeatPeople = 0.5,
    ActivityTypeMachines = 2,
    RatioConvectiveHeatMachines = 0.5,
    rhoair = 1.19,
    cair = 1007,
    temperatureground = 286.15,
    Imax = 100.0,
    splitfac = 0.07,
    epso = 0.8999999999999999,
    epsi = 0.8999999999999999,
    epsw = 0.1540216771249287,
    awin = 0.0,
    aowo = 0.7,
    useConstantACHrate = false,
    baseACH = 0.2,
    maxUserACH = 1.0,
    maxOverheatingACH = {3.0, 2.0},
    maxSummerACH = {1.0, 283.15, 290.15},
    winterReduction = {0.2, 273.15, 283.15},
    withAHU = false,
    minAHU = 0.3,
    maxAHU = 0.6);



end S1_North_L1_LivingRoom;








