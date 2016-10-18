within Annex60_2_2_AixLib.A1_North1.A1_North1_DataBase;
record A1_North1_LivingRoom "A1_North1_LivingRoom"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 4,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.5,
    zoneID = "LivingRoom",
    usage = "Living",
    RoomArea = 302.0,
    Vair = 4228.0,
    alphaiwi = 0.0,
    alphaowi = 7.699999999999999,
    alphaowo = 25.0,
    g = 0.5,
    NrPeople = 1.5,
    NrPeopleMachines = 2.0,
    LightingPower = 7.0,
    h_heater = 92028.7385172394,
    gsunblind = {0.0, 1.0, 1.0, 0.0},
    Aw = {0.0, 76.6, 3.15, 0.0},
    withWindows = true,
    weightfactorswindow = {0.0, 0.9605015673981191, 0.03949843260188088, 0.0},
    weightfactorswall = {0.0, 0.446092670772839, 0.0, 0.23403143818698469},
    weightfactorground = 0.31987589104017633,
    orientationswallshorizontal = {90.0, 90.0, 90.0, 0.0},
    Ai = 241.6,
    withInnerwalls = true,
    R1i = 0.000251767406683,
    C1i = 61571686.0896,
    RWin = 0.00578122422043,
    UWin = 1.6922685420811547,
    alphaConvWinInner = 2.6999999999999997,
    alphaConvWinOuter = 20.0,
    Ao = 248.04,
    withOuterwalls = true,
    R1o = 0.000506093141402,
    RRest = 0.00970515717332,
    C1o = 33861919.2883,
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
    epsi = 0.8999999999999999,
    epsw = 0.022570532915360503,
    awin = 0.0,
    aowo = 0.6999999999999998,
    useConstantACHrate = false,
    baseACH = 0.2,
    maxUserACH = 1.0,
    maxOverheatingACH = {3.0, 2.0},
    maxSummerACH = {1.0, 283.15, 290.15},
    winterReduction = {0.2, 273.15, 283.15},
    withAHU = false,
    minAHU = 0.3,
    maxAHU = 0.6);



end A1_North1_LivingRoom;








