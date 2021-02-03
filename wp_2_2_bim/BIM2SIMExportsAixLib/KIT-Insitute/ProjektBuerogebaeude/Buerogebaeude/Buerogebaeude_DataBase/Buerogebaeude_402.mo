 
within ProjektBuerogebaeude.Buerogebaeude.Buerogebaeude_DataBase;
record Buerogebaeude_402 "Buerogebaeude_402"
  extends AixLib.DataBase.ThermalZones.ZoneBaseRecord(
    T_start = 293.15,
    withAirCap = true,
    VAir = 544.806,
    AZone = 201.78,
    hRad = 5.0,
    lat = 0.88645272708792,
    nOrientations = 4,
    AWin = {0.0, 0.0, 0.0, 0.0},
    ATransparent = {0.0, 0.0, 0.0, 0.0},
    hConWin = 0.0,
    RWin = 0.0,
    gWin = 0.0,
    UWin= 0.0,
    ratioWinConRad = 0.0,
    AExt = {249.97993369523343, 14.1227889935958, 5.73251103679, 0.5787167138202493},
    hConExt = 1.7755656899764214,
    nExt = 1,
    RExt = {8.935582007118449e-05},
    RExtRem = 0.0071023222858314005 ,
    CExt = {100035837.04336374},
    AInt = 369.6987232431023,
    hConInt = 1.7000000000000002,
    nInt = 1,
    RInt = {6.275210750352123e-05},
    CInt = {32758959.527105667},
    AFloor = 0.0,
    hConFloor = 0.0,
    nFloor = 1,
    RFloor = {0.00001},
    RFloorRem =  0.00001,
    CFloor = {0.00001},
    ARoof = 0.0,
    hConRoof = 0.0,
    nRoof = 1,
    RRoof = {0.00001},
    RRoofRem = 0.00001,
    CRoof = {0.00001},
    nOrientationsRoof = 1,
    tiltRoof = {0.0},
    aziRoof = {0.0},
    wfRoof = {0.0},
    aRoof = 0.0,
    aExt = 0.6999999999999998,
    TSoil = 286.15,
    hConWallOut = 19.999999999999996,
    hRadWall = 4.999999999999999,
    hConWinOut = 0.0,
    hConRoofOut = 0.0,
    hRadRoof = 0.0,
    tiltExtWalls = {0.0, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966},
    aziExtWalls = {0.0, 0.0, 3.141592653589793, -1.5707963267948966},
    wfWall = {0.9195610617774341, 0.05559465696866961, 0.022566150694736775, 0.002278130559159533},
    wfWin = {0.0, 0.0, 0.0, 0.0},
    wfGro = 0,
    specificPeople = 0.0,
    fixedHeatFlowRatePersons = 70,
    ratioConvectiveHeatPeople = 0.5,
    internalGainsMachinesSpecific = 0.0,
    internalGainsMoistureNoPeople = 0.0,
    activityDegree = 1.2,
    ratioConvectiveHeatMachines = 0.75,
    lightingPowerSpecific = 7.0,
    ratioConvectiveHeatLighting = 0.9,
    useConstantACHrate = false,
    baseACH = 0.2,
    maxUserACH = 1.0,
    maxOverheatingACH = {3.0, 2.0},
    maxSummerACH = {1.0, 283.15, 290.15},
    winterReduction = {0.2, 273.15, 283.15},
    maxIrr = {9999.9, 9999.9, 9999.9, 9999.9},
    shadingFactor = {1.0, 1.0, 1.0, 1.0},
    withAHU = false,
    minAHU = 0.0,
    maxAHU = 2.0,
    hHeat = 10000,
    lHeat = 0,
    KRHeat = 100,
    TNHeat = 50,
    HeaterOn = true,
    hCool = 0,
    lCool = -10000,
    KRCool = 10000,
    TNCool = 1,
    CoolerOn = true,
    withIdealThresholds = false,
    TThresholdHeater = 288.15,
    TThresholdCooler = 295.15);
end Buerogebaeude_402;
