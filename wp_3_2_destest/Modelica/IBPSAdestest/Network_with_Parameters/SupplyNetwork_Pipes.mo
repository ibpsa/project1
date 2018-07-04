within IBPSAdestest.Network_with_Parameters;
model SupplyNetwork_Pipes "Only supply line is modelled"
  extends Modelica.Icons.Example;
  extends BaseClasses.BuildingLocationsDouble;
  extends BaseClasses.PipeLocationsReturn(
    pipeSD3a(nPorts=1),
    pipeSD6b(nPorts=1),
    pipeSD11c(nPorts=1),
    pipeSD15d(nPorts=1),
    pipeSD13h(nPorts=1),
    pipeSD12g(nPorts=1),
    pipeSD7f(nPorts=1),
    pipeSD4e(nPorts=1),
    pipeSD2a(nPorts=1),
    pipeSD5b(nPorts=1),
    pipeSD10c(nPorts=1),
    pipeSD16d(nPorts=1),
    pipeSD14h(nPorts=1),
    pipeSD9g(nPorts=1),
    pipeSD8f(nPorts=1),
    pipeSD1e(nPorts=1));
  extends BaseClasses.PipeLocationsSupply(
    pipeeSD4(nPorts=1),
    pipefSD7(nPorts=1),
    pipegSD12(nPorts=1),
    pipehSD13(nPorts=1),
    pipedSD15(nPorts=1),
    pipecSD11(nPorts=1),
    pipebSD6(nPorts=1),
    pipeaSD3(nPorts=1),
    pipeaSD2(nPorts=1),
    pipebSD5(nPorts=1),
    pipecSD10(nPorts=1),
    pipedSD16(nPorts=1),
    pipehSD14(nPorts=1),
    pipegSD9(nPorts=1),
    pipefSD8(nPorts=1),
    pipeeSD1(nPorts=1));

  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=5;

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    tableName="data",
    columns=2:18,
    fileName="C:/Users/kfi/Documents/gitrepos/gitrepos/wp_3_2_destest/Modelica/IBPSAdestest/Resources/Data/DestestHeatDemand/heat_profiles.txt")
    annotation (Placement(transformation(extent={{-160,-116},{-140,-96}})));
  IBPSA.Fluid.HeatExchangers.HeaterCooler_u hea(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal,
    dp_nominal=200,
    Q_flow_nominal=16)    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-2,-116})));
  IBPSA.Fluid.Sources.FixedBoundary bou(redeclare package Medium =
        IBPSA.Media.Water, nPorts=1)
    annotation (Placement(transformation(extent={{12,-70},{32,-50}})));
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
protected
  Modelica.Blocks.Interfaces.RealOutput y1[size(combiTimeTable.y, 1)]
                     "Connector of Real output signals"
    annotation (Placement(transformation(extent={{-1,-73},{0,-74}})));
equation
  connect(SimpleDistrict_3.QDem,y1 [3]) annotation (Line(points={{-30,160},{-30,
          176},{-0.5,176},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_1.QDem,y1 [1]) annotation (Line(points={{30,160},{30,
          176},{-0.5,176},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_6.QDem,y1 [6]) annotation (Line(points={{-30,100},{-30,
          112},{-0.5,112},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_8.QDem,y1 [8]) annotation (Line(points={{30,100},{30,
          100},{30,112},{-0.5,112},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_11.QDem,y1 [11]) annotation (Line(points={{-30,40},{
          -30,52},{-0.5,52},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_9.QDem,y1 [9]) annotation (Line(points={{30,40},{30,52},
          {-0.5,52},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_15.QDem,y1 [15]) annotation (Line(points={{-30,-20},{
          -32,-20},{-32,0},{-0.5,0},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_14.QDem,y1 [14]) annotation (Line(points={{30,-20},{30,
          0},{-0.5,0},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_4.QDem,y1 [4]) annotation (Line(points={{170,160},{170,
          174},{200,174},{200,-73.5},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_7.QDem,y1 [7]) annotation (Line(points={{170,100},{170,
          112},{200,112},{200,-73.5},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_12.QDem,y1 [12]) annotation (Line(points={{170,40},{170,
          50},{200,50},{200,-73.5},{-0.5,-73.5}},     color={0,0,127}));
  connect(SimpleDistrict_13.QDem,y1 [13]) annotation (Line(points={{170,-20},{170,
          -8},{200,-8},{200,-73.5},{-0.5,-73.5}},     color={0,0,127}));
  connect(pipeSD3a.ports_b[1], SimpleDistrict_3.port_b) annotation (Line(points=
         {{-50,146},{-46,146},{-46,145.8},{-40,145.8}}, color={0,127,255}));
  connect(pipeSD6b.ports_b[1], SimpleDistrict_6.port_b) annotation (Line(points=
         {{-50,86},{-46,86},{-46,85.8},{-40,85.8}}, color={0,127,255}));
  connect(pipeSD11c.ports_b[1], SimpleDistrict_11.port_b) annotation (Line(
        points={{-50,26},{-46,26},{-46,25.8},{-40,25.8}}, color={0,127,255}));
  connect(pipeSD15d.ports_b[1], SimpleDistrict_15.port_b) annotation (Line(
        points={{-50,-34},{-46,-34},{-46,-34.2},{-40,-34.2}}, color={0,127,255}));
  connect(pipeSD13h.ports_b[1], SimpleDistrict_13.port_b) annotation (Line(
        points={{150,-34},{156,-34},{156,-34.2},{160,-34.2}}, color={0,127,255}));
  connect(pipeSD12g.ports_b[1], SimpleDistrict_12.port_b) annotation (Line(
        points={{150,26},{156,26},{156,25.8},{160,25.8}}, color={0,127,255}));
  connect(pipeSD7f.ports_b[1], SimpleDistrict_7.port_b) annotation (Line(points={{150,86},
          {156,86},{156,85.8},{160,85.8}},          color={0,127,255}));
  connect(pipeSD4e.ports_b[1], SimpleDistrict_4.port_b) annotation (Line(points=
         {{150,146},{156,146},{156,145.8},{160,145.8}}, color={0,127,255}));
  connect(pipedSD15.ports_b[1], SimpleDistrict_15.port_a)
    annotation (Line(points={{-50,-26},{-40,-26}}, color={0,127,255}));
  connect(pipecSD11.ports_b[1], SimpleDistrict_11.port_a)
    annotation (Line(points={{-50,34},{-40,34}}, color={0,127,255}));
  connect(pipebSD6.ports_b[1], SimpleDistrict_6.port_a)
    annotation (Line(points={{-50,94},{-40,94}}, color={0,127,255}));
  connect(pipeaSD3.ports_b[1], SimpleDistrict_3.port_a)
    annotation (Line(points={{-50,154},{-40,154}}, color={0,127,255}));
  connect(pipehSD13.ports_b[1], SimpleDistrict_13.port_a)
    annotation (Line(points={{150,-26},{160,-26}}, color={0,127,255}));
  connect(pipegSD12.ports_b[1], SimpleDistrict_12.port_a)
    annotation (Line(points={{150,34},{160,34}}, color={0,127,255}));
  connect(pipefSD7.ports_b[1], SimpleDistrict_7.port_a) annotation (Line(points={{150,94},
          {160,94}},                            color={0,127,255}));
  connect(pipeeSD4.ports_b[1], SimpleDistrict_4.port_a)
    annotation (Line(points={{150,154},{160,154}}, color={0,127,255}));
  connect(SimpleDistrict_2.port_a, pipeaSD2.ports_b[1])
    annotation (Line(points={{-160,154},{-150,154}}, color={0,127,255}));
  connect(SimpleDistrict_2.port_b, pipeSD2a.ports_b[1]) annotation (Line(points=
         {{-160,145.8},{-156,145.8},{-156,146},{-150,146}}, color={0,127,255}));
  connect(SimpleDistrict_5.port_b, pipeSD5b.ports_b[1]) annotation (Line(points=
         {{-160,85.8},{-154,85.8},{-154,86},{-150,86}}, color={0,127,255}));
  connect(SimpleDistrict_5.port_a, pipebSD5.ports_b[1])
    annotation (Line(points={{-160,94},{-150,94}}, color={0,127,255}));
  connect(SimpleDistrict_10.port_b, pipeSD10c.ports_b[1]) annotation (Line(
        points={{-160,25.8},{-156,25.8},{-156,26},{-150,26}}, color={0,127,255}));
  connect(SimpleDistrict_10.port_a, pipecSD10.ports_b[1])
    annotation (Line(points={{-160,34},{-150,34}}, color={0,127,255}));
  connect(SimpleDistrict_16.port_b, pipeSD16d.ports_b[1]) annotation (Line(
        points={{-160,-34.2},{-156,-34.2},{-156,-34},{-150,-34}}, color={0,127,255}));
  connect(SimpleDistrict_16.port_a, pipedSD16.ports_b[1])
    annotation (Line(points={{-160,-26},{-150,-26}}, color={0,127,255}));
  connect(SimpleDistrict_14.port_a, pipehSD14.ports_b[1])
    annotation (Line(points={{40,-26},{50,-26}}, color={0,127,255}));
  connect(SimpleDistrict_14.port_b, pipeSD14h.ports_b[1]) annotation (Line(
        points={{40,-34.2},{46,-34.2},{46,-34},{50,-34}}, color={0,127,255}));
  connect(SimpleDistrict_9.port_a, pipegSD9.ports_b[1])
    annotation (Line(points={{40,34},{50,34}}, color={0,127,255}));
  connect(SimpleDistrict_9.port_b, pipeSD9g.ports_b[1]) annotation (Line(points=
         {{40,25.8},{46,25.8},{46,26},{50,26}}, color={0,127,255}));
  connect(SimpleDistrict_8.port_b, pipeSD8f.ports_b[1]) annotation (Line(points=
         {{40,85.8},{46,85.8},{46,86},{50,86}}, color={0,127,255}));
  connect(SimpleDistrict_8.port_a, pipefSD8.ports_b[1])
    annotation (Line(points={{40,94},{50,94}}, color={0,127,255}));
  connect(SimpleDistrict_1.port_a, pipeeSD1.ports_b[1])
    annotation (Line(points={{40,154},{50,154}}, color={0,127,255}));
  connect(SimpleDistrict_1.port_b, pipeSD1e.ports_b[1]) annotation (Line(points=
         {{40,145.8},{46,145.8},{46,146},{50,146}}, color={0,127,255}));
  connect(combiTimeTable.y[2], SimpleDistrict_2.QDem) annotation (Line(points={{-139,
          -106},{-100,-106},{-100,-74},{-198,-74},{-198,170},{-170,170},{-170,
          160}},      color={0,0,127}));
  connect(combiTimeTable.y[5], SimpleDistrict_5.QDem) annotation (Line(points={{-139,
          -106},{-100,-106},{-100,-74},{-198,-74},{-198,112},{-170,112},{-170,
          100}},                  color={0,0,127}));
  connect(combiTimeTable.y[10], SimpleDistrict_10.QDem) annotation (Line(points={{-139,
          -106},{-100,-106},{-100,-74},{-198,-74},{-198,52},{-170,52},{-170,40}},
                     color={0,0,127}));
  connect(combiTimeTable.y[16], SimpleDistrict_16.QDem) annotation (Line(points={{-139,
          -106},{-100,-106},{-100,-74},{-198,-74},{-198,-8},{-170,-8},{-170,-20}},
                      color={0,0,127}));
  connect(combiTimeTable.y, y1) annotation (Line(points={{-139,-106},{-100,-106},
          {-100,-73.5},{-0.5,-73.5}}, color={0,0,127}));
  connect(hea.u, SimpleDistrict_2.QDem) annotation (Line(points={{-8,-128},{-54,
          -128},{-54,-120},{-100,-120},{-100,-74},{-198,-74},{-198,170},{-170,170},
          {-170,160}}, color={0,0,127}));
  connect(hea.port_b,plugFlowPipe_IBPSA4. port_a)
    annotation (Line(points={{-2,-106},{-2,-100}}, color={0,127,255}));
  connect(hea.port_a,plugFlowPipe_IBPSA9. port_a)
    annotation (Line(points={{-2,-126},{-2,-136}}, color={0,127,255}));
  connect(pipehi.port_a, plugFlowPipe_IBPSA9.ports_b[1]) annotation (Line(
        points={{106,-54},{106,-156},{-1.55431e-15,-156}},           color={0,127,
          255}));
  connect(pipeih.port_a, plugFlowPipe_IBPSA4.ports_b[1]) annotation (Line(
        points={{94,-46},{94,-80},{8.88178e-16,-80}},          color={0,127,255}));
  connect(pipeih.port_a, bou.ports[1])
    annotation (Line(points={{94,-46},{32,-46},{32,-60}}, color={0,127,255}));
  connect(plugFlowPipe_IBPSA9.ports_b[2], pipedi.port_a) annotation (Line(
        points={{-4,-156},{-94,-156},{-94,-54}}, color={0,127,255}));
  connect(pipeid.port_a, plugFlowPipe_IBPSA4.ports_b[2]) annotation (Line(
        points={{-106,-46},{-106,-80},{-4,-80}}, color={0,127,255}));
  annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
        coordinateSystem(extent={{-100,-100},{100,100}})));
end SupplyNetwork_Pipes;
