within Annex60_2_2_AixLib.A1_North1.A1_North1_DataBase;
record A1_North1_BedRoom "A1_North1_BedRoom"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 4,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.5,
    zoneID = "BedRoom",
    usage = "Bed room",
    RoomArea = 235.5,
    Vair = 3297.0,
    alphaiwi = 0.0,
    alphaowi = 7.699999999999999,
    alphaowo = 24.999999999999996,
    g = 0.5,
    NrPeople = 5.0,
    NrPeopleMachines = 4.0,
    LightingPower = 4.5,
    h_heater = 70870.15601586374,
    gsunblind = {1.0, 0.0, 0.0, 0.0},
    Aw = {37.2, 0.0, 0.0, 0.0},
    withWindows = true,
    weightfactorswindow = {1.0, 0.0, 0.0, 0.0},
    weightfactorswall = {0.5374424333566357, 0.0, 0.0, 0.19543524133695528},
    weightfactorground = 0.26712232530640906,
    orientationswallshorizontal = {90.0, 90.0, 90.0, 0.0},
    Ai = 188.4,
    withInnerwalls = true,
    R1i = 0.000322860963135,
    C1i = 48013682.3645,
    RWin = 0.0123938879457,
    UWin = 1.692268542081155,
    alphaConvWinInner = 2.7,
    alphaConvWinOuter = 20.0,
    Ao = 228.76,
    withOuterwalls = true,
    R1o = 0.000502021674145,
    RRest = 0.0104253454263,
    C1o = 33138872.9304,
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
    epsw = 0.024193548387096774,
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
    maxAHU = 0.0);



end A1_North1_BedRoom;








