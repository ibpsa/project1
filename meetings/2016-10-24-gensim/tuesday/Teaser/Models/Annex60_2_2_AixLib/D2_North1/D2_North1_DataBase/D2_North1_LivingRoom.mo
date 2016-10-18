within Annex60_2_2_AixLib.D2_North1.D2_North1_DataBase;
record D2_North1_LivingRoom "D2_North1_LivingRoom"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 6,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.5,
    zoneID = "LivingRoom",
    usage = "Living",
    RoomArea = 53.9,
    Vair = 301.84,
    alphaiwi = 0.0,
    alphaowi = 7.700000000000001,
    alphaowo = 25.0,
    g = 0.5,
    NrPeople = 1.5,
    NrPeopleMachines = 2.0,
    LightingPower = 7.0,
    h_heater = 17483.544367802162,
    gsunblind = {0.0, 0.0, 1.0, 1.0, 0.0, 1.0},
    Aw = {0.0, 0.0, 4.8, 7.04, 0.0, 4.47},
    withWindows = true,
    weightfactorswindow = {0.0, 0.0, 0.29429797670141017, 0.43163703249540164, 0.0, 0.2740649908031882},
    weightfactorswall = {0.047297397818226235, 0.0, 0.09483301513095817, 0.14713302233380451, 0.0, 0.05493124980125039},
    weightfactorground = 0.6558053149157608,
    orientationswallshorizontal = {90.0, 45.0, 90.0, 90.0, 45.0, 90.0},
    Ai = 70.644,
    withInnerwalls = true,
    R1i = 0.00108130161096,
    C1i = 14988202.1063,
    RWin = 0.00429184549356,
    UWin = 5.003248862897986,
    alphaConvWinInner = 2.7,
    alphaConvWinOuter = 20.0,
    Ao = 117.47399999999999,
    withOuterwalls = true,
    R1o = 0.000331480088774,
    RRest = 0.00218972766858,
    C1o = 18502723.4996,
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
    epsw = 0.16554261189454325,
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



end D2_North1_LivingRoom;








