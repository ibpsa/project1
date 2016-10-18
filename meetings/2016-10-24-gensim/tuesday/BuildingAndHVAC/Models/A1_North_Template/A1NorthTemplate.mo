within A1_North_Template;
model A1NorthTemplate
  Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil[3](
    each outSkyCon=true,
    each outGroCon=true,
    til={1.5707963267948966, 1.5707963267948966, 0.0},
    each lat = 0.8861990609344351,
    azi={0.0, 1.5707963267948966, 0.0})
    "Calculates diffuse solar radiation on titled surface for all directions"
    annotation (Placement(transformation(extent={{46,134},{66,154}})));
  Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil[3](
    til={1.5707963267948966, 1.5707963267948966, 0.0},
    each lat = 0.8861990609344351,
    azi={0.0, 1.5707963267948966, 0.0})
    "Calculates direct solar radiation on titled surface for all directions"
    annotation (Placement(transformation(extent={{46,166},{66,186}})));
  Annex60.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane(n=3, UWin=1.6922685420811547)
    "Correction factor for solar transmission"
    annotation (Placement(transformation(extent={{120,168},{140,188}})));
  Annex60.ThermalZones.ReducedOrder.RC.TwoElements livingRoom(
    redeclare package Medium = Modelica.Media.Air.DryAirNasa,
    VAir=4228.0,
    alphaExt=7.699999999999999,
    alphaWin=2.6999999999999997,
    gWin=0.0,
    ratioWinConRad=0.07,
    nExt=1,
    RExt={0.000506093141402},
    CExt={33861919.2883},
    alphaRad=2.878431303675864,
    AInt=241.6,
    alphaInt=16.349999999999998,
    nInt=1,
    RInt={0.000251767406683},
    CInt={61571686.0896},
    RWin=0.00578122422043,
    RExtRem=0.00970515717332,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    extWallRC(thermCapExt(each der_T(fixed=true))),
    intWallRC(thermCapInt(each der_T(fixed=true))),
    nOrientations=3,
    AWin={76.6,3.15,0.0},
    ATransparent={76.6,3.15,0.0},
    AExt={102.32,0.0,72.86}) "Thermal zone"
    annotation (Placement(transformation(extent={{158,112},{206,148}})));
  Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp(
    n=3,
    wfGro=0.31987589104017633,
    wfWall={0.446092670772839, 0.0, 0.23403143818698469},
    wfWin={0.9605015673981191, 0.03949843260188088, 0.0},
    withLongwave=true,
    aExt=0.6999999999999998,
    alphaWallOut=20.0,
    alphaRad=5.0,
    alphaWinOut=20.0,
    TGro=286.15) "Computes equivalent air temperature"
    annotation (Placement(transformation(extent={{90,100},{110,120}})));
  Modelica.Blocks.Math.Add solRad[3]
    "Sums up solar radiation of both directions"
    annotation (Placement(transformation(extent={{76,120},{86,130}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature
    "Prescribed temperature for exterior walls outdoor surface temperature"
    annotation (Placement(transformation(extent={{122,108},{134,120}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1
    "Prescribed temperature for windows outdoor surface temperature"
    annotation (Placement(transformation(extent={{122,128},{134,140}})));
  Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin
    "Outdoor convective heat transfer of windows"
    annotation (Placement(transformation(extent={{152,130},{142,140}})));
  Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall
    "Outdoor convective heat transfer of walls"
    annotation (Placement(transformation(extent={{150,120},{140,110}})));
  Modelica.Blocks.Sources.Constant const[3](each k=0)
    "Sets sunblind signal to zero (open)"
    annotation (Placement(transformation(extent={{94,128},{100,134}})));
  Modelica.Blocks.Sources.Constant alphaWall(k=25.0
  *248.04)
    "Outdoor coefficient of heat transfer for walls"
    annotation (Placement(
    transformation(
    extent={{-4,-4},{4,4}},
    rotation=90,
    origin={144,98})));
  Modelica.Blocks.Sources.Constant alphaWin(k=1993.7499999999998)
    "Outdoor coefficient of heat transfer for windows"
    annotation (Placement(
    transformation(
    extent={{4,-4},{-4,4}},
    rotation=90,
    origin={146,152})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsRad
    "Radiative heat flow of persons"
    annotation (Placement(transformation(extent={{162,72},{182,92}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsConv
    "Convective heat flow of persons"
    annotation (Placement(transformation(extent={{162,52},{182,72}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow machinesConv
    "Convective heat flow of machines"
    annotation (Placement(transformation(extent={{162,30},{182,50}})));
  Modelica.Blocks.Sources.CombiTimeTable internalGains(
    table=[0,0,0,0; 3600,0,0,0; 7200,0,0,0; 10800,0,0,0; 14400,0,0,0; 18000,0,0,
        0; 21600,0,0,0; 25200,0,0,0; 25200,80,80,200; 28800,80,80,200; 32400,80,
        80,200; 36000,80,80,200; 39600,80,80,200; 43200,80,80,200; 46800,80,80,200;
        50400,80,80,200; 54000,80,80,200; 57600,80,80,200; 61200,80,80,200; 61200,
        0,0,0; 64800,0,0,0; 72000,0,0,0; 75600,0,0,0; 79200,0,0,0; 82800,0,0,0;
        86400,0,0,0],
    columns={2,3,4},
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic) "Table with profiles for persons (radiative and convective) and machines
    (convective)"
    annotation (Placement(transformation(extent={{120,54},{136,70}})));
  Annex60.BoundaryConditions.WeatherData.ReaderTMY3 weaDat1(
    calTSky=Annex60.BoundaryConditions.Types.SkyTemperatureCalculation.HorizontalRadiation,
    computeWetBulbTemperature=false,
    filNam="modelica://Annex60/Resources/weatherdata/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.mos")
    "Weather data reader"
    annotation (Placement(transformation(extent={{-14,-16},{6,4}})));
  Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil1[
                                                                   2](
    each outSkyCon=true,
    each outGroCon=true,
    til={1.5707963267948966, 0.0},
    each lat = 0.8861990609344351,
    azi={3.141592653589793, 0.0})
    "Calculates diffuse solar radiation on titled surface for all directions"
    annotation (Placement(transformation(extent={{44,-92},{64,-72}})));
  Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil1[
                                                                          2](
    til={1.5707963267948966, 0.0},
    each lat = 0.8861990609344351,
    azi={3.141592653589793, 0.0})
    "Calculates direct solar radiation on titled surface for all directions"
    annotation (Placement(transformation(extent={{44,-60},{64,-40}})));
  Annex60.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane1(
                                                                                   n=2, UWin=1.692268542081155)
    "Correction factor for solar transmission"
    annotation (Placement(transformation(extent={{118,-58},{138,-38}})));
  Annex60.ThermalZones.ReducedOrder.RC.TwoElements bedRoom(
    redeclare package Medium = Modelica.Media.Air.DryAirNasa,
    VAir=3297.0,
    alphaExt=7.699999999999999,
    alphaWin=2.7,
    gWin=0.0,
    ratioWinConRad=0.07,
    nExt=1,
    RExt={0.000502021674145},
    CExt={33138872.9304},
    alphaRad=2.926754115679197,
    AInt=188.4,
    alphaInt=16.349999999999998,
    nInt=1,
    RInt={0.000322860963135},
    CInt={48013682.3645},
    RWin=0.0123938879457,
    RExtRem=0.0104253454263,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    extWallRC(thermCapExt(each der_T(fixed=true))),
    intWallRC(thermCapInt(each der_T(fixed=true))),
    nOrientations=2,
    AWin={37.2,0.0},
    ATransparent={37.2,0.0},
    AExt={115.12,56.82}) "Thermal zone"
    annotation (Placement(transformation(extent={{156,-114},{204,-78}})));
  Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp1(
    n=2,
    wfGro=0.26712232530640906,
    wfWall={0.5374424333566357, 0.19543524133695528},
    wfWin={1.0, 0.0},
    withLongwave=true,
    aExt=0.7000000000000001,
    alphaWallOut=19.999999999999996,
    alphaRad=4.999999999999999,
    alphaWinOut=20.0,
    TGro=286.15) "Computes equivalent air temperature"
    annotation (Placement(transformation(extent={{88,-126},{108,-106}})));
  Modelica.Blocks.Math.Add solRad1[
                                  2]
    "Sums up solar radiation of both directions"
    annotation (Placement(transformation(extent={{74,-106},{84,-96}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature2
    "Prescribed temperature for exterior walls outdoor surface temperature"
    annotation (Placement(transformation(extent={{120,-118},{132,-106}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature3
    "Prescribed temperature for windows outdoor surface temperature"
    annotation (Placement(transformation(extent={{120,-98},{132,-86}})));
  Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin1
    "Outdoor convective heat transfer of windows"
    annotation (Placement(transformation(extent={{150,-96},{140,-86}})));
  Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall1
    "Outdoor convective heat transfer of walls"
    annotation (Placement(transformation(extent={{148,-106},{138,-116}})));
  Modelica.Blocks.Sources.Constant const1[
                                         2](each k=0)
    "Sets sunblind signal to zero (open)"
    annotation (Placement(transformation(extent={{92,-98},{98,-92}})));
  Modelica.Blocks.Sources.Constant alphaWall1(
                                             k=24.999999999999996
  *228.76)
    "Outdoor coefficient of heat transfer for walls"
    annotation (Placement(
    transformation(
    extent={{-4,-4},{4,4}},
    rotation=90,
    origin={142,-128})));
  Modelica.Blocks.Sources.Constant alphaWin1(
                                            k=930.0000000000002)
    "Outdoor coefficient of heat transfer for windows"
    annotation (Placement(
    transformation(
    extent={{4,-4},{-4,4}},
    rotation=90,
    origin={144,-74})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsRad1
    "Radiative heat flow of persons"
    annotation (Placement(transformation(extent={{160,-154},{180,-134}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsConv1
    "Convective heat flow of persons"
    annotation (Placement(transformation(extent={{160,-174},{180,-154}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow machinesConv1
    "Convective heat flow of machines"
    annotation (Placement(transformation(extent={{160,-196},{180,-176}})));
  Modelica.Blocks.Sources.CombiTimeTable internalGains1(
    table=[0,0,0,0; 3600,0,0,0; 7200,0,0,0; 10800,0,0,0; 14400,0,0,0; 18000,0,0,
        0; 21600,0,0,0; 25200,0,0,0; 25200,80,80,200; 28800,80,80,200; 32400,80,
        80,200; 36000,80,80,200; 39600,80,80,200; 43200,80,80,200; 46800,80,80,200;
        50400,80,80,200; 54000,80,80,200; 57600,80,80,200; 61200,80,80,200; 61200,
        0,0,0; 64800,0,0,0; 72000,0,0,0; 75600,0,0,0; 79200,0,0,0; 82800,0,0,0;
        86400,0,0,0],
    columns={2,3,4},
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic) "Table with profiles for persons (radiative and convective) and machines
    (convective)"
    annotation (Placement(transformation(extent={{118,-172},{134,-156}})));
  Annex60.BoundaryConditions.WeatherData.Bus weaBus1
                                                    "Weather data bus"
    annotation (Placement(
    transformation(extent={{12,-122},{46,-90}}), iconTransformation(
    extent={{-70,-12},{-50,8}})));
  Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil2[
                                                                   2](
    each outSkyCon=true,
    each outGroCon=true,
    til={1.5707963267948966, 0.0},
    each lat = 0.8861990609344351,
    azi={3.141592653589793, 0.0})
    "Calculates diffuse solar radiation on titled surface for all directions"
    annotation (Placement(transformation(extent={{-190,-92},{-170,-72}})));
  Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil2[
                                                                          2](
    til={1.5707963267948966, 0.0},
    each lat = 0.8861990609344351,
    azi={3.141592653589793, 0.0})
    "Calculates direct solar radiation on titled surface for all directions"
    annotation (Placement(transformation(extent={{-190,-60},{-170,-40}})));
  Annex60.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane2(
                                                                                   n=2, UWin=1.692268542081155)
    "Correction factor for solar transmission"
    annotation (Placement(transformation(extent={{-116,-58},{-96,-38}})));
  Annex60.ThermalZones.ReducedOrder.RC.TwoElements sanitaryRooms(
    redeclare package Medium = Modelica.Media.Air.DryAirNasa,
    VAir=609.0,
    alphaExt=7.699999999999999,
    alphaWin=2.7,
    gWin=0.0,
    ratioWinConRad=0.07,
    nExt=1,
    RExt={0.00252613258466},
    CExt={6536815.0306},
    alphaRad=2.944234404536862,
    AInt=34.8,
    alphaInt=16.349999999999998,
    nInt=1,
    RInt={0.0017479024556},
    CInt={8868769.35396},
    RWin=0.0853801169591,
    RExtRem=0.053528301214,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    extWallRC(thermCapExt(each der_T(fixed=true))),
    intWallRC(thermCapInt(each der_T(fixed=true))),
    nOrientations=2,
    AWin={5.4,0.0},
    ATransparent={5.4,0.0},
    AExt={23.44,10.5}) "Thermal zone"
    annotation (Placement(transformation(extent={{-78,-114},{-30,-78}})));
  Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp2(
    n=2,
    wfGro=0.25326050645352904,
    wfWall={0.5614460024723372, 0.18529349107413376},
    wfWin={1.0, 0.0},
    withLongwave=true,
    aExt=0.7000000000000002,
    alphaWallOut=20.0,
    alphaRad=5.0,
    alphaWinOut=20.0,
    TGro=286.15) "Computes equivalent air temperature"
    annotation (Placement(transformation(extent={{-146,-126},{-126,-106}})));
  Modelica.Blocks.Math.Add solRad2[
                                  2]
    "Sums up solar radiation of both directions"
    annotation (Placement(transformation(extent={{-160,-106},{-150,-96}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature4
    "Prescribed temperature for exterior walls outdoor surface temperature"
    annotation (Placement(transformation(extent={{-114,-118},{-102,-106}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature5
    "Prescribed temperature for windows outdoor surface temperature"
    annotation (Placement(transformation(extent={{-114,-98},{-102,-86}})));
  Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin2
    "Outdoor convective heat transfer of windows"
    annotation (Placement(transformation(extent={{-84,-96},{-94,-86}})));
  Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall2
    "Outdoor convective heat transfer of walls"
    annotation (Placement(transformation(extent={{-86,-106},{-96,-116}})));
  Modelica.Blocks.Sources.Constant const2[
                                         2](each k=0)
    "Sets sunblind signal to zero (open)"
    annotation (Placement(transformation(extent={{-142,-98},{-136,-92}})));
  Modelica.Blocks.Sources.Constant alphaWall2(
                                             k=25.0
  *44.44)
    "Outdoor coefficient of heat transfer for walls"
    annotation (Placement(
    transformation(
    extent={{-4,-4},{4,4}},
    rotation=90,
    origin={-92,-128})));
  Modelica.Blocks.Sources.Constant alphaWin2(
                                            k=135.0)
    "Outdoor coefficient of heat transfer for windows"
    annotation (Placement(
    transformation(
    extent={{4,-4},{-4,4}},
    rotation=90,
    origin={-90,-74})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsRad2
    "Radiative heat flow of persons"
    annotation (Placement(transformation(extent={{-74,-154},{-54,-134}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsConv2
    "Convective heat flow of persons"
    annotation (Placement(transformation(extent={{-74,-174},{-54,-154}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow machinesConv2
    "Convective heat flow of machines"
    annotation (Placement(transformation(extent={{-74,-196},{-54,-176}})));
  Modelica.Blocks.Sources.CombiTimeTable internalGains2(
    table=[0,0,0,0; 3600,0,0,0; 7200,0,0,0; 10800,0,0,0; 14400,0,0,0; 18000,0,0,
        0; 21600,0,0,0; 25200,0,0,0; 25200,80,80,200; 28800,80,80,200; 32400,80,
        80,200; 36000,80,80,200; 39600,80,80,200; 43200,80,80,200; 46800,80,80,200;
        50400,80,80,200; 54000,80,80,200; 57600,80,80,200; 61200,80,80,200; 61200,
        0,0,0; 64800,0,0,0; 72000,0,0,0; 75600,0,0,0; 79200,0,0,0; 82800,0,0,0;
        86400,0,0,0],
    columns={2,3,4},
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic) "Table with profiles for persons (radiative and convective) and machines
    (convective)"
    annotation (Placement(transformation(extent={{-116,-172},{-100,-156}})));
equation
  connect(eqAirTemp.TEqAirWin,prescribedTemperature1. T)
    annotation (Line(
    points={{111,113.8},{114,113.8},{114,134},{120.8,134}},
                                                   color={0,0,127}));
  connect(eqAirTemp.TEqAir,prescribedTemperature. T)
    annotation (Line(points={{111,110},{118,110},{118,114},{120.8,114}},
    color={0,0,127}));
  connect(internalGains.y[1],personsRad. Q_flow)
    annotation (Line(points={{136.8,62},{142,62},{142,82},{162,82}},
                                      color={0,0,127}));
  connect(internalGains.y[2],personsConv. Q_flow)
    annotation (Line(points={{136.8,62},{150,62},{162,62}}, color={0,0,127}));
  connect(internalGains.y[3],machinesConv. Q_flow)
    annotation (Line(points={{136.8,62},{142,62},{142,40},{162,40}},
                                      color={0,0,127}));
  connect(const.y,eqAirTemp. sunblind)
    annotation (Line(points={{100.3,131},{102,131},{102,122},{100,122}},
    color={0,0,127}));
  connect(HDifTil.HSkyDifTil,corGDoublePane. HSkyDifTil)
    annotation (Line(
    points={{67,150},{86,150},{108,150},{108,180},{118,180}},
                                                       color={0,0,127}));
  connect(HDirTil.H,corGDoublePane. HDirTil)
    annotation (Line(points={{67,176},{104,176},{104,184},{118,184}},
    color={0,0,127}));
  connect(HDirTil.H,solRad. u1)
    annotation (Line(points={{67,176},{72,176},{72,128},{75,128}},
                   color={0,0,127}));
  connect(HDirTil.inc,corGDoublePane. inc)
    annotation (Line(points={{67,172},{118,172}},     color={0,0,127}));
  connect(HDifTil.H,solRad. u2)
    annotation (Line(points={{67,144},{70,144},{70,122},{75,122}},
                 color={0,0,127}));
  connect(HDifTil.HGroDifTil,corGDoublePane. HGroDifTil)
    annotation (Line(
    points={{67,138},{110,138},{110,176},{118,176}},
                                              color={0,0,127}));
  connect(solRad.y,eqAirTemp. HSol)
    annotation (Line(points={{86.5,125},{88,125},{88,116}},
    color={0,0,127}));
  connect(personsRad.port, livingRoom.intGainsRad) annotation (Line(points={{
          182,82},{198,82},{214,82},{214,138},{206,138}}, color={191,0,0}));
  connect(thermalConductorWin.solid, livingRoom.window) annotation (Line(points
        ={{152,135},{154,135},{154,134},{158,134}}, color={191,0,0}));
  connect(prescribedTemperature1.port,thermalConductorWin. fluid)
    annotation (Line(points={{134,134},{142,134},{142,135}},
                                                       color={191,0,0}));
  connect(livingRoom.extWall, thermalConductorWall.solid) annotation (Line(
        points={{158,126},{154,126},{154,115},{150,115}}, color={191,0,0}));
  connect(thermalConductorWall.fluid,prescribedTemperature. port)
    annotation (Line(points={{140,115},{138,115},{138,114},{134,114}},
                                                           color={191,0,0}));
  connect(alphaWall.y,thermalConductorWall. Gc)
    annotation (Line(points={{144,102.4},{144,110},{145,110}},
                                                          color={0,0,127}));
  connect(alphaWin.y,thermalConductorWin. Gc)
    annotation (Line(points={{146,147.6},{146,140},{147,140}},
                                                         color={0,0,127}));
  connect(machinesConv.port, livingRoom.intGainsConv) annotation (Line(points={
          {182,40},{196,40},{210,40},{210,134},{206,134}}, color={191,0,0}));
  connect(personsConv.port, livingRoom.intGainsConv) annotation (Line(points={{
          182,62},{210,62},{210,134},{206,134}}, color={191,0,0}));
  connect(corGDoublePane.solarRadWinTrans, livingRoom.solRad) annotation (Line(
        points={{141,178},{148,178},{154,178},{154,145},{157,145}}, color={0,0,
          127}));
  connect(eqAirTemp1.TEqAirWin, prescribedTemperature3.T) annotation (Line(
        points={{109,-112.2},{112,-112.2},{112,-92},{118.8,-92}}, color={0,0,
          127}));
  connect(eqAirTemp1.TEqAir, prescribedTemperature2.T) annotation (Line(points=
          {{109,-116},{116,-116},{116,-112},{118.8,-112}}, color={0,0,127}));
  connect(weaDat1.weaBus, weaBus1) annotation (Line(
      points={{6,-6},{38,-6},{38,-94},{28,-94},{28,-100},{29,-100},{29,-106}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(weaBus1.TDryBul, eqAirTemp1.TDryBul) annotation (Line(
      points={{29,-106},{29,-114},{74,-114},{74,-122},{86,-122}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(internalGains1.y[1], personsRad1.Q_flow) annotation (Line(points={{
          134.8,-164},{140,-164},{140,-144},{160,-144}}, color={0,0,127}));
  connect(internalGains1.y[2], personsConv1.Q_flow) annotation (Line(points={{
          134.8,-164},{148,-164},{160,-164}}, color={0,0,127}));
  connect(internalGains1.y[3], machinesConv1.Q_flow) annotation (Line(points={{
          134.8,-164},{140,-164},{140,-186},{160,-186}}, color={0,0,127}));
  connect(const1.y, eqAirTemp1.sunblind) annotation (Line(points={{98.3,-95},{
          100,-95},{100,-104},{98,-104}}, color={0,0,127}));
  connect(HDifTil1.HSkyDifTil, corGDoublePane1.HSkyDifTil) annotation (Line(
        points={{65,-76},{84,-76},{106,-76},{106,-46},{116,-46}}, color={0,0,
          127}));
  connect(HDirTil1.H, corGDoublePane1.HDirTil) annotation (Line(points={{65,-50},
          {102,-50},{102,-42},{116,-42}}, color={0,0,127}));
  connect(HDirTil1.H, solRad1.u1) annotation (Line(points={{65,-50},{70,-50},{
          70,-98},{73,-98}}, color={0,0,127}));
  connect(HDirTil1.inc, corGDoublePane1.inc)
    annotation (Line(points={{65,-54},{116,-54}}, color={0,0,127}));
  connect(HDifTil1.H, solRad1.u2) annotation (Line(points={{65,-82},{68,-82},{
          68,-104},{73,-104}}, color={0,0,127}));
  connect(HDifTil1.HGroDifTil, corGDoublePane1.HGroDifTil) annotation (Line(
        points={{65,-88},{108,-88},{108,-50},{116,-50}}, color={0,0,127}));
  connect(solRad1.y, eqAirTemp1.HSol) annotation (Line(points={{84.5,-101},{86,
          -101},{86,-110}}, color={0,0,127}));
  connect(weaDat1.weaBus, HDifTil1[1].weaBus) annotation (Line(
      points={{6,-6},{38,-6},{38,-82},{44,-82}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat1.weaBus, HDirTil1[1].weaBus) annotation (Line(
      points={{6,-6},{44,-6},{44,-50}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat1.weaBus, HDifTil1[2].weaBus) annotation (Line(
      points={{6,-6},{38,-6},{38,-82},{44,-82}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat1.weaBus, HDirTil1[2].weaBus) annotation (Line(
      points={{6,-6},{44,-6},{44,-50}},
      color={255,204,51},
      thickness=0.5));
  connect(personsRad1.port, bedRoom.intGainsRad) annotation (Line(points={{180,
          -144},{196,-144},{212,-144},{212,-88},{204,-88}}, color={191,0,0}));
  connect(thermalConductorWin1.solid, bedRoom.window) annotation (Line(points={
          {150,-91},{152,-91},{152,-92},{156,-92}}, color={191,0,0}));
  connect(prescribedTemperature3.port, thermalConductorWin1.fluid)
    annotation (Line(points={{132,-92},{140,-92},{140,-91}}, color={191,0,0}));
  connect(bedRoom.extWall, thermalConductorWall1.solid) annotation (Line(points
        ={{156,-100},{152,-100},{152,-111},{148,-111}}, color={191,0,0}));
  connect(thermalConductorWall1.fluid, prescribedTemperature2.port) annotation
    (Line(points={{138,-111},{136,-111},{136,-112},{132,-112}}, color={191,0,0}));
  connect(alphaWall1.y, thermalConductorWall1.Gc) annotation (Line(points={{142,
          -123.6},{142,-116},{143,-116}}, color={0,0,127}));
  connect(alphaWin1.y, thermalConductorWin1.Gc) annotation (Line(points={{144,
          -78.4},{144,-86},{145,-86}}, color={0,0,127}));
  connect(weaBus1.TBlaSky, eqAirTemp1.TBlaSky) annotation (Line(
      points={{29,-106},{54,-106},{54,-110},{80,-110},{80,-116},{86,-116}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(machinesConv1.port, bedRoom.intGainsConv) annotation (Line(points={{
          180,-186},{194,-186},{208,-186},{208,-92},{204,-92}}, color={191,0,0}));
  connect(personsConv1.port, bedRoom.intGainsConv) annotation (Line(points={{
          180,-164},{208,-164},{208,-92},{204,-92}}, color={191,0,0}));
  connect(corGDoublePane1.solarRadWinTrans, bedRoom.solRad) annotation (Line(
        points={{139,-48},{146,-48},{152,-48},{152,-81},{155,-81}}, color={0,0,
          127}));
  connect(eqAirTemp2.TEqAirWin, prescribedTemperature5.T) annotation (Line(
        points={{-125,-112.2},{-122,-112.2},{-122,-92},{-115.2,-92}}, color={0,
          0,127}));
  connect(eqAirTemp2.TEqAir, prescribedTemperature4.T) annotation (Line(points=
          {{-125,-116},{-118,-116},{-118,-112},{-115.2,-112}}, color={0,0,127}));
  connect(internalGains2.y[1], personsRad2.Q_flow) annotation (Line(points={{
          -99.2,-164},{-94,-164},{-94,-144},{-74,-144}}, color={0,0,127}));
  connect(internalGains2.y[2], personsConv2.Q_flow) annotation (Line(points={{
          -99.2,-164},{-86,-164},{-74,-164}}, color={0,0,127}));
  connect(internalGains2.y[3], machinesConv2.Q_flow) annotation (Line(points={{
          -99.2,-164},{-94,-164},{-94,-186},{-74,-186}}, color={0,0,127}));
  connect(const2.y, eqAirTemp2.sunblind) annotation (Line(points={{-135.7,-95},
          {-134,-95},{-134,-104},{-136,-104}}, color={0,0,127}));
  connect(HDifTil2.HSkyDifTil, corGDoublePane2.HSkyDifTil) annotation (Line(
        points={{-169,-76},{-150,-76},{-128,-76},{-128,-46},{-118,-46}}, color=
          {0,0,127}));
  connect(HDirTil2.H, corGDoublePane2.HDirTil) annotation (Line(points={{-169,
          -50},{-132,-50},{-132,-42},{-118,-42}}, color={0,0,127}));
  connect(HDirTil2.H, solRad2.u1) annotation (Line(points={{-169,-50},{-164,-50},
          {-164,-98},{-161,-98}}, color={0,0,127}));
  connect(HDirTil2.inc, corGDoublePane2.inc)
    annotation (Line(points={{-169,-54},{-118,-54}}, color={0,0,127}));
  connect(HDifTil2.H, solRad2.u2) annotation (Line(points={{-169,-82},{-166,-82},
          {-166,-104},{-161,-104}}, color={0,0,127}));
  connect(HDifTil2.HGroDifTil, corGDoublePane2.HGroDifTil) annotation (Line(
        points={{-169,-88},{-126,-88},{-126,-50},{-118,-50}}, color={0,0,127}));
  connect(solRad2.y, eqAirTemp2.HSol) annotation (Line(points={{-149.5,-101},{
          -148,-101},{-148,-110}}, color={0,0,127}));
  connect(personsRad2.port, sanitaryRooms.intGainsRad) annotation (Line(points=
          {{-54,-144},{-38,-144},{-22,-144},{-22,-88},{-30,-88}}, color={191,0,
          0}));
  connect(thermalConductorWin2.solid, sanitaryRooms.window) annotation (Line(
        points={{-84,-91},{-82,-91},{-82,-92},{-78,-92}}, color={191,0,0}));
  connect(prescribedTemperature5.port, thermalConductorWin2.fluid) annotation (
      Line(points={{-102,-92},{-94,-92},{-94,-91}}, color={191,0,0}));
  connect(sanitaryRooms.extWall, thermalConductorWall2.solid) annotation (Line(
        points={{-78,-100},{-82,-100},{-82,-111},{-86,-111}}, color={191,0,0}));
  connect(thermalConductorWall2.fluid, prescribedTemperature4.port) annotation
    (Line(points={{-96,-111},{-98,-111},{-98,-112},{-102,-112}}, color={191,0,0}));
  connect(alphaWall2.y, thermalConductorWall2.Gc) annotation (Line(points={{-92,
          -123.6},{-92,-116},{-91,-116}}, color={0,0,127}));
  connect(alphaWin2.y, thermalConductorWin2.Gc) annotation (Line(points={{-90,
          -78.4},{-90,-86},{-89,-86}}, color={0,0,127}));
  connect(machinesConv2.port, sanitaryRooms.intGainsConv) annotation (Line(
        points={{-54,-186},{-40,-186},{-26,-186},{-26,-92},{-30,-92}}, color={
          191,0,0}));
  connect(personsConv2.port, sanitaryRooms.intGainsConv) annotation (Line(
        points={{-54,-164},{-26,-164},{-26,-92},{-30,-92}}, color={191,0,0}));
  connect(corGDoublePane2.solarRadWinTrans, sanitaryRooms.solRad) annotation (
      Line(points={{-95,-48},{-88,-48},{-82,-48},{-82,-81},{-79,-81}}, color={0,
          0,127}));
  connect(weaDat1.weaBus, HDirTil2[1].weaBus) annotation (Line(
      points={{6,-6},{38,-6},{38,-26},{-206,-26},{-206,-50},{-190,-50}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat1.weaBus, HDirTil2[2].weaBus) annotation (Line(
      points={{6,-6},{38,-6},{38,-26},{-206,-26},{-206,-50},{-190,-50}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat1.weaBus, HDifTil2[1].weaBus) annotation (Line(
      points={{6,-6},{38,-6},{38,-26},{-206,-26},{-206,-82},{-190,-82}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat1.weaBus, HDifTil2[2].weaBus) annotation (Line(
      points={{6,-6},{38,-6},{38,-26},{-206,-26},{-206,-82},{-190,-82}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat1.weaBus, HDifTil[1].weaBus) annotation (Line(
      points={{6,-6},{40,-6},{40,90},{20,90},{20,144},{46,144}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat1.weaBus, HDifTil[2].weaBus) annotation (Line(
      points={{6,-6},{24,-6},{40,-6},{40,90},{20,90},{20,144},{46,144}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat1.weaBus, HDifTil[3].weaBus) annotation (Line(
      points={{6,-6},{24,-6},{40,-6},{40,90},{20,90},{20,144},{46,144}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat1.weaBus, HDirTil[1].weaBus) annotation (Line(
      points={{6,-6},{24,-6},{40,-6},{40,90},{20,90},{20,176},{46,176}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat1.weaBus, HDirTil[2].weaBus) annotation (Line(
      points={{6,-6},{40,-6},{40,90},{20,90},{20,176},{46,176}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat1.weaBus, HDirTil[3].weaBus) annotation (Line(
      points={{6,-6},{24,-6},{40,-6},{40,90},{20,90},{20,176},{46,176}},
      color={255,204,51},
      thickness=0.5));
  connect(weaBus1.TBlaSky, eqAirTemp2.TBlaSky) annotation (Line(
      points={{29,-106},{38,-106},{38,-26},{-206,-26},{-206,-116},{-148,-116}},

      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(weaBus1.TDryBul, eqAirTemp2.TDryBul) annotation (Line(
      points={{29,-106},{38,-106},{38,-26},{-206,-26},{-206,-122},{-148,-122}},

      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(weaBus1.TBlaSky, eqAirTemp.TBlaSky) annotation (Line(
      points={{29,-106},{40,-106},{40,110},{88,110}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(weaBus1.TDryBul, eqAirTemp.TDryBul) annotation (Line(
      points={{29,-106},{40,-106},{40,104},{88,104}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-240,
            -240},{240,240}})), Diagram(coordinateSystem(preserveAspectRatio=
            false, extent={{-240,-240},{240,240}})));
end A1NorthTemplate;
