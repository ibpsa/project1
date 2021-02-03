
within ProjektBuerogebaeude.Buerogebaeude;
model Buerogebaeude
  "This is the simulation model of Buerogebaeude with traceable ID 0"


AixLib.ThermalZones.ReducedOrder.Multizone.MultizoneEquipped multizone(
    buildingID=0,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    T_start = 293.15,
    VAir = 6119.982000000003,
    ABuilding=2266.66,
    ASurTot=14268.777229960499,
    numZones = 82,
    internalGainsMode = 1,
        use_C_flow = false,
        use_moisture_balance = false,
        redeclare package Medium = Modelica.Media.Air.SimpleAir,
    zoneParam = {
      Buerogebaeude_DataBase.Buerogebaeude_001(),
      Buerogebaeude_DataBase.Buerogebaeude_002(),
      Buerogebaeude_DataBase.Buerogebaeude_003(),
      Buerogebaeude_DataBase.Buerogebaeude_004(),
      Buerogebaeude_DataBase.Buerogebaeude_005(),
      Buerogebaeude_DataBase.Buerogebaeude_006(),
      Buerogebaeude_DataBase.Buerogebaeude_007(),
      Buerogebaeude_DataBase.Buerogebaeude_008(),
      Buerogebaeude_DataBase.Buerogebaeude_010(),
      Buerogebaeude_DataBase.Buerogebaeude_011(),
      Buerogebaeude_DataBase.Buerogebaeude_012(),
      Buerogebaeude_DataBase.Buerogebaeude_013(),
      Buerogebaeude_DataBase.Buerogebaeude_014(),
      Buerogebaeude_DataBase.Buerogebaeude_015(),
      Buerogebaeude_DataBase.Buerogebaeude_017(),
      Buerogebaeude_DataBase.Buerogebaeude_016(),
      Buerogebaeude_DataBase.Buerogebaeude_009(),
      Buerogebaeude_DataBase.Buerogebaeude_101(),
      Buerogebaeude_DataBase.Buerogebaeude_102(),
      Buerogebaeude_DataBase.Buerogebaeude_103(),
      Buerogebaeude_DataBase.Buerogebaeude_116(),
      Buerogebaeude_DataBase.Buerogebaeude_115(),
      Buerogebaeude_DataBase.Buerogebaeude_113(),
      Buerogebaeude_DataBase.Buerogebaeude_112(),
      Buerogebaeude_DataBase.Buerogebaeude_111(),
      Buerogebaeude_DataBase.Buerogebaeude_105(),
      Buerogebaeude_DataBase.Buerogebaeude_110(),
      Buerogebaeude_DataBase.Buerogebaeude_109(),
      Buerogebaeude_DataBase.Buerogebaeude_108(),
      Buerogebaeude_DataBase.Buerogebaeude_107(),
      Buerogebaeude_DataBase.Buerogebaeude_106(),
      Buerogebaeude_DataBase.Buerogebaeude_118(),
      Buerogebaeude_DataBase.Buerogebaeude_104(),
      Buerogebaeude_DataBase.Buerogebaeude_114(),
      Buerogebaeude_DataBase.Buerogebaeude_117(),
      Buerogebaeude_DataBase.Buerogebaeude_220(),
      Buerogebaeude_DataBase.Buerogebaeude_214(),
      Buerogebaeude_DataBase.Buerogebaeude_213(),
      Buerogebaeude_DataBase.Buerogebaeude_222(),
      Buerogebaeude_DataBase.Buerogebaeude_211(),
      Buerogebaeude_DataBase.Buerogebaeude_221(),
      Buerogebaeude_DataBase.Buerogebaeude_207(),
      Buerogebaeude_DataBase.Buerogebaeude_206(),
      Buerogebaeude_DataBase.Buerogebaeude_210(),
      Buerogebaeude_DataBase.Buerogebaeude_219(),
      Buerogebaeude_DataBase.Buerogebaeude_218(),
      Buerogebaeude_DataBase.Buerogebaeude_217(),
      Buerogebaeude_DataBase.Buerogebaeude_215(),
      Buerogebaeude_DataBase.Buerogebaeude_204(),
      Buerogebaeude_DataBase.Buerogebaeude_201(),
      Buerogebaeude_DataBase.Buerogebaeude_208(),
      Buerogebaeude_DataBase.Buerogebaeude_202(),
      Buerogebaeude_DataBase.Buerogebaeude_203(),
      Buerogebaeude_DataBase.Buerogebaeude_209(),
      Buerogebaeude_DataBase.Buerogebaeude_212(),
      Buerogebaeude_DataBase.Buerogebaeude_205(),
      Buerogebaeude_DataBase.Buerogebaeude_216(),
      Buerogebaeude_DataBase.Buerogebaeude_313(),
      Buerogebaeude_DataBase.Buerogebaeude_302(),
      Buerogebaeude_DataBase.Buerogebaeude_303(),
      Buerogebaeude_DataBase.Buerogebaeude_304(),
      Buerogebaeude_DataBase.Buerogebaeude_305(),
      Buerogebaeude_DataBase.Buerogebaeude_318(),
      Buerogebaeude_DataBase.Buerogebaeude_317(),
      Buerogebaeude_DataBase.Buerogebaeude_316(),
      Buerogebaeude_DataBase.Buerogebaeude_315(),
      Buerogebaeude_DataBase.Buerogebaeude_306(),
      Buerogebaeude_DataBase.Buerogebaeude_307(),
      Buerogebaeude_DataBase.Buerogebaeude_312(),
      Buerogebaeude_DataBase.Buerogebaeude_311(),
      Buerogebaeude_DataBase.Buerogebaeude_310(),
      Buerogebaeude_DataBase.Buerogebaeude_309(),
      Buerogebaeude_DataBase.Buerogebaeude_308(),
      Buerogebaeude_DataBase.Buerogebaeude_314(),
      Buerogebaeude_DataBase.Buerogebaeude_301(),
      Buerogebaeude_DataBase.Buerogebaeude_319(),
      Buerogebaeude_DataBase.Buerogebaeude_320(),
      Buerogebaeude_DataBase.Buerogebaeude_321(),
      Buerogebaeude_DataBase.Buerogebaeude_322(),
      Buerogebaeude_DataBase.Buerogebaeude_403(),
      Buerogebaeude_DataBase.Buerogebaeude_402(),
      Buerogebaeude_DataBase.Buerogebaeude_401()
      },
  heatAHU = false,
  coolAHU = false,
  dehuAHU = false,
  huAHU = false,
  BPFDehuAHU = 0.2,
  HRS = false,
  sampleRateAHU=1800,
  effFanAHU_sup=0.7,
  effFanAHU_eta=0.7,
  effHRSAHU_enabled = 0.8,
  effHRSAHU_disabled = 0.2,
  dpAHU_sup=800,
  dpAHU_eta=800,
  zone(ROM(extWallRC(thermCapExt(each der_T(fixed=true))),
           intWallRC(thermCapInt(each der_T(fixed=true))),floorRC
           (thermCapExt(each der_T(fixed=true))),roofRC(thermCapExt(each
           der_T(fixed=true))))),
   redeclare model corG =
        AixLib.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane,
  redeclare model AHUMod = AixLib.Airflow.AirHandlingUnit.NoAHU)
    "Multizone"
    annotation (Placement(transformation(extent={{32,-8},{52,12}})));

  AixLib.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(
    calTSky=AixLib.BoundaryConditions.Types.SkyTemperatureCalculation.HorizontalRadiation,
    computeWetBulbTemperature=false,
    filNam=Modelica.Utilities.Files.loadResource(
        "modelica://ProjektBuerogebaeude/DEU_BW_Mannheim_107290_TRY2010_12_Jahr_BBSR.mos"))
    "Weather data reader"
    annotation (Placement(transformation(extent={{-82,30},{-62,50}})));

  Modelica.Blocks.Sources.CombiTimeTable tableInternalGains(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    tableName="Internals",
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://ProjektBuerogebaeude/Buerogebaeude/InternalGains_None.txt"),
    columns=2:247)
    "Profiles for internal gains"
    annotation (Placement(transformation(extent={{72,-42},{56,-26}})));

  Modelica.Blocks.Sources.CombiTimeTable tableAHU(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    tableName="AHU",
    columns=2:5,
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://ProjektBuerogebaeude/Buerogebaeude/AHU_None.txt"))
    "Boundary conditions for air handling unit"
    annotation (Placement(transformation(extent={{-64,-6},{-48,10}})));

  Modelica.Blocks.Sources.CombiTimeTable tableTSet(
    tableOnFile=true,
    tableName="Tset",
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://ProjektBuerogebaeude/Buerogebaeude/TsetHeat_None.txt"),
    columns=2:83)
    "Set points for heater"
    annotation (Placement(transformation(extent={{72,-66},{56,-50}})));

    Modelica.Blocks.Sources.CombiTimeTable tableTSetCool(
      tableOnFile=true,
      tableName="Tset",
      extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
      fileName=Modelica.Utilities.Files.loadResource(
          "modelica://ProjektBuerogebaeude/Buerogebaeude/TsetCool_None.txt"),
      columns=2:83)
      "Set points for cooler"
    annotation (Placement(transformation(extent={{72,-90},{56,-74}})));

equation
  connect(weaDat.weaBus, multizone.weaBus) annotation (Line(
      points={{-62,40},{-32,40},{-32,6},{34,6}},
      color={255,204,51},
      thickness=0.5));

  connect(tableInternalGains.y, multizone.intGains)
    annotation (Line(points={{55.2,-34},{48,-34},{48,-9}}, color={0,0,127}));

  connect(tableAHU.y, multizone.AHU)
    annotation (Line(points={{-47.2,2},{14,2},{33,2}}, color={0,0,127}));

  connect(tableTSet.y, multizone.TSetHeat) annotation (Line(points={{55.2,-58},
          {36.8,-58},{36.8,-9}}, color={0,0,127}));

  connect(tableTSetCool.y, multizone.TSetCool) annotation (Line(points={{55.2,-58},
          {36.8,-58},{36.8,-9}}, color={0,0,127}));

  annotation (experiment(
      StartTime=0,
      StopTime=31536000,
      Interval=3600,
      Tolerance=0.0001,
      __Dymola_Algorithm="Cvode"),
      __Dymola_experimentSetupOutput(equidistant=true,
      events=false),
      __Dymola_Commands(file=
        "Resources/Scripts/Dymola/Buerogebaeude/Buerogebaeude.mos"
      "Simulate and Plot"),
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
        graphics={
        Line(points={{80,-82}}, color={28,108,200}),
        Rectangle(
          extent={{-80,20},{80,-80}},
          lineColor={0,0,0},
          lineThickness=0.5),
        Line(
          points={{-80,20},{0,100},{80,20}},
          color={0,0,0},
          thickness=0.5),
        Text(
          extent={{-52,-10},{62,-48}},
          lineColor={0,0,0},
          lineThickness=0.5,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="TB")}));
end Buerogebaeude;
