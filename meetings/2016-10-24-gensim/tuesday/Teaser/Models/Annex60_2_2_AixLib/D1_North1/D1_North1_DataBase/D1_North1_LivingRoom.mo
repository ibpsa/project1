within Annex60_2_2_AixLib.D1_North1.D1_North1_DataBase;
record D1_North1_LivingRoom "D1_North1_LivingRoom"
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
    h_heater = 8463.728406217631,
    gsunblind = {0.0, 0.0, 1.0, 1.0, 0.0, 1.0},
    Aw = {0.0, 0.0, 4.8, 7.04, 0.0, 4.47},
    withWindows = true,
    weightfactorswindow = {0.0, 0.0, 0.2942979767014101, 0.4316370324954016, 0.0, 0.2740649908031882},
    weightfactorswall = {0.0741274437583304, 0.0, 0.14862824002643257, 0.23059608648997104, 0.0, 0.08609169463965434},
    weightfactorground = 0.4605565350856117,
    orientationswallshorizontal = {90.0, 45.0, 90.0, 90.0, 45.0, 90.0},
    Ai = 70.644,
    withInnerwalls = true,
    R1i = 0.000997226154544,
    C1i = 11901545.2468,
    RWin = 0.0282680951305,
    UWin = 1.6922685420811552,
    alphaConvWinInner = 2.7,
    alphaConvWinOuter = 20.0,
    Ao = 117.47399999999999,
    withOuterwalls = true,
    R1o = 0.000675562958772,
    RRest = 0.0191117435231,
    C1o = 16951491.9719,
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



end D1_North1_LivingRoom;








