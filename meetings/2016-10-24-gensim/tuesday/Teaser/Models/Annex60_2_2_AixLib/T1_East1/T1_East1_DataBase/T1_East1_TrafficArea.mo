within Annex60_2_2_AixLib.T1_East1.T1_East1_DataBase;
record T1_East1_TrafficArea "T1_East1_TrafficArea"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 5,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.9,
    zoneID = "TrafficArea",
    usage = "Traffic area",
    RoomArea = 24.69,
    Vair = 207.39600000000002,
    alphaiwi = 0.0,
    alphaowi = 7.699999999999999,
    alphaowo = 25.0,
    g = 0.5,
    NrPeople = 0.0,
    NrPeopleMachines = 0.0,
    LightingPower = 7.0,
    h_heater = 4783.917790411057,
    gsunblind = {0.0, 1.0, 0.0, 1.0, 0.0},
    Aw = {0.0, 1.0, 0.0, 2.08, 0.0},
    withWindows = true,
    weightfactorswindow = {0.0, 0.3246753246753246, 0.0, 0.6753246753246753, 0.0},
    weightfactorswall = {0.0, 0.13996934287152007, 0.09483363791560355, 0.4253218307562465, 0.09483363791560355},
    weightfactorground = 0.2450415505410262,
    orientationswallshorizontal = {90.0, 90.0, 45.0, 90.0, 45.0},
    Ai = 53.764,
    withInnerwalls = true,
    R1i = 0.00129436622128,
    C1i = 7534814.96351,
    RWin = 0.14969241285,
    UWin = 1.692268542081155,
    alphaConvWinInner = 2.7,
    alphaConvWinOuter = 20.0,
    Ao = 37.80800000000001,
    withOuterwalls = true,
    R1o = 0.00298472623244,
    RRest = 0.0630078583041,
    C1o = 5576331.64458,
    ActivityTypePeople = 3,
    RatioConvectiveHeatPeople = 0.5,
    ActivityTypeMachines = 2,
    RatioConvectiveHeatMachines = 0.5,
    rhoair = 1.19,
    cair = 1007,
    temperatureground = 286.15,
    Imax = 100.0,
    splitfac = 0.07,
    epso = 0.8999999999999998,
    epsi = 0.8999999999999998,
    epsw = 0.5844155844155844,
    awin = 0.0,
    aowo = 0.6999999999999998,
    useConstantACHrate = false,
    baseACH = 0.2,
    maxUserACH = 1.0,
    maxOverheatingACH = {3.0, 2.0},
    maxSummerACH = {1.0, 283.15, 290.15},
    winterReduction = {0.2, 273.15, 283.15},
    withAHU = false,
    minAHU = 0.0,
    maxAHU = 2.0);



end T1_East1_TrafficArea;








