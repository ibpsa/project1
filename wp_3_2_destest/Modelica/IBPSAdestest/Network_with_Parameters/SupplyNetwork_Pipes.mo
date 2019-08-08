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
    pipeSD1e(nPorts=1),
    pipeef(nPorts=3));
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
  IBPSA.Fluid.Sources.FixedBoundary bou(redeclare package Medium =
        IBPSA.Media.Water, nPorts=1)
    annotation (Placement(transformation(extent={{12,-66},{32,-46}})));
  IBPSA.Fluid.HeatExchangers.Heater_T hea1(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=5,
    dp_nominal=100) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-2,-114})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=333)
    annotation (Placement(transformation(extent={{-48,-144},{-28,-124}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(T=
        283.15)
    annotation (Placement(transformation(extent={{-220,-116},{-200,-96}})));
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
  connect(realExpression.y, hea1.TSet) annotation (Line(points={{-27,-134},{-16,
          -134},{-16,-136},{-10,-136},{-10,-126}}, color={0,0,127}));
  connect(hea1.port_b, pipeid.port_a) annotation (Line(points={{-2,-104},{-56,
          -104},{-56,-46},{-106,-46}}, color={0,127,255}));
  connect(hea1.port_b, pipeih.port_a) annotation (Line(points={{-2,-104},{46,
          -104},{46,-46},{94,-46}}, color={0,127,255}));
  connect(hea1.port_a, pipehi.port_a) annotation (Line(points={{-2,-124},{-4,
          -124},{-4,-152},{106,-152},{106,-54}}, color={0,127,255}));
  connect(hea1.port_a, pipedi.port_a) annotation (Line(points={{-2,-124},{-4,
          -124},{-4,-152},{-98,-152},{-98,-54},{-94,-54}}, color={0,127,255}));
  connect(fixedTemperature.port, pipeSD16d.heatPort) annotation (Line(points={{-200,
          -106},{-140,-106},{-140,-44}},    color={191,0,0}));
  connect(pipeid.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-116,
          -36},{-128,-36},{-128,-56},{-140,-56},{-140,-44}}, color={191,0,0}));
  connect(pipeSD10c.heatPort, pipeSD16d.heatPort) annotation (Line(points={{
          -140,16},{-132,16},{-132,-36},{-128,-36},{-128,-56},{-140,-56},{-140,
          -44}}, color={191,0,0}));
  connect(pipedc.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-116,
          24},{-122,24},{-122,18},{-132,18},{-132,-36},{-128,-36},{-128,-56},{
          -140,-56},{-140,-44}}, color={191,0,0}));
  connect(pipeSD5b.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-140,
          76},{-132,76},{-132,20},{-122,20},{-122,18},{-132,18},{-132,-36},{
          -128,-36},{-128,-56},{-140,-56},{-140,-44}}, color={191,0,0}));
  connect(pipecb.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-116,
          84},{-118,84},{-118,22},{-124,22},{-124,20},{-122,20},{-122,18},{-132,
          18},{-132,-36},{-128,-36},{-128,-56},{-140,-56},{-140,-44}}, color={
          191,0,0}));
  connect(pipeba.heatPort, pipecb.heatPort)
    annotation (Line(points={{-116,144},{-116,84}}, color={191,0,0}));
  connect(pipeSD2a.heatPort, pipecb.heatPort) annotation (Line(points={{-140,
          136},{-128,136},{-128,118},{-116,118},{-116,84}}, color={191,0,0}));
  connect(pipeab.heatPort, pipecb.heatPort) annotation (Line(points={{-84,136},
          {-84,112},{-116,112},{-116,84}}, color={191,0,0}));
  connect(pipeSD3a.heatPort, pipecb.heatPort) annotation (Line(points={{-60,136},
          {-74,136},{-74,112},{-116,112},{-116,84}}, color={191,0,0}));
  connect(pipebSD6.heatPort, pipecb.heatPort) annotation (Line(points={{-60,104},
          {-70,104},{-70,110},{-82,110},{-82,112},{-116,112},{-116,84}}, color=
          {191,0,0}));
  connect(pipebc.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-84,76},
          {-84,56},{-118,56},{-118,22},{-124,22},{-124,20},{-122,20},{-122,18},
          {-132,18},{-132,-36},{-128,-36},{-128,-56},{-140,-56},{-140,-44}},
        color={191,0,0}));
  connect(pipecSD11.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-60,
          44},{-118,44},{-118,22},{-124,22},{-124,20},{-122,20},{-122,18},{-132,
          18},{-132,-36},{-128,-36},{-128,-56},{-140,-56},{-140,-44}}, color={
          191,0,0}));
  connect(pipeSD6b.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-60,
          76},{-60,56},{-118,56},{-118,22},{-124,22},{-124,20},{-122,20},{-122,
          18},{-132,18},{-132,-36},{-128,-36},{-128,-56},{-140,-56},{-140,-44}},
        color={191,0,0}));
  connect(pipedSD15.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-60,
          -16},{-96,-16},{-96,-14},{-132,-14},{-132,-36},{-128,-36},{-128,-56},
          {-140,-56},{-140,-44}}, color={191,0,0}));
  connect(pipedSD16.heatPort, pipeSD16d.heatPort) annotation (Line(points={{
          -140,-16},{-136,-16},{-136,-6},{-132,-6},{-132,-36},{-128,-36},{-128,
          -56},{-140,-56},{-140,-44}}, color={191,0,0}));
  connect(pipeSD11c.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-60,
          16},{-70,16},{-70,-10},{-86,-10},{-86,-16},{-96,-16},{-96,-14},{-132,
          -14},{-132,-36},{-128,-36},{-128,-56},{-140,-56},{-140,-44}}, color={
          191,0,0}));
  connect(pipeSD15d.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-60,
          -44},{-78,-44},{-78,-68},{-142,-68},{-142,-72},{-140,-72},{-140,-44}},
        color={191,0,0}));
  connect(pipedi.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-84,
          -44},{-84,-68},{-142,-68},{-142,-72},{-140,-72},{-140,-44}}, color={
          191,0,0}));
  connect(pipeaSD2.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-140,
          164},{-154,164},{-154,-84},{-168,-84},{-168,-82},{-140,-82},{-140,-44}},
        color={191,0,0}));
  connect(pipeaSD3.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-60,
          164},{-62,164},{-62,184},{-150,184},{-150,164},{-154,164},{-154,-84},
          {-168,-84},{-168,-82},{-140,-82},{-140,-44}}, color={191,0,0}));
  connect(pipeeSD1.heatPort, pipeSD16d.heatPort) annotation (Line(points={{60,
          164},{60,180},{-62,180},{-62,184},{-150,184},{-150,164},{-154,164},{
          -154,-84},{-168,-84},{-168,-82},{-140,-82},{-140,-44}}, color={191,0,
          0}));
  connect(pipeeSD4.heatPort, pipeSD16d.heatPort) annotation (Line(points={{140,
          164},{140,170},{60,170},{60,180},{-62,180},{-62,184},{-150,184},{-150,
          164},{-154,164},{-154,-84},{-168,-84},{-168,-82},{-140,-82},{-140,-44}},
        color={191,0,0}));
  connect(pipefe.heatPort, pipeSD16d.heatPort) annotation (Line(points={{84,144},
          {80,144},{80,168},{76,168},{76,170},{60,170},{60,180},{-62,180},{-62,
          184},{-150,184},{-150,164},{-154,164},{-154,-84},{-168,-84},{-168,-82},
          {-140,-82},{-140,-44}}, color={191,0,0}));
  connect(pipeef.heatPort, pipeSD16d.heatPort) annotation (Line(points={{116,
          136},{118,136},{118,170},{60,170},{60,180},{-62,180},{-62,184},{-150,
          184},{-150,164},{-154,164},{-154,-84},{-168,-84},{-168,-82},{-140,-82},
          {-140,-44}}, color={191,0,0}));
  connect(pipeSD4e.heatPort, pipeSD16d.heatPort) annotation (Line(points={{140,
          136},{130,136},{130,148},{118,148},{118,170},{60,170},{60,180},{-62,
          180},{-62,184},{-150,184},{-150,164},{-154,164},{-154,-84},{-168,-84},
          {-168,-82},{-140,-82},{-140,-44}}, color={191,0,0}));
  connect(pipefSD7.heatPort, pipeSD16d.heatPort) annotation (Line(points={{140,
          104},{134,104},{134,138},{122,138},{122,148},{118,148},{118,170},{60,
          170},{60,180},{-62,180},{-62,184},{-150,184},{-150,164},{-154,164},{
          -154,-84},{-168,-84},{-168,-82},{-140,-82},{-140,-44}}, color={191,0,
          0}));
  connect(pipegf.heatPort, pipeSD16d.heatPort) annotation (Line(points={{84,84},
          {82,84},{82,152},{80,152},{80,168},{76,168},{76,170},{60,170},{60,180},
          {-62,180},{-62,184},{-150,184},{-150,164},{-154,164},{-154,-84},{-168,
          -84},{-168,-82},{-140,-82},{-140,-44}}, color={191,0,0}));
  connect(pipefSD8.heatPort, pipecb.heatPort) annotation (Line(points={{60,104},
          {54,104},{54,130},{-74,130},{-74,112},{-116,112},{-116,84}}, color={
          191,0,0}));
  connect(pipeSD1e.heatPort, pipecb.heatPort) annotation (Line(points={{60,136},
          {60,122},{54,122},{54,130},{-74,130},{-74,112},{-116,112},{-116,84}},
        color={191,0,0}));
  connect(pipeSD8f.heatPort, pipeSD16d.heatPort) annotation (Line(points={{60,
          76},{30,76},{30,70},{-62,70},{-62,64},{-60,64},{-60,56},{-118,56},{
          -118,22},{-124,22},{-124,20},{-122,20},{-122,18},{-132,18},{-132,-36},
          {-128,-36},{-128,-56},{-140,-56},{-140,-44}}, color={191,0,0}));
  connect(pipeSD9g.heatPort, pipeSD16d.heatPort) annotation (Line(points={{60,
          16},{58,16},{58,2},{-70,2},{-70,-10},{-86,-10},{-86,-16},{-96,-16},{
          -96,-14},{-132,-14},{-132,-36},{-128,-36},{-128,-56},{-140,-56},{-140,
          -44}}, color={191,0,0}));
  connect(pipecd.heatPort, pipeSD16d.heatPort) annotation (Line(points={{-84,16},
          {-78,16},{-78,14},{-70,14},{-70,-10},{-86,-10},{-86,-16},{-96,-16},{
          -96,-14},{-132,-14},{-132,-36},{-128,-36},{-128,-56},{-140,-56},{-140,
          -44}}, color={191,0,0}));
  connect(pipehSD14.heatPort, pipeSD16d.heatPort) annotation (Line(points={{60,
          -16},{58,-16},{58,2},{-70,2},{-70,-10},{-86,-10},{-86,-16},{-96,-16},
          {-96,-14},{-132,-14},{-132,-36},{-128,-36},{-128,-56},{-140,-56},{
          -140,-44}}, color={191,0,0}));
  connect(pipeSD14h.heatPort, pipeSD16d.heatPort) annotation (Line(points={{60,
          -44},{62,-44},{62,-68},{-142,-68},{-142,-72},{-140,-72},{-140,-44}},
        color={191,0,0}));
  connect(pipehg.heatPort, pipeSD16d.heatPort) annotation (Line(points={{84,24},
          {82,24},{82,10},{56,10},{56,2},{-70,2},{-70,-10},{-86,-10},{-86,-16},
          {-96,-16},{-96,-14},{-132,-14},{-132,-36},{-128,-36},{-128,-56},{-140,
          -56},{-140,-44}}, color={191,0,0}));
  connect(pipeih.heatPort, pipeSD16d.heatPort) annotation (Line(points={{84,-36},
          {76,-36},{76,-46},{64,-46},{64,-58},{62,-58},{62,-68},{-142,-68},{
          -142,-72},{-140,-72},{-140,-44}}, color={191,0,0}));
  connect(pipehi.heatPort, pipeSD16d.heatPort) annotation (Line(points={{116,
          -44},{116,-68},{-142,-68},{-142,-72},{-140,-72},{-140,-44}}, color={
          191,0,0}));
  connect(pipeSD13h.heatPort, pipeSD16d.heatPort) annotation (Line(points={{140,
          -44},{142,-44},{142,-68},{-142,-68},{-142,-72},{-140,-72},{-140,-44}},
        color={191,0,0}));
  connect(pipehSD13.heatPort, pipeSD16d.heatPort) annotation (Line(points={{140,
          -16},{140,-2},{58,-2},{58,2},{-70,2},{-70,-10},{-86,-10},{-86,-16},{
          -96,-16},{-96,-14},{-132,-14},{-132,-36},{-128,-36},{-128,-56},{-140,
          -56},{-140,-44}}, color={191,0,0}));
  connect(pipeSD12g.heatPort, pipeSD16d.heatPort) annotation (Line(points={{140,
          16},{140,-2},{58,-2},{58,2},{-70,2},{-70,-10},{-86,-10},{-86,-16},{
          -96,-16},{-96,-14},{-132,-14},{-132,-36},{-128,-36},{-128,-56},{-140,
          -56},{-140,-44}}, color={191,0,0}));
  connect(pipegh.heatPort, pipeSD16d.heatPort) annotation (Line(points={{116,16},
          {116,-2},{58,-2},{58,2},{-70,2},{-70,-10},{-86,-10},{-86,-16},{-96,
          -16},{-96,-14},{-132,-14},{-132,-36},{-128,-36},{-128,-56},{-140,-56},
          {-140,-44}}, color={191,0,0}));
  connect(pipegSD12.heatPort, pipeSD16d.heatPort) annotation (Line(points={{140,
          44},{112,44},{112,56},{24,56},{24,70},{-62,70},{-62,64},{-60,64},{-60,
          56},{-118,56},{-118,22},{-124,22},{-124,20},{-122,20},{-122,18},{-132,
          18},{-132,-36},{-128,-36},{-128,-56},{-140,-56},{-140,-44}}, color={
          191,0,0}));
  connect(pipegSD9.heatPort, pipeSD16d.heatPort) annotation (Line(points={{60,
          44},{60,56},{24,56},{24,70},{-62,70},{-62,64},{-60,64},{-60,56},{-118,
          56},{-118,22},{-124,22},{-124,20},{-122,20},{-122,18},{-132,18},{-132,
          -36},{-128,-36},{-128,-56},{-140,-56},{-140,-44}}, color={191,0,0}));
  connect(pipefg.heatPort, pipeSD16d.heatPort) annotation (Line(points={{116,76},
          {118,76},{118,44},{112,44},{112,56},{24,56},{24,70},{-62,70},{-62,64},
          {-60,64},{-60,56},{-118,56},{-118,22},{-124,22},{-124,20},{-122,20},{
          -122,18},{-132,18},{-132,-36},{-128,-36},{-128,-56},{-140,-56},{-140,
          -44}}, color={191,0,0}));
  connect(pipeSD7f.heatPort, pipeSD16d.heatPort) annotation (Line(points={{140,
          76},{136,76},{136,46},{126,46},{126,44},{112,44},{112,56},{24,56},{24,
          70},{-62,70},{-62,64},{-60,64},{-60,56},{-118,56},{-118,22},{-124,22},
          {-124,20},{-122,20},{-122,18},{-132,18},{-132,-36},{-128,-36},{-128,
          -56},{-140,-56},{-140,-44}}, color={191,0,0}));
  connect(pipebSD5.heatPort, pipecb.heatPort) annotation (Line(points={{-140,
          104},{-140,122},{-128,122},{-128,118},{-116,118},{-116,84}}, color={
          191,0,0}));
  connect(pipecSD10.heatPort, pipeSD16d.heatPort) annotation (Line(points={{
          -140,44},{-132,44},{-132,20},{-122,20},{-122,18},{-132,18},{-132,-36},
          {-128,-36},{-128,-56},{-140,-56},{-140,-44}}, color={191,0,0}));
  connect(bou.ports[1], pipehi.port_a) annotation (Line(points={{32,-56},{32,
          -152},{106,-152},{106,-54}}, color={0,127,255}));
  annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
        coordinateSystem(extent={{-100,-100},{100,100}})));
end SupplyNetwork_Pipes;
