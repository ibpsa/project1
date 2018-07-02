within IBPSAdestest.Network_with_Parameters;
model SupplyNetwork_Junctions "Only supply line is modelled"
  extends Modelica.Icons.Example;
  extends BaseClasses.BuildingLocationsDouble;

  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=1;
  parameter Modelica.SIunits.Pressure dP=100;

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    tableName="data",
    columns=2:18,
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://IBPSAdestest/Resources/Data/DestestHeatDemand/heat_profiles.txt"))
    annotation (Placement(transformation(extent={{-160,-114},{-140,-94}})));

  IBPSA.Fluid.FixedResistances.Junction a_sup(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,-1,1},
    dp_nominal=dP*{-1,-1,1})
    annotation (Placement(transformation(extent={{-154,144},{-134,164}})));
  IBPSA.Fluid.FixedResistances.Junction a_ret(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{1,1,-1},
    dp_nominal=dP*{1,1,-1})
    annotation (Placement(transformation(extent={{-90,136},{-70,156}})));
  IBPSA.Fluid.FixedResistances.Junction b_sup_out(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,1,-1},
    dp_nominal=dP*{-1,1,-1})
    annotation (Placement(transformation(extent={{-154,104},{-134,84}})));
  IBPSA.Fluid.FixedResistances.Junction b_sup_in(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,-1,1},
    dp_nominal=dP*{-1,-1,1})
    annotation (Placement(transformation(extent={{-126,84},{-106,104}})));
  IBPSA.Fluid.FixedResistances.Junction d_sup_out(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,1,-1},
    dp_nominal=dP*{-1,1,-1})
    annotation (Placement(transformation(extent={{-154,-16},{-134,-36}})));
  IBPSA.Fluid.FixedResistances.Junction d_sup_in(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,-1,1},
    dp_nominal=dP*{-1,-1,1})
    annotation (Placement(transformation(extent={{-126,-36},{-106,-16}})));
  IBPSA.Fluid.HeatExchangers.HeaterCooler_u hea(
    dp_nominal=500,
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal,
    Q_flow_nominal=16)    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-2,-116})));
  IBPSA.Fluid.FixedResistances.Junction i_sup(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,-1,1},
    dp_nominal=dP*{-1,-1,1})
    annotation (Placement(transformation(extent={{-12,-94},{8,-74}})));
  IBPSA.Fluid.FixedResistances.Junction i_ret(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{1,1,-1},
    dp_nominal=dP*{1,1,-1})
    annotation (Placement(transformation(extent={{-12,-136},{8,-156}})));
  IBPSA.Fluid.FixedResistances.Junction b_ret_in(
    redeclare package Medium = IBPSA.Media.Water,
    dp_nominal=dP*{1,-1,1},
    m_flow_nominal=m_flow_nominal*{1,-1,1})
    annotation (Placement(transformation(extent={{-90,96},{-70,76}})));
  IBPSA.Fluid.FixedResistances.Junction b_ret_out(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=0.1*{1,1,-1},
    dp_nominal=10*{1,1,-1})
    annotation (Placement(transformation(extent={{-66,76},{-46,96}})));
  IBPSA.Fluid.FixedResistances.Junction c_sup_out(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,1,-1},
    dp_nominal=dP*{-1,1,-1})
    annotation (Placement(transformation(extent={{-154,44},{-134,24}})));
  IBPSA.Fluid.FixedResistances.Junction c_sup_in(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,-1,1},
    dp_nominal=dP*{-1,-1,1})
    annotation (Placement(transformation(extent={{-124,24},{-104,44}})));
  IBPSA.Fluid.FixedResistances.Junction c_ret_in(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{1,-1,1},
    dp_nominal=dP*{1,-1,1})
    annotation (Placement(transformation(extent={{-90,36},{-70,16}})));
  IBPSA.Fluid.FixedResistances.Junction c_ret_out(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{1,1,-1},
    dp_nominal=dP*{1,1,-1})
    annotation (Placement(transformation(extent={{-64,16},{-44,36}})));
  IBPSA.Fluid.FixedResistances.Junction d_ret_in(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{1,-1,1},
    dp_nominal=dP*{1,-1,1})
    annotation (Placement(transformation(extent={{-90,-24},{-70,-44}})));
  IBPSA.Fluid.FixedResistances.Junction d_ret_out(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{1,1,-1},
    dp_nominal=dP*{1,1,-1})
    annotation (Placement(transformation(extent={{-66,-44},{-46,-24}})));
  IBPSA.Fluid.FixedResistances.Junction e_sup(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,-1,1},
    dp_nominal=dP*{-1,-1,1})
    annotation (Placement(transformation(extent={{46,144},{66,164}})));
  IBPSA.Fluid.FixedResistances.Junction e_ret(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{1,1,-1},
    dp_nominal=dP*{1,1,-1})
    annotation (Placement(transformation(extent={{110,136},{130,156}})));
  IBPSA.Fluid.FixedResistances.Junction f_ret_in(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{1,-1,1},
    dp_nominal=dP*{1,-1,1})
    annotation (Placement(transformation(extent={{110,96},{130,76}})));
  IBPSA.Fluid.FixedResistances.Junction f_ret_out(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{1,1,-1},
    dp_nominal=dP*{1,1,-1})
    annotation (Placement(transformation(extent={{134,74},{154,94}})));
  IBPSA.Fluid.FixedResistances.Junction f_sup_in(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,-1,1},
    dp_nominal=dP*{-1,-1,1})
    annotation (Placement(transformation(extent={{74,84},{94,104}})));
  IBPSA.Fluid.FixedResistances.Junction f_sup_out(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,1,-1},
    dp_nominal=dP*{-1,1,-1})
    annotation (Placement(transformation(extent={{46,104},{66,84}})));
  IBPSA.Fluid.FixedResistances.Junction g_sup_out(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,1,-1},
    dp_nominal=dP*{-1,1,-1})
    annotation (Placement(transformation(extent={{46,44},{66,24}})));
  IBPSA.Fluid.FixedResistances.Junction g_sup_in(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,-1,1},
    dp_nominal=dP*{-1,-1,1})
    annotation (Placement(transformation(extent={{78,24},{98,44}})));
  IBPSA.Fluid.FixedResistances.Junction g_ret_in(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{1,-1,1},
    dp_nominal=dP*{1,-1,1})
    annotation (Placement(transformation(extent={{110,36},{130,16}})));
  IBPSA.Fluid.FixedResistances.Junction g_ret_out(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{1,1,-1},
    dp_nominal=dP*{1,1,-1})
    annotation (Placement(transformation(extent={{136,16},{156,36}})));
  IBPSA.Fluid.FixedResistances.Junction h_sup_out(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,1,-1},
    dp_nominal=dP*{-1,1,-1})
    annotation (Placement(transformation(extent={{46,-16},{66,-36}})));
  IBPSA.Fluid.FixedResistances.Junction h_sup_in(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{-1,-1,1},
    dp_nominal=dP*{-1,-1,1})
    annotation (Placement(transformation(extent={{74,-36},{94,-16}})));
  IBPSA.Fluid.FixedResistances.Junction h_ret_in(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{1,-1,1},
    dp_nominal=dP*{1,-1,1})
    annotation (Placement(transformation(extent={{110,-24},{130,-44}})));
  IBPSA.Fluid.FixedResistances.Junction h_ret_out(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal*{1,1,-1},
    dp_nominal=dP*{1,1,-1})
    annotation (Placement(transformation(extent={{134,-44},{154,-24}})));
  IBPSA.Fluid.Sources.FixedBoundary bou(nPorts=1, redeclare package Medium =
        IBPSA.Media.Water)
    annotation (Placement(transformation(extent={{22,-128},{42,-108}})));
protected
  Modelica.Blocks.Interfaces.RealOutput y1[size(combiTimeTable.y, 1)]
                     "Connector of Real output signals"
    annotation (Placement(transformation(extent={{-1,-73},{0,-74}})));
equation
  connect(combiTimeTable.y[2], SimpleDistrict_2.QDem) annotation (Line(points={{-139,
          -104},{-100,-104},{-100,-74},{-198,-74},{-198,170},{-170,170},{-170,
          160}},      color={0,0,127}));
  connect(combiTimeTable.y[5], SimpleDistrict_5.QDem) annotation (Line(points={{-139,
          -104},{-100,-104},{-100,-74},{-198,-74},{-198,112},{-170,112},{-170,
          100}},                  color={0,0,127}));
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
  connect(SimpleDistrict_3.port_a, a_sup.port_2)
    annotation (Line(points={{-40,154},{-134,154}}, color={0,127,255}));
  connect(SimpleDistrict_2.port_a, a_sup.port_1)
    annotation (Line(points={{-160,154},{-154,154}}, color={0,127,255}));
  connect(SimpleDistrict_2.port_b, a_ret.port_1) annotation (Line(points={{-160,
          145.8},{-126,145.8},{-126,146},{-90,146}}, color={0,127,255}));
  connect(SimpleDistrict_3.port_b, a_ret.port_2) annotation (Line(points={{-40,145.8},
          {-70,145.8},{-70,146}}, color={0,127,255}));
  connect(a_sup.port_3, b_sup_out.port_3)
    annotation (Line(points={{-144,144},{-144,104}}, color={0,127,255}));
  connect(b_sup_out.port_1, SimpleDistrict_5.port_a)
    annotation (Line(points={{-154,94},{-160,94}}, color={0,127,255}));
  connect(b_sup_out.port_2, b_sup_in.port_1)
    annotation (Line(points={{-134,94},{-126,94}}, color={0,127,255}));
  connect(d_sup_out.port_2, d_sup_in.port_1)
    annotation (Line(points={{-134,-26},{-126,-26}}, color={0,127,255}));
  connect(d_sup_in.port_2, SimpleDistrict_15.port_a)
    annotation (Line(points={{-106,-26},{-40,-26}}, color={0,127,255}));
  connect(d_sup_out.port_1, SimpleDistrict_16.port_a)
    annotation (Line(points={{-154,-26},{-160,-26}}, color={0,127,255}));
  connect(i_sup.port_3, hea.port_b)
    annotation (Line(points={{-2,-94},{-2,-106}}, color={0,127,255}));
  connect(hea.port_a, i_ret.port_3)
    annotation (Line(points={{-2,-126},{-2,-136}}, color={0,127,255}));
  connect(i_sup.port_1, d_sup_in.port_3) annotation (Line(points={{-12,-84},{-116,
          -84},{-116,-36}}, color={0,127,255}));
  connect(b_sup_in.port_2, SimpleDistrict_6.port_a)
    annotation (Line(points={{-106,94},{-40,94}}, color={0,127,255}));
  connect(b_ret_in.port_1, SimpleDistrict_5.port_b) annotation (Line(points={{-90,
          86},{-126,86},{-126,85.8},{-160,85.8}}, color={0,127,255}));
  connect(b_ret_in.port_2, b_ret_out.port_1) annotation (Line(points={{-70,86},{
          -70,88},{-68,88},{-68,86},{-66,86}}, color={0,127,255}));
  connect(SimpleDistrict_6.port_b, b_ret_out.port_2) annotation (Line(points={{-40,
          85.8},{-44,85.8},{-44,86},{-46,86}}, color={0,127,255}));
  connect(SimpleDistrict_10.port_a, c_sup_out.port_1)
    annotation (Line(points={{-160,34},{-154,34}}, color={0,127,255}));
  connect(c_sup_out.port_3, b_sup_in.port_3) annotation (Line(points={{-144,44},
          {-144,74},{-116,74},{-116,84}}, color={0,127,255}));
  connect(c_sup_out.port_2, c_sup_in.port_1)
    annotation (Line(points={{-134,34},{-124,34}}, color={0,127,255}));
  connect(c_sup_in.port_3, d_sup_out.port_3) annotation (Line(points={{-114,24},
          {-114,0},{-144,0},{-144,-16}}, color={0,127,255}));
  connect(b_ret_in.port_3, a_ret.port_3)
    annotation (Line(points={{-80,96},{-80,136}}, color={0,127,255}));
  connect(SimpleDistrict_11.port_b, c_ret_out.port_2) annotation (Line(points={{
          -40,25.8},{-42,25.8},{-42,26},{-44,26}}, color={0,127,255}));
  connect(c_ret_out.port_1, c_ret_in.port_2)
    annotation (Line(points={{-64,26},{-70,26}}, color={0,127,255}));
  connect(c_ret_in.port_3, b_ret_out.port_3) annotation (Line(points={{-80,36},
          {-80,56},{-56,56},{-56,76}},color={0,127,255}));
  connect(c_ret_in.port_1, SimpleDistrict_10.port_b) annotation (Line(points={{-90,26},
          {-124,26},{-124,25.8},{-160,25.8}},     color={0,127,255}));
  connect(c_sup_in.port_2, SimpleDistrict_11.port_a)
    annotation (Line(points={{-104,34},{-40,34}}, color={0,127,255}));
  connect(d_ret_out.port_2, SimpleDistrict_15.port_b) annotation (Line(points={{
          -46,-34},{-44,-34},{-44,-34.2},{-40,-34.2}}, color={0,127,255}));
  connect(d_ret_out.port_1, d_ret_in.port_2)
    annotation (Line(points={{-66,-34},{-70,-34}}, color={0,127,255}));
  connect(d_ret_in.port_1, SimpleDistrict_16.port_b) annotation (Line(points={{-90,
          -34},{-126,-34},{-126,-34.2},{-160,-34.2}}, color={0,127,255}));
  connect(d_ret_in.port_3, c_ret_out.port_3) annotation (Line(points={{-80,-24},
          {-80,10},{-54,10},{-54,16}}, color={0,127,255}));
  connect(d_ret_out.port_3, i_ret.port_1) annotation (Line(points={{-56,-44},{-56,
          -146},{-12,-146}}, color={0,127,255}));
  connect(e_ret.port_2, SimpleDistrict_4.port_b) annotation (Line(points={{130,
          146},{146,146},{146,145.8},{160,145.8}}, color={0,127,255}));
  connect(SimpleDistrict_4.port_a, e_sup.port_2)
    annotation (Line(points={{160,154},{66,154}}, color={0,127,255}));
  connect(e_sup.port_1, SimpleDistrict_1.port_a)
    annotation (Line(points={{46,154},{40,154}}, color={0,127,255}));
  connect(e_sup.port_3, f_sup_out.port_3)
    annotation (Line(points={{56,144},{56,104}}, color={0,127,255}));
  connect(f_sup_out.port_1, SimpleDistrict_8.port_a)
    annotation (Line(points={{46,94},{40,94}}, color={0,127,255}));
  connect(f_sup_out.port_2, f_sup_in.port_1) annotation (Line(points={{66,94},{
          70,94},{70,94},{74,94}}, color={0,127,255}));
  connect(f_sup_in.port_2, SimpleDistrict_7.port_a) annotation (Line(points={{
          94,94},{128,94},{128,92},{160,92}}, color={0,127,255}));
  connect(f_ret_in.port_1, SimpleDistrict_8.port_b) annotation (Line(points={{
          110,86},{76,86},{76,85.8},{40,85.8}}, color={0,127,255}));
  connect(f_ret_in.port_2, f_ret_out.port_1) annotation (Line(points={{130,86},
          {132,86},{132,84},{134,84}}, color={0,127,255}));
  connect(f_ret_out.port_2, SimpleDistrict_7.port_b) annotation (Line(points={{
          154,84},{158,84},{158,83.8},{160,83.8}}, color={0,127,255}));
  connect(f_ret_in.port_3, e_ret.port_3)
    annotation (Line(points={{120,96},{120,136}}, color={0,127,255}));
  connect(f_ret_out.port_3, g_ret_in.port_3)
    annotation (Line(points={{144,74},{120,74},{120,36}}, color={0,127,255}));
  connect(SimpleDistrict_9.port_a, g_sup_out.port_1)
    annotation (Line(points={{40,34},{46,34}}, color={0,127,255}));
  connect(g_sup_out.port_3, f_sup_in.port_3) annotation (Line(points={{56,44},{
          56,72},{84,72},{84,84}}, color={0,127,255}));
  connect(g_sup_out.port_2, g_sup_in.port_1)
    annotation (Line(points={{66,34},{78,34}}, color={0,127,255}));
  connect(g_sup_in.port_3, h_sup_out.port_3) annotation (Line(points={{88,24},{
          88,0},{58,0},{58,-16},{56,-16}}, color={0,127,255}));
  connect(h_sup_out.port_1, SimpleDistrict_14.port_a)
    annotation (Line(points={{46,-26},{40,-26}}, color={0,127,255}));
  connect(h_sup_out.port_2, h_sup_in.port_1)
    annotation (Line(points={{66,-26},{74,-26}}, color={0,127,255}));
  connect(SimpleDistrict_14.port_b, h_ret_in.port_1) annotation (Line(points={{
          40,-34.2},{78,-34.2},{78,-34},{110,-34}}, color={0,127,255}));
  connect(h_sup_in.port_2, SimpleDistrict_13.port_a) annotation (Line(points={{
          94,-26},{128,-26},{128,-26},{160,-26}}, color={0,127,255}));
  connect(h_ret_in.port_3, g_ret_out.port_3) annotation (Line(points={{120,-24},
          {120,6},{146,6},{146,16}}, color={0,127,255}));
  connect(h_ret_in.port_2, h_ret_out.port_1) annotation (Line(points={{130,-34},
          {134,-34},{134,-34},{134,-34}}, color={0,127,255}));
  connect(h_ret_out.port_2, SimpleDistrict_13.port_b) annotation (Line(points={
          {154,-34},{158,-34},{158,-34.2},{160,-34.2}}, color={0,127,255}));
  connect(i_ret.port_2, h_ret_out.port_3) annotation (Line(points={{8,-146},{
          144,-146},{144,-44}}, color={0,127,255}));
  connect(i_sup.port_2, h_sup_in.port_3)
    annotation (Line(points={{8,-84},{84,-84},{84,-36}}, color={0,127,255}));
  connect(g_sup_in.port_2, SimpleDistrict_12.port_a)
    annotation (Line(points={{98,34},{160,34}}, color={0,127,255}));
  connect(g_ret_in.port_2, g_ret_out.port_1)
    annotation (Line(points={{130,26},{136,26}}, color={0,127,255}));
  connect(g_ret_out.port_2, SimpleDistrict_12.port_b) annotation (Line(points={
          {156,26},{158,26},{158,25.8},{160,25.8}}, color={0,127,255}));
  connect(g_ret_in.port_1, SimpleDistrict_9.port_b) annotation (Line(points={{
          110,26},{76,26},{76,25.8},{40,25.8}}, color={0,127,255}));
  connect(e_ret.port_1, SimpleDistrict_1.port_b) annotation (Line(points={{110,
          146},{76,146},{76,145.8},{40,145.8}}, color={0,127,255}));
  connect(bou.ports[1], h_sup_in.port_3) annotation (Line(points={{42,-118},{44,
          -118},{44,-84},{84,-84},{84,-36}}, color={0,127,255}));
  connect(hea.u, SimpleDistrict_2.QDem) annotation (Line(points={{-8,-128},{-54,
          -128},{-54,-120},{-100,-120},{-100,-74},{-198,-74},{-198,170},{-170,
          170},{-170,160}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
        coordinateSystem(extent={{-100,-100},{100,100}})));
end SupplyNetwork_Junctions;
