within IBPSAdestest_Comparison.Network_with_Parameters;
model SupplyNetwork_Pipes "Only supply line is modelled"
  extends Modelica.Icons.Example;
  extends BaseClasses.BuildingLocationsDouble;

  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=5;
  parameter Modelica.SIunits.Pressure dP=100;

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    tableName="data",
    columns=2:18,
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://IBPSAdestest/Resources/Data/DestestHeatDemand/heat_profiles.txt"))
    annotation (Placement(transformation(extent={{-160,-114},{-140,-94}})));

  IBPSA.Fluid.HeatExchangers.HeaterCooler_u hea(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal,
    dp_nominal=200,
    Q_flow_nominal=16)    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-2,-116})));
  IBPSA.Fluid.Sources.FixedBoundary bou(          redeclare package Medium =
        IBPSA.Media.Water, nPorts=1)
    annotation (Placement(transformation(extent={{42,-126},{62,-106}})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA(
    nPorts=2,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-112,144})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA1(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-112,84})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA2(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-112,24})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA3(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-112,-36})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA4(
    nPorts=2,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-2,-90})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA5(
    nPorts=2,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={100,144})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA6(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={100,84})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA7(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={100,24})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA8(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={100,-36})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA9(
    nPorts=2,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={-2,-146})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA10(
    nPorts=2,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={128,136})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA11(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={128,76})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA12(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={128,16})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA13(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={128,-44})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA14(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-70,-44})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA15(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-70,16})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA16(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-70,76})));
  BaseClasses.PlugFlowPipe_IBPSA plugFlowPipe_IBPSA17(
    nPorts=2,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-70,136})));
protected
  Modelica.Blocks.Interfaces.RealOutput y1[size(combiTimeTable.y, 1)]
                     "Connector of Real output signals"
    annotation (Placement(transformation(extent={{-1,-73},{0,-74}})));
equation
  connect(combiTimeTable.y[2], SimpleDistrict_2.QDem) annotation (Line(points={{-139,
          -104},{-100,-104},{-100,-74},{-198,-74},{-198,170},{-170,170},{-170,160}},
                      color={0,0,127}));
  connect(combiTimeTable.y[5], SimpleDistrict_5.QDem) annotation (Line(points={{-139,
          -104},{-100,-104},{-100,-74},{-198,-74},{-198,112},{-170,112},{-170,100}},
                                  color={0,0,127}));
  connect(combiTimeTable.y[10], SimpleDistrict_10.QDem) annotation (Line(points={{-139,
          -104},{-100,-104},{-100,-74},{-198,-74},{-198,52},{-170,52},{-170,40}},
                     color={0,0,127}));
  connect(combiTimeTable.y[16], SimpleDistrict_16.QDem) annotation (Line(points={{-139,
          -104},{-100,-104},{-100,-74},{-198,-74},{-198,-8},{-170,-8},{-170,-20}},
                      color={0,0,127}));
  connect(combiTimeTable.y, y1) annotation (Line(points={{-139,-104},{-100,-104},
          {-100,-73.5},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_3.QDem, y1[3]) annotation (Line(points={{-30,160},{-30,
          176},{-0.5,176},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_1.QDem, y1[1]) annotation (Line(points={{30,160},{30,
          176},{-0.5,176},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_6.QDem, y1[6]) annotation (Line(points={{-30,100},{-30,
          112},{-0.5,112},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_8.QDem, y1[8]) annotation (Line(points={{30,100},{30,
          100},{30,112},{-0.5,112},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_11.QDem, y1[11]) annotation (Line(points={{-30,40},{
          -30,52},{-0.5,52},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_9.QDem, y1[9]) annotation (Line(points={{30,40},{30,52},
          {-0.5,52},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_15.QDem, y1[15]) annotation (Line(points={{-30,-20},{
          -32,-20},{-32,0},{-0.5,0},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_14.QDem, y1[14]) annotation (Line(points={{30,-20},{30,
          0},{-0.5,0},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_4.QDem, y1[4]) annotation (Line(points={{170,160},{170,
          174},{202,174},{202,-73.5},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_7.QDem, y1[7]) annotation (Line(points={{170,98},{170,
          112},{202,112},{202,-73.5},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_12.QDem, y1[12]) annotation (Line(points={{170,40},{
          170,50},{202,50},{202,-73.5},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_13.QDem, y1[13]) annotation (Line(points={{170,-20},{
          170,-8},{202,-8},{202,-73.5},{-0.5,-73.5}}, color={0,0,127}));
  connect(hea.u, SimpleDistrict_2.QDem) annotation (Line(points={{-8,-128},{-54,
          -128},{-54,-120},{-100,-120},{-100,-74},{-198,-74},{-198,170},{-170,170},
          {-170,160}}, color={0,0,127}));
  connect(plugFlowPipe_IBPSA.ports_b[1], SimpleDistrict_2.port_a)
    annotation (Line(points={{-110,154},{-160,154}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA.ports_b[2], SimpleDistrict_3.port_a)
    annotation (Line(points={{-114,154},{-40,154}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA1.ports_b[1], SimpleDistrict_5.port_a)
    annotation (Line(points={{-109.333,94},{-160,94}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA1.ports_b[2], SimpleDistrict_6.port_a)
    annotation (Line(points={{-112,94},{-40,94}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA.port_a, plugFlowPipe_IBPSA1.ports_b[3])
    annotation (Line(points={{-112,134},{-112,94},{-114.667,94}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA1.port_a, plugFlowPipe_IBPSA2.ports_b[1])
    annotation (Line(points={{-112,74},{-112,34},{-109.333,34}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA2.ports_b[2], SimpleDistrict_10.port_a)
    annotation (Line(points={{-112,34},{-160,34}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA2.ports_b[3], SimpleDistrict_11.port_a)
    annotation (Line(points={{-114.667,34},{-40,34}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA3.ports_b[1], SimpleDistrict_16.port_a)
    annotation (Line(points={{-109.333,-26},{-160,-26}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA3.ports_b[2], SimpleDistrict_15.port_a)
    annotation (Line(points={{-112,-26},{-40,-26}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA3.ports_b[3], plugFlowPipe_IBPSA2.port_a)
    annotation (Line(points={{-114.667,-26},{-112,-26},{-112,14}}, color={0,127,
          255}));
  connect(hea.port_b, plugFlowPipe_IBPSA4.port_a)
    annotation (Line(points={{-2,-106},{-2,-100}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA4.ports_b[1], plugFlowPipe_IBPSA3.port_a)
    annotation (Line(points={{8.88178e-16,-80},{-112,-80},{-112,-46}}, color={0,
          127,255}));
  connect(plugFlowPipe_IBPSA5.ports_b[1], SimpleDistrict_1.port_a)
    annotation (Line(points={{102,154},{40,154}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA5.ports_b[2], SimpleDistrict_4.port_a)
    annotation (Line(points={{98,154},{160,154}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA6.ports_b[1], SimpleDistrict_7.port_a) annotation (
      Line(points={{102.667,94},{132,94},{132,92},{160,92}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA6.ports_b[2], SimpleDistrict_8.port_a)
    annotation (Line(points={{100,94},{40,94}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA5.port_a, plugFlowPipe_IBPSA6.ports_b[3])
    annotation (Line(points={{100,134},{100,94},{97.3333,94}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA7.ports_b[1], SimpleDistrict_12.port_a)
    annotation (Line(points={{102.667,34},{160,34}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA7.ports_b[2], SimpleDistrict_9.port_a)
    annotation (Line(points={{100,34},{40,34}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA6.port_a, plugFlowPipe_IBPSA7.ports_b[3])
    annotation (Line(points={{100,74},{100,34},{97.3333,34}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA7.port_a, plugFlowPipe_IBPSA8.ports_b[1])
    annotation (Line(points={{100,14},{100,-26},{102.667,-26}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA4.ports_b[2], plugFlowPipe_IBPSA8.port_a)
    annotation (Line(points={{-4,-80},{100,-80},{100,-46}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA8.ports_b[2], SimpleDistrict_14.port_a)
    annotation (Line(points={{100,-26},{40,-26}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA8.ports_b[3], SimpleDistrict_13.port_a)
    annotation (Line(points={{97.3333,-26},{160,-26}}, color={0,127,255}));
  connect(hea.port_a, plugFlowPipe_IBPSA9.port_a)
    annotation (Line(points={{-2,-126},{-2,-136}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA10.ports_b[1], SimpleDistrict_4.port_b) annotation (
     Line(points={{130,146},{144,146},{144,145.8},{160,145.8}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA11.ports_b[1], SimpleDistrict_7.port_b) annotation (
     Line(points={{130.667,86},{146,86},{146,83.8},{160,83.8}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA11.ports_b[2], SimpleDistrict_8.port_b) annotation (
     Line(points={{128,86},{84,86},{84,85.8},{40,85.8}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA12.ports_b[1], SimpleDistrict_12.port_b)
    annotation (Line(points={{130.667,26},{144,26},{144,25.8},{160,25.8}},
        color={0,127,255}));
  connect(plugFlowPipe_IBPSA12.ports_b[2], SimpleDistrict_9.port_b) annotation (
     Line(points={{128,26},{84,26},{84,25.8},{40,25.8}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA11.port_a, plugFlowPipe_IBPSA12.ports_b[3])
    annotation (Line(points={{128,66},{128,46},{128,26},{125.333,26}}, color={0,
          127,255}));
  connect(plugFlowPipe_IBPSA10.port_a, plugFlowPipe_IBPSA11.ports_b[3])
    annotation (Line(points={{128,126},{128,106},{128,86},{125.333,86}}, color={
          0,127,255}));
  connect(plugFlowPipe_IBPSA13.ports_b[1], SimpleDistrict_13.port_b)
    annotation (Line(points={{130.667,-34},{144,-34},{144,-34.2},{160,-34.2}},
        color={0,127,255}));
  connect(plugFlowPipe_IBPSA13.ports_b[2], SimpleDistrict_14.port_b)
    annotation (Line(points={{128,-34},{84,-34},{84,-34.2},{40,-34.2}}, color={0,
          127,255}));
  connect(plugFlowPipe_IBPSA12.port_a, plugFlowPipe_IBPSA13.ports_b[3])
    annotation (Line(points={{128,6},{128,-14},{128,-34},{125.333,-34}}, color={
          0,127,255}));
  connect(plugFlowPipe_IBPSA13.port_a, plugFlowPipe_IBPSA9.ports_b[1])
    annotation (Line(points={{128,-54},{128,-156},{-1.55431e-15,-156}}, color={0,
          127,255}));
  connect(plugFlowPipe_IBPSA17.ports_b[1], SimpleDistrict_3.port_b) annotation (
     Line(points={{-68,146},{-56,146},{-56,145.8},{-40,145.8}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA17.ports_b[2], SimpleDistrict_2.port_b) annotation (
     Line(points={{-72,146},{-116,146},{-116,145.8},{-160,145.8}}, color={0,127,
          255}));
  connect(plugFlowPipe_IBPSA16.ports_b[1], SimpleDistrict_6.port_b) annotation (
     Line(points={{-67.3333,86},{-56,86},{-56,85.8},{-40,85.8}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA16.ports_b[2], SimpleDistrict_5.port_b) annotation (
     Line(points={{-70,86},{-116,86},{-116,85.8},{-160,85.8}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA15.ports_b[1], SimpleDistrict_11.port_b)
    annotation (Line(points={{-67.3333,26},{-56,26},{-56,25.8},{-40,25.8}},
        color={0,127,255}));
  connect(plugFlowPipe_IBPSA15.ports_b[2], SimpleDistrict_10.port_b)
    annotation (Line(points={{-70,26},{-118,26},{-118,25.8},{-160,25.8}}, color=
         {0,127,255}));
  connect(plugFlowPipe_IBPSA17.port_a, plugFlowPipe_IBPSA16.ports_b[3])
    annotation (Line(points={{-70,126},{-70,106},{-70,86},{-72.6667,86}}, color=
         {0,127,255}));
  connect(plugFlowPipe_IBPSA16.port_a, plugFlowPipe_IBPSA15.ports_b[3])
    annotation (Line(points={{-70,66},{-70,46},{-70,26},{-72.6667,26}}, color={0,
          127,255}));
  connect(plugFlowPipe_IBPSA14.ports_b[1], SimpleDistrict_15.port_b)
    annotation (Line(points={{-67.3333,-34},{-56,-34},{-56,-34.2},{-40,-34.2}},
        color={0,127,255}));
  connect(plugFlowPipe_IBPSA14.ports_b[2], SimpleDistrict_16.port_b)
    annotation (Line(points={{-70,-34},{-116,-34},{-116,-34.2},{-160,-34.2}},
        color={0,127,255}));
  connect(plugFlowPipe_IBPSA15.port_a, plugFlowPipe_IBPSA14.ports_b[3])
    annotation (Line(points={{-70,6},{-70,-14},{-70,-34},{-72.6667,-34}}, color=
         {0,127,255}));
  connect(plugFlowPipe_IBPSA14.port_a, plugFlowPipe_IBPSA9.ports_b[2])
    annotation (Line(points={{-70,-54},{-70,-158},{-4,-158},{-4,-156}}, color={0,
          127,255}));
  connect(plugFlowPipe_IBPSA10.ports_b[2], SimpleDistrict_1.port_b) annotation (
     Line(points={{126,146},{84,146},{84,145.8},{40,145.8}}, color={0,127,255}));
  connect(bou.ports[1], plugFlowPipe_IBPSA8.port_a) annotation (Line(points={{62,-116},
          {100,-116},{100,-46}},       color={0,127,255}));
  annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
        coordinateSystem(extent={{-100,-100},{100,100}})));
end SupplyNetwork_Pipes;
