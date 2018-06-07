within IBPSAdestest.Consumer.Examples;
model IdealConsumerTwinExample
  "Example of idealized twin connection consumer model"
  extends Modelica.Icons.Example;
  IdealConsumerTwin con(
    redeclare package Medium = Medium,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0.0001,
    T_start=323.15)
    annotation (Placement(transformation(extent={{20,0},{40,20}})));
  Modelica.Blocks.Sources.CombiTimeTable heaDem(
    tableOnFile=true,
    fileName="C:/Users/u0094934/Documents/IBPSA-project1/wp_3_2_destest/Modelica/Data/heat_profiles.txt",
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    tableName="data",
    columns=2:18)
    annotation (Placement(transformation(extent={{-40,40},{-20,60}})));

  IBPSA.Fluid.Sources.Boundary_pT sou(
    nPorts=1,
    redeclare package Medium = Medium,
    p=200000,
    T=323.15) annotation (Placement(transformation(extent={{-80,4},{-60,24}})));
  IBPSA.Fluid.Sources.FixedBoundary bou1(nPorts=1, redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=90,
        origin={10,-70})));
  replaceable package Medium = IBPSA.Media.Water;
  IBPSA.Fluid.Sensors.TemperatureTwoPort senTem(redeclare package Medium =
        Medium, m_flow_nominal=m_flow_nominal) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={10,-30})));
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=1
    "Nominal mass flow rate, used for regularization near zero flow";
equation
  connect(heaDem.y[1], con.QDem)
    annotation (Line(points={{-19,50},{30,50},{30,20}}, color={0,0,127}));
  connect(sou.ports[1], con.port_a) annotation (Line(points={{-60,14},{20,14}},
                            color={0,127,255}));
  connect(bou1.ports[1], senTem.port_b)
    annotation (Line(points={{10,-60},{10,-40}}, color={0,127,255}));
  connect(senTem.port_a, con.port_b)
    annotation (Line(points={{10,-20},{10,5.8},{20,5.8}}, color={0,127,255}));
  annotation (Documentation(info="<html>
<p>
Example of <a href=\"modelica://IBPSAdestest.Consumer.IdealConsumerTwin\">IdealConsumerTwin</a> model using data from the DesTest building heat demand exercise. 
</p>
</html>", revisions="<html>
<ul>
<li>June 7, 2018, by Bram van der Heijde:
<br/>First implementation</li>
</ul>
</html>"));
end IdealConsumerTwinExample;
