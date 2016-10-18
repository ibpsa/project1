within Annex60_2_2_AixLib.T1_North3.T1_North3_DataBase;
record T1_North3_LivingRoom "T1_North3_LivingRoom"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 5,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.5,
    zoneID = "LivingRoom",
    usage = "Living",
    RoomArea = 52.6,
    Vair = 441.84000000000003,
    alphaiwi = 0.0,
    alphaowi = 7.699999999999999,
    alphaowo = 24.999999999999996,
    g = 0.5,
    NrPeople = 1.5,
    NrPeopleMachines = 2.0,
    LightingPower = 7.0,
    h_heater = 10618.45304719132,
    gsunblind = {1.0, 0.0, 1.0, 1.0, 0.0},
    Aw = {7.91, 0.0, 2.28, 2.88, 0.0},
    withWindows = true,
    weightfactorswindow = {0.605202754399388, 0.0, 0.1744452945677123, 0.22035195103289976, 0.0},
    weightfactorswall = {0.26683963878865746, 0.04079471304224782, 0.0, 0.1113328899640216, 0.04079471304224782},
    weightfactorground = 0.5402380451628253,
    orientationswallshorizontal = {90.0, 45.0, 90.0, 90.0, 45.0},
    Ai = 90.036,
    withInnerwalls = true,
    R1i = 0.000780940130998,
    C1i = 13242411.049,
    RWin = 0.0352756412838,
    UWin = 1.692268542081155,
    alphaConvWinInner = 2.6999999999999997,
    alphaConvWinOuter = 19.999999999999996,
    Ao = 83.334,
    withOuterwalls = true,
    R1o = 0.0011488316091,
    RRest = 0.0275898865582,
    C1o = 10715726.7471,
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
    epsw = 0.20657995409334354,
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



end T1_North3_LivingRoom;








