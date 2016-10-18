within Annex60_2_2_AixLib.S1_East1.S1_East1_DataBase;
record S1_East1_TrafficArea "S1_East1_TrafficArea"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 5,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.9,
    zoneID = "TrafficArea",
    usage = "Traffic area",
    RoomArea = 26.0,
    Vair = 145.6,
    alphaiwi = 0.0,
    alphaowi = 7.699999999999999,
    alphaowo = 25.0,
    g = 0.5,
    NrPeople = 0.0,
    NrPeopleMachines = 0.0,
    LightingPower = 7.0,
    h_heater = 3397.4874586894575,
    gsunblind = {0.0, 0.0, 0.0, 1.0, 0.0},
    Aw = {0.0, 0.0, 0.0, 0.64, 0.0},
    withWindows = true,
    weightfactorswindow = {0.0, 0.0, 0.0, 1.0, 0.0},
    weightfactorswall = {0.0, 0.08283896582171439, 0.0, 0.2961361430905088, 0.08283896582171439},
    weightfactorground = 0.5381859252660626,
    orientationswallshorizontal = {90.0, 45.0, 90.0, 90.0, 45.0},
    Ai = 45.648,
    withInnerwalls = true,
    R1i = 0.0015323382696,
    C1i = 6532466.95405,
    RWin = 0.720394736842,
    UWin = 1.6922685420811547,
    alphaConvWinInner = 2.6999999999999997,
    alphaConvWinOuter = 20.0,
    Ao = 36.14,
    withOuterwalls = true,
    R1o = 0.0032237851082,
    RRest = 0.0650918614048,
    C1o = 4387916.74099,
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
    epsw = 1.40625,
    awin = 0.0,
    aowo = 0.7000000000000001,
    useConstantACHrate = false,
    baseACH = 0.2,
    maxUserACH = 1.0,
    maxOverheatingACH = {3.0, 2.0},
    maxSummerACH = {1.0, 283.15, 290.15},
    winterReduction = {0.2, 273.15, 283.15},
    withAHU = false,
    minAHU = 0.0,
    maxAHU = 2.0);



end S1_East1_TrafficArea;








