within Annex60_2_2_AixLib.T2_North1.T2_North1_DataBase;
record T2_North1_LivingRoom "T2_North1_LivingRoom"
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
    h_heater = 17856.594064846064,
    gsunblind = {1.0, 0.0, 1.0, 1.0, 0.0},
    Aw = {7.91, 0.0, 2.28, 2.88, 0.0},
    withWindows = true,
    weightfactorswindow = {0.6052027543993879, 0.0, 0.17444529456771227, 0.22035195103289973, 0.0},
    weightfactorswall = {0.14992992451245696, 0.05504844568666941, 0.0, 0.06255491824166332, 0.05504844568666941},
    weightfactorground = 0.6774182658725408,
    orientationswallshorizontal = {90.0, 45.0, 90.0, 90.0, 45.0},
    Ai = 90.036,
    withInnerwalls = true,
    R1i = 0.000863206194305,
    C1i = 16314153.2288,
    RWin = 0.00535577658761,
    UWin = 5.003248862897986,
    alphaConvWinInner = 2.6999999999999997,
    alphaConvWinOuter = 19.999999999999996,
    Ao = 83.334,
    withOuterwalls = true,
    R1o = 0.000481620429481,
    RRest = 0.00259121387546,
    C1o = 11790846.2078,
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



end T2_North1_LivingRoom;








