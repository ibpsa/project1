within Annex60_2_2_AixLib.S1_North_R1.S1_North_R1_DataBase;
record S1_North_R1_BedRoom "S1_North_R1_BedRoom"
  extends AixLib.DataBase.Buildings.ZoneBaseRecord(
    n = 5,
    Heater_on = true,
    Cooler_on = false,
    l_cooler = 0.0,
    RatioConvectiveHeatLighting = 0.5,
    zoneID = "BedRoom",
    usage = "Bed room",
    RoomArea = 42.6,
    Vair = 238.56,
    alphaiwi = 0.0,
    alphaowi = 7.700000000000002,
    alphaowo = 25.000000000000004,
    g = 0.5,
    NrPeople = 5.0,
    NrPeopleMachines = 4.0,
    LightingPower = 4.5,
    h_heater = 6377.722352505907,
    gsunblind = {1.0, 0.0, 1.0, 0.0, 0.0},
    Aw = {2.0, 0.0, 5.76, 0.0, 0.0},
    withWindows = true,
    weightfactorswindow = {0.25773195876288657, 0.0, 0.7422680412371134, 0.0, 0.0},
    weightfactorswall = {0.23426876695613386, 0.17331368439739586, 0.28582291574697083, 0.13328094850210367, 0.17331368439739586},
    weightfactorground = 0.0,
    orientationswallshorizontal = {90.0, 45.0, 90.0, 90.0, 45.0},
    Ai = 71.182,
    withInnerwalls = true,
    R1i = 0.000949501663025,
    C1i = 9265521.75169,
    RWin = 0.0594139989148,
    UWin = 1.6922685420811547,
    alphaConvWinInner = 2.6999999999999997,
    alphaConvWinOuter = 20.0,
    Ao = 101.75999999999999,
    withOuterwalls = true,
    R1o = 0.00129544598604,
    RRest = 0.0246217213822,
    C1o = 15974968.3734,
    ActivityTypePeople = 3,
    RatioConvectiveHeatPeople = 0.5,
    ActivityTypeMachines = 2,
    RatioConvectiveHeatMachines = 0.5,
    rhoair = 1.19,
    cair = 1007,
    temperatureground = 286.15,
    Imax = 100.0,
    splitfac = 0.07,
    epso = 0.9000000000000001,
    epsi = 0.9000000000000001,
    epsw = 0.23195876288659795,
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



end S1_North_R1_BedRoom;








