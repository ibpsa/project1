within IBPSAdestest;
package Network_with_Parameters "Models of the destest heating/cooling network"
extends Modelica.Icons.Package;
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
            -104},{-100,-104},{-100,-74},{-198,-74},{-198,52},{-170,52},{-170,
            40}},      color={0,0,127}));
    connect(combiTimeTable.y[16], SimpleDistrict_16.QDem) annotation (Line(points={{-139,
            -104},{-100,-104},{-100,-74},{-198,-74},{-198,-8},{-170,-8},{-170,
            -20}},      color={0,0,127}));
    connect(combiTimeTable.y, y1) annotation (Line(points={{-139,-104},{-100,
            -104},{-100,-73.5},{-0.5,-73.5}},
                                        color={0,0,127}));
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
    connect(d_ret_out.port_3, i_ret.port_1) annotation (Line(points={{-56,-44},
            {-56,-146},{-12,-146}}, color={0,127,255}));
    connect(e_ret.port_2, SimpleDistrict_4.port_b) annotation (Line(points={{
            130,146},{146,146},{146,145.8},{160,145.8}}, color={0,127,255}));
    connect(SimpleDistrict_4.port_a, e_sup.port_2)
      annotation (Line(points={{160,154},{66,154}}, color={0,127,255}));
    connect(e_sup.port_1, SimpleDistrict_1.port_a)
      annotation (Line(points={{46,154},{40,154}}, color={0,127,255}));
    connect(e_sup.port_3, f_sup_out.port_3)
      annotation (Line(points={{56,144},{56,104}}, color={0,127,255}));
    connect(f_sup_out.port_1, SimpleDistrict_8.port_a)
      annotation (Line(points={{46,94},{40,94}}, color={0,127,255}));
    connect(f_sup_out.port_2, f_sup_in.port_1) annotation (Line(points={{66,94},
            {70,94},{70,94},{74,94}}, color={0,127,255}));
    connect(f_sup_in.port_2, SimpleDistrict_7.port_a) annotation (Line(points={
            {94,94},{128,94},{128,92},{160,92}}, color={0,127,255}));
    connect(f_ret_in.port_1, SimpleDistrict_8.port_b) annotation (Line(points={
            {110,86},{76,86},{76,85.8},{40,85.8}}, color={0,127,255}));
    connect(f_ret_in.port_2, f_ret_out.port_1) annotation (Line(points={{130,86},
            {132,86},{132,84},{134,84}}, color={0,127,255}));
    connect(f_ret_out.port_2, SimpleDistrict_7.port_b) annotation (Line(points=
            {{154,84},{158,84},{158,83.8},{160,83.8}}, color={0,127,255}));
    connect(f_ret_in.port_3, e_ret.port_3)
      annotation (Line(points={{120,96},{120,136}}, color={0,127,255}));
    connect(f_ret_out.port_3, g_ret_in.port_3) annotation (Line(points={{144,74},
            {120,74},{120,36}}, color={0,127,255}));
    connect(SimpleDistrict_9.port_a, g_sup_out.port_1)
      annotation (Line(points={{40,34},{46,34}}, color={0,127,255}));
    connect(g_sup_out.port_3, f_sup_in.port_3) annotation (Line(points={{56,44},
            {56,72},{84,72},{84,84}}, color={0,127,255}));
    connect(g_sup_out.port_2, g_sup_in.port_1)
      annotation (Line(points={{66,34},{78,34}}, color={0,127,255}));
    connect(g_sup_in.port_3, h_sup_out.port_3) annotation (Line(points={{88,24},
            {88,0},{58,0},{58,-16},{56,-16}}, color={0,127,255}));
    connect(h_sup_out.port_1, SimpleDistrict_14.port_a)
      annotation (Line(points={{46,-26},{40,-26}}, color={0,127,255}));
    connect(h_sup_out.port_2, h_sup_in.port_1)
      annotation (Line(points={{66,-26},{74,-26}}, color={0,127,255}));
    connect(SimpleDistrict_14.port_b, h_ret_in.port_1) annotation (Line(points=
            {{40,-34.2},{78,-34.2},{78,-34},{110,-34}}, color={0,127,255}));
    connect(h_sup_in.port_2, SimpleDistrict_13.port_a) annotation (Line(points=
            {{94,-26},{128,-26},{128,-26},{160,-26}}, color={0,127,255}));
    connect(h_ret_in.port_3, g_ret_out.port_3) annotation (Line(points={{120,-24},
            {120,6},{146,6},{146,16}}, color={0,127,255}));
    connect(h_ret_in.port_2, h_ret_out.port_1) annotation (Line(points={{130,-34},
            {134,-34},{134,-34},{134,-34}}, color={0,127,255}));
    connect(h_ret_out.port_2, SimpleDistrict_13.port_b) annotation (Line(points
          ={{154,-34},{158,-34},{158,-34.2},{160,-34.2}}, color={0,127,255}));
    connect(i_ret.port_2, h_ret_out.port_3) annotation (Line(points={{8,-146},{
            144,-146},{144,-44}}, color={0,127,255}));
    connect(i_sup.port_2, h_sup_in.port_3)
      annotation (Line(points={{8,-84},{84,-84},{84,-36}}, color={0,127,255}));
    connect(g_sup_in.port_2, SimpleDistrict_12.port_a)
      annotation (Line(points={{98,34},{160,34}}, color={0,127,255}));
    connect(g_ret_in.port_2, g_ret_out.port_1)
      annotation (Line(points={{130,26},{136,26}}, color={0,127,255}));
    connect(g_ret_out.port_2, SimpleDistrict_12.port_b) annotation (Line(points
          ={{156,26},{158,26},{158,25.8},{160,25.8}}, color={0,127,255}));
    connect(g_ret_in.port_1, SimpleDistrict_9.port_b) annotation (Line(points={
            {110,26},{76,26},{76,25.8},{40,25.8}}, color={0,127,255}));
    connect(e_ret.port_1, SimpleDistrict_1.port_b) annotation (Line(points={{
            110,146},{76,146},{76,145.8},{40,145.8}}, color={0,127,255}));
    connect(bou.ports[1], h_sup_in.port_3) annotation (Line(points={{42,-118},{
            44,-118},{44,-84},{84,-84},{84,-36}}, color={0,127,255}));
    connect(hea.u, SimpleDistrict_2.QDem) annotation (Line(points={{-8,-128},{
            -54,-128},{-54,-120},{-100,-120},{-100,-74},{-198,-74},{-198,170},{
            -170,170},{-170,160}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
          coordinateSystem(extent={{-100,-100},{100,100}})));
  end SupplyNetwork_Junctions;

  package BaseClasses "Base classes needed for network"
  extends Modelica.Icons.BasesPackage;
    model BuildingLocationsSingle "Only supply line is modelled"

      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_2(redeclare package
          Medium =
            IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{-160,140},{-180,160}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_3(redeclare package
          Medium =
            IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{-40,140},{-20,160}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_5(redeclare package
          Medium =
            IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{-160,80},{-180,100}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_6(redeclare package
          Medium =
            IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{-40,80},{-20,100}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_10(redeclare package
          Medium = IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{-160,20},{-180,40}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_16(redeclare package
          Medium = IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{-160,-40},{-180,-20}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_15(redeclare package
          Medium = IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{-40,-40},{-20,-20}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_11(redeclare package
          Medium = IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_1(redeclare package
          Medium =
            IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{40,140},{20,160}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_4(redeclare package
          Medium =
            IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{160,140},{180,160}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_7(redeclare package
          Medium =
            IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{160,78},{180,98}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_8(redeclare package
          Medium =
            IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{40,80},{20,100}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_9(redeclare package
          Medium =
            IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{40,20},{20,40}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_12(redeclare package
          Medium = IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{160,20},{180,40}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_13(redeclare package
          Medium = IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{160,-40},{180,-20}})));
      Consumer.BaseClasses.SimpleConsumer SimpleDistrict_14(redeclare package
          Medium = IBPSA.Media.Water)
        annotation (Placement(transformation(extent={{40,-40},{20,-20}})));
      annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
            coordinateSystem(extent={{-120,-100},{100,120}})));
    end BuildingLocationsSingle;

    model BuildingLocationsDouble "Supply and return are modelled"
      parameter Modelica.SIunits.MassFlowRate m_flow_nominal=5;
      Consumer.IdealConsumerTwin
                              SimpleDistrict_2(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{-160,140},{-180,160}})));
      Consumer.IdealConsumerTwin   SimpleDistrict_3(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{-40,140},{-20,160}})));
      Consumer.IdealConsumerTwin   SimpleDistrict_5(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{-160,80},{-180,100}})));
      Consumer.IdealConsumerTwin   SimpleDistrict_6(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{-40,80},{-20,100}})));
      Consumer.IdealConsumerTwin SimpleDistrict_10(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{-160,20},{-180,40}})));
      Consumer.IdealConsumerTwin SimpleDistrict_16(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{-160,-40},{-180,-20}})));
      Consumer.IdealConsumerTwin SimpleDistrict_15(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{-40,-40},{-20,-20}})));
      Consumer.IdealConsumerTwin SimpleDistrict_11(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
      Consumer.IdealConsumerTwin   SimpleDistrict_1(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{40,140},{20,160}})));
      Consumer.IdealConsumerTwin   SimpleDistrict_4(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{160,140},{180,160}})));
      Consumer.IdealConsumerTwin   SimpleDistrict_7(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{160,78},{180,98}})));
      Consumer.IdealConsumerTwin   SimpleDistrict_8(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{40,80},{20,100}})));
      Consumer.IdealConsumerTwin SimpleDistrict_9(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{40,20},{20,40}})));
      Consumer.IdealConsumerTwin SimpleDistrict_12(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{160,20},{180,40}})));
      Consumer.IdealConsumerTwin SimpleDistrict_13(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{160,-40},{180,-20}})));
      Consumer.IdealConsumerTwin SimpleDistrict_14(redeclare package Medium =
            IBPSA.Media.Water,
        dp_nominal(displayUnit="Pa"),
        deltaT=20,
        m_flow_nominal=m_flow_nominal,
        m_flo_bypass=0,
        T_start=323.15)
        annotation (Placement(transformation(extent={{40,-40},{20,-20}})));
      annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
            coordinateSystem(extent={{-120,-100},{100,120}})));
    end BuildingLocationsDouble;

    model PlugFlowPipe_IBPSA
      "Pipe model using spatialDistribution for temperature delay"
      extends IBPSA.Fluid.Interfaces.PartialTwoPortVector;

      parameter Boolean from_dp=false
        "= true, use m_flow = f(dp) else dp = f(m_flow)"
        annotation (Dialog(tab="Advanced"));

      parameter Modelica.SIunits.Length dh=sqrt(4*m_flow_nominal/rho_default/v_nominal/Modelica.Constants.pi)
        "Hydraulic diameter (assuming a round cross section area)"
        annotation (Dialog(group="Material"));

      parameter Modelica.SIunits.Velocity v_nominal = 1.5
        "Velocity at m_flow_nominal (used to compute default value for hydraulic diameter dh)"
        annotation(Dialog(group="Nominal condition"));

      parameter Real ReC=4000
        "Reynolds number where transition to turbulent starts";

      parameter Modelica.SIunits.Height roughness=2.5e-5
        "Average height of surface asperities (default: smooth steel pipe)"
        annotation (Dialog(group="Material"));

      parameter Modelica.SIunits.Length length "Pipe length"
        annotation (Dialog(group="Material"));

      parameter Modelica.SIunits.MassFlowRate m_flow_nominal
        "Nominal mass flow rate" annotation (Dialog(group="Nominal condition"));

      parameter Modelica.SIunits.MassFlowRate m_flow_small = 1E-4*abs(
        m_flow_nominal) "Small mass flow rate for regularization of zero flow"
        annotation (Dialog(tab="Advanced"));

      parameter Modelica.SIunits.Length dIns
        "Thickness of pipe insulation, used to compute R"
        annotation (Dialog(group="Thermal resistance"));

      parameter Modelica.SIunits.ThermalConductivity kIns
        "Heat conductivity of pipe insulation, used to compute R"
        annotation (Dialog(group="Thermal resistance"));

      parameter Modelica.SIunits.SpecificHeatCapacity cPip=2300
        "Specific heat of pipe wall material. 2300 for PE, 500 for steel"
        annotation (Dialog(group="Material"));

      parameter Modelica.SIunits.Density rhoPip(displayUnit="kg/m3")=930
        "Density of pipe wall material. 930 for PE, 8000 for steel"
        annotation (Dialog(group="Material"));

      parameter Modelica.SIunits.Length thickness = 0.0035
        "Pipe wall thickness"
        annotation (Dialog(group="Material"));

      parameter Modelica.SIunits.Temperature T_start_in(start=Medium.T_default)=
        Medium.T_default "Initialization temperature at pipe inlet"
        annotation (Dialog(tab="Initialization"));
      parameter Modelica.SIunits.Temperature T_start_out(start=Medium.T_default)=
        T_start_in "Initialization temperature at pipe outlet"
        annotation (Dialog(tab="Initialization"));
      parameter Boolean initDelay(start=false) = false
        "Initialize delay for a constant mass flow rate if true, otherwise start from 0"
        annotation (Dialog(tab="Initialization"));
      parameter Modelica.SIunits.MassFlowRate m_flow_start=0 "Initial value of mass flow rate through pipe"
        annotation (Dialog(tab="Initialization", enable=initDelay));

      parameter Real R(unit="(m.K)/W")=1/(kIns*2*Modelica.Constants.pi/
        Modelica.Math.log((dh/2 + dIns)/(dh/2)))
        "Thermal resistance per unit length from fluid to boundary temperature"
        annotation (Dialog(group="Thermal resistance"));

      parameter Real fac=1
        "Factor to take into account flow resistance of bends etc., fac=dp_nominal/dpStraightPipe_nominal";

      parameter Boolean homotopyInitialization = true "= true, use homotopy method"
        annotation(Evaluate=true, Dialog(tab="Advanced"));

      parameter Boolean linearized = false
        "= true, use linear relation between m_flow and dp for any flow rate"
        annotation(Evaluate=true, Dialog(tab="Advanced"));

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort
        "Heat transfer to or from surroundings (heat loss from pipe results in a positive heat flow)"
        annotation (Placement(transformation(extent={{-10,90},{10,110}})));

      IBPSA.Fluid.FixedResistances.BaseClasses.PlugFlowCore cor(
        redeclare final package Medium = Medium,
        final dh=dh,
        final v_nominal=v_nominal,
        final length=length,
        final C=C,
        final R=R,
        final m_flow_small=m_flow_small,
        final m_flow_nominal=m_flow_nominal,
        final T_start_in=T_start_in,
        final T_start_out=T_start_out,
        final m_flow_start=m_flow_start,
        final initDelay=initDelay,
        final from_dp=from_dp,
        final fac=fac,
        final ReC=ReC,
        final thickness=thickness,
        final roughness=roughness,
        final allowFlowReversal=allowFlowReversal,
        final homotopyInitialization=homotopyInitialization,
        final linearized=linearized)
        "Describing the pipe behavior"
        annotation (Placement(transformation(extent={{-10,-10},{10,10}})));

      // In the volume, below, we scale down V and use
      // mSenFac. Otherwise, for air, we would get very large volumes
      // which affect the delay of water vapor and contaminants.
      // See also IBPSA.Fluid.FixedResistances.Validation.PlugFlowPipes.TransportWaterAir
      // for why mSenFac is 10 and not 1000, as this gives more reasonable
      // temperature step response
      IBPSA.Fluid.MixingVolumes.MixingVolume vol(
        redeclare final package Medium = Medium,
        final m_flow_nominal=m_flow_nominal,
        final V=if rho_default > 500 then VEqu else VEqu/1000,
        final nPorts=nPorts + 1,
        final T_start=T_start_out,
        final energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
        final mSenFac = if rho_default > 500 then 1 else 10)
        "Control volume connected to ports_b. Represents equivalent pipe wall thermal capacity."
        annotation (Placement(transformation(extent={{60,20},{80,40}})));

    protected
      parameter Modelica.SIunits.HeatCapacity CPip=
        length*((dh + 2*thickness)^2 - dh^2)*Modelica.Constants.pi/4*cPip*rhoPip "Heat capacity of pipe wall";

      final parameter Modelica.SIunits.Volume VEqu=CPip/(rho_default*cp_default)
        "Equivalent water volume to represent pipe wall thermal inertia";

      parameter Medium.ThermodynamicState sta_default=Medium.setState_pTX(
          T=Medium.T_default,
          p=Medium.p_default,
          X=Medium.X_default) "Default medium state";

      parameter Modelica.SIunits.SpecificHeatCapacity cp_default=
          Medium.specificHeatCapacityCp(state=sta_default)
        "Heat capacity of medium";

      parameter Real C(unit="J/(K.m)")=
        rho_default*Modelica.Constants.pi*(dh/2)^2*cp_default
        "Thermal capacity per unit length of water in pipe";

      parameter Modelica.SIunits.Density rho_default=Medium.density_pTX(
          p=Medium.p_default,
          T=Medium.T_default,
          X=Medium.X_default)
        "Default density (e.g., rho_liquidWater = 995, rho_air = 1.2)"
        annotation (Dialog(group="Advanced"));

    equation
      for i in 1:nPorts loop
        connect(vol.ports[i + 1], ports_b[i])
        annotation (Line(points={{70,20},{72,20},{72,6},{72,0},{100,0}},
            color={0,127,255}));
      end for;
      connect(cor.heatPort, heatPort)
        annotation (Line(points={{0,10},{0,10},{0,100}}, color={191,0,0}));

      connect(cor.port_b, vol.ports[1])
        annotation (Line(points={{10,0},{70,0},{70,20}}, color={0,127,255}));

      connect(cor.port_a, port_a)
        annotation (Line(points={{-10,0},{-56,0},{-100,0}}, color={0,127,255}));
      annotation (
        Line(points={{70,20},{72,20},{72,0},{100,0}}, color={0,127,255}),
        Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
                100,100}})),
        Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
                100}}), graphics={
            Rectangle(
              extent={{-100,40},{100,-40}},
              lineColor={0,0,0},
              fillPattern=FillPattern.HorizontalCylinder,
              fillColor={192,192,192}),
            Rectangle(
              extent={{-100,30},{100,-30}},
              lineColor={0,0,0},
              fillPattern=FillPattern.HorizontalCylinder,
              fillColor={0,127,255}),
            Rectangle(
              extent={{-100,50},{100,40}},
              lineColor={175,175,175},
              fillColor={255,255,255},
              fillPattern=FillPattern.Backward),
            Rectangle(
              extent={{-100,-40},{100,-50}},
              lineColor={175,175,175},
              fillColor={255,255,255},
              fillPattern=FillPattern.Backward),
            Polygon(
              points={{0,90},{40,62},{20,62},{20,38},{-20,38},{-20,62},{-40,62},{0,
                  90}},
              lineColor={0,0,0},
              fillColor={238,46,47},
              fillPattern=FillPattern.Solid),
            Rectangle(
              extent={{-30,30},{28,-30}},
              lineColor={0,0,0},
              fillPattern=FillPattern.HorizontalCylinder,
              fillColor={215,202,187})}),
        Documentation(revisions="<html>
<ul>
<li>
October 23, 2017, by Michael Wetter:<br/>
Revised variable names and documentation to follow guidelines.
Corrected malformed hyperlinks.
</li>
<li>
July 4, 2016 by Bram van der Heijde:<br/>
Introduce <code>pipVol</code>.
</li>
<li>
October 10, 2015 by Marcus Fuchs:<br/>
Copy Icon from KUL implementation and rename model.
Replace resistance and temperature delay by an adiabatic pipe.
</li>
<li>September, 2015 by Marcus Fuchs:<br/>
First implementation.
</li>
</ul>
</html>",     info="<html>
<p>
Pipe with heat loss using the time delay based heat losses and transport
of the fluid using a plug flow model, applicable for simulation of long
pipes such as in district heating and cooling systems.</p>
<p>
This model takes into account transport delay along the pipe length idealized
as a plug flow.
The model also includes thermal inertia of the pipe wall.
</p>
<h4>Implementation</h4>
<p>Heat losses are implemented by
<a href=\"modelica://IBPSA.Fluid.FixedResistances.BaseClasses.PlugFlowHeatLoss\">
IBPSA.Fluid.FixedResistances.BaseClasses.PlugFlowHeatLoss</a>
at each end of the pipe (see
<a href=\"modelica://IBPSA.Fluid.FixedResistances.BaseClasses.PlugFlowCore\">
IBPSA.Fluid.FixedResistances.BaseClasses.PlugFlowCore</a>).
Depending on the flow direction, the temperature difference due to heat losses
is subtracted at the right fluid port.
</p>
<p>
The pressure drop is implemented using
<a href=\"modelica://IBPSA.Fluid.FixedResistances.HydraulicDiameter\">
IBPSA.Fluid.FixedResistances.HydraulicDiameter</a>.
</p>
<p>
The thermal capacity of the pipe wall is implemented as a mixing volume
of the fluid in the pipe, of which the thermal capacity
is equal to that of the pipe wall material.
In addition, this mixing volume allows the hydraulic separation of subsequent pipes.
Thanks to the vectorized implementation of the (design) outlet port,
splits and junctions of pipes can be handled in a numerically efficient way.
<br/>
This mixing volume is not present in the
<a href=\"modelica://IBPSA.Fluid.FixedResistances.BaseClasses.PlugFlowCore\">PlugFlowCore</a> model,
which can be used in cases where mixing volumes at pipe junctions need to
be added manually.
</p>
<h4>Assumptions</h4>
<ul>
<li>
Heat losses are for steady-state operation.
</li>
<li>
The axial heat diffusion in the fluid, the pipe wall and the ground are neglected.
</li>
<li>
The boundary temperature is uniform.
</li>
<li>
The thermal inertia of the pipe wall material is lumped on the side of the pipe
that is connected to <code>ports_b</code>.
</li>
</ul>
<h4>References</h4>
<p>
Full details on the model implementation and experimental validation can be found
in:
</p>
<p>
van der Heijde, B., Fuchs, M., Ribas Tugores, C., Schweiger, G., Sartor, K.,
Basciotti, D., M&uuml;ller, D., Nytsch-Geusen, C., Wetter, M. and Helsen, L.
(2017).<br/>
Dynamic equation-based thermo-hydraulic pipe model for district heating and
cooling systems.<br/>
<i>Energy Conversion and Management</i>, vol. 151, p. 158-169.
<a href=\"https://doi.org/10.1016/j.enconman.2017.08.072\">doi:
10.1016/j.enconman.2017.08.072</a>.</p>
</html>"));
    end PlugFlowPipe_IBPSA;
  end BaseClasses;

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
end Network_with_Parameters;
