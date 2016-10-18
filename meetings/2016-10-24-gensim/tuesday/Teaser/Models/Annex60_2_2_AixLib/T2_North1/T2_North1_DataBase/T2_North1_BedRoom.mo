within Annex60_2_2_AixLib.T2_North1.T2_North1_DataBase;
record T2_North1_BedRoom "T2_North1_BedRoom"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 5,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.5,
    zoneID = "BedRoom",
    usage = "Bed room",
    RoomArea = 48.0,
    Vair = 403.2,
    alphaiwi = 0.0,
    alphaowi = 7.700000000000001,
    alphaowo = 24.999999999999996,
    g = 0.5,
    NrPeople = 5.0,
    NrPeopleMachines = 4.0,
    LightingPower = 4.5,
    h_heater = 11964.825897814491,
    gsunblind = {1.0, 0.0, 0.0, 1.0, 0.0},
    Aw = {2.88, 0.0, 0.0, 4.88, 0.0},
    withWindows = true,
    weightfactorswindow = {0.3711340206185567, 0.0, 0.0, 0.6288659793814433, 0.0},
    weightfactorswall = {0.15699958771076253, 0.25591300855792215, 0.0, 0.3311743951733933, 0.25591300855792215},
    weightfactorground = 0.0,
    orientationswallshorizontal = {90.0, 45.0, 90.0, 90.0, 45.0},
    Ai = 109.097,
    withInnerwalls = true,
    R1i = 0.000788307168172,
    C1i = 17952305.9614,
    RWin = 0.0090206185567,
    UWin = 5.003248862897985,
    alphaConvWinInner = 2.7,
    alphaConvWinOuter = 20.0,
    Ao = 43.002,
    withOuterwalls = true,
    R1o = 0.00133162851036,
    RRest = 0.00775897815526,
    C1o = 4938475.43638,
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
    epsw = 0.23195876288659795,
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



end T2_North1_BedRoom;








