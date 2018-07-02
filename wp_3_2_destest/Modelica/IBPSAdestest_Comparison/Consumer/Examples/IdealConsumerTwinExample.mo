within IBPSAdestest_Comparison.Consumer.Examples;
model IdealConsumerTwinExample
  "Example of idealized twin connection consumer model"
  extends Modelica.Icons.Example;
  IdealConsumerTwin con(
    redeclare package Medium = Medium,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{20,0},{40,20}})));
  Modelica.Blocks.Sources.CombiTimeTable heaDem(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    tableName="data",
    columns=2:18,
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://IBPSAdestest/Resources/Data/DestestHeatDemand/heat_profiles.txt"))
    annotation (Placement(transformation(extent={{-60,60},{-40,80}})));

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
        origin={10,-46})));
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=1
    "Nominal mass flow rate, used for regularization near zero flow";
  IBPSA.Fluid.Sensors.EnthalpyFlowRate senEntFloIn(redeclare package Medium =
        Medium, m_flow_nominal=m_flow_nominal)
    annotation (Placement(transformation(extent={{-48,4},{-28,24}})));
  IBPSA.Fluid.Sensors.EnthalpyFlowRate senEntFloOut(redeclare package Medium =
        Medium, m_flow_nominal=m_flow_nominal) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={10,-14})));
  Modelica.Blocks.Math.Feedback heaExtr
    annotation (Placement(transformation(extent={{40,40},{60,60}})));
equation
  connect(heaDem.y[1], con.QDem)
    annotation (Line(points={{-39,70},{30,70},{30,20}}, color={0,0,127}));
  connect(bou1.ports[1], senTem.port_b)
    annotation (Line(points={{10,-60},{10,-56}}, color={0,127,255}));
  connect(sou.ports[1], senEntFloIn.port_a)
    annotation (Line(points={{-60,14},{-48,14}}, color={0,127,255}));
  connect(senEntFloIn.port_b, con.port_a)
    annotation (Line(points={{-28,14},{20,14}}, color={0,127,255}));
  connect(senTem.port_a, senEntFloOut.port_b)
    annotation (Line(points={{10,-36},{10,-24}}, color={0,127,255}));
  connect(senEntFloOut.port_a, con.port_b)
    annotation (Line(points={{10,-4},{10,5.8},{20,5.8}}, color={0,127,255}));
  connect(senEntFloIn.H_flow, heaExtr.u1)
    annotation (Line(points={{-38,25},{-38,50},{42,50}}, color={0,0,127}));
  connect(senEntFloOut.H_flow, heaExtr.u2)
    annotation (Line(points={{21,-14},{50,-14},{50,42}}, color={0,0,127}));
  annotation (Documentation(info="<html>
<p>
Example of <a href=\"modelica://IBPSAdestest.Consumer.IdealConsumerTwin\">IdealConsumerTwin</a> model using data from the DesTest building heat demand exercise. 
</p>
</html>", revisions="<html>
<ul>
<li>June 7, 2018, by Bram van der Heijde:
<br/>First implementation</li>
</ul>
</html>"), __Dymola_Commands(file=
          "Resources/Scripts/Dymola/IBPSAdestest/Consumer/Examples/IdealConsumerTwinExample.mos"
        "Simulate and plot"));
end IdealConsumerTwinExample;
