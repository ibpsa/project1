within IBPSAdestest_200718.Consumer.Examples;
model IdealConsumerTwinNetworkExample
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

  IBPSA.Fluid.Sources.FixedBoundary bou1(nPorts=1, redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=90,
        origin={10,-76})));
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
  IBPSA.Fluid.HeatExchangers.HeaterCooler_u hea(
    dp_nominal=500,
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=m_flow_nominal,
    allowFlowReversal=false,
    Q_flow_nominal=3)     annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-100,14})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=333)
    annotation (Placement(transformation(extent={{-156,10},{-136,30}})));
  IBPSA.Fluid.Storage.Stratified tan(
    hTan=1,
    dIns=0.01,
    redeclare package Medium = IBPSA.Media.Water,
    allowFlowReversal=false,
    VTan=0.5,
    m_flow_nominal=m_flow_nominal)
    annotation (Placement(transformation(extent={{-14,4},{6,24}})));
equation
  connect(heaDem.y[1], con.QDem)
    annotation (Line(points={{-39,70},{30,70},{30,20}}, color={0,0,127}));
  connect(bou1.ports[1], senTem.port_b)
    annotation (Line(points={{10,-66},{10,-56}}, color={0,127,255}));
  connect(senTem.port_a, senEntFloOut.port_b)
    annotation (Line(points={{10,-36},{10,-24}}, color={0,127,255}));
  connect(senEntFloOut.port_a, con.port_b)
    annotation (Line(points={{10,-4},{10,5.8},{20,5.8}}, color={0,127,255}));
  connect(senEntFloIn.H_flow, heaExtr.u1)
    annotation (Line(points={{-38,25},{-38,50},{42,50}}, color={0,0,127}));
  connect(senEntFloOut.H_flow, heaExtr.u2)
    annotation (Line(points={{21,-14},{50,-14},{50,42}}, color={0,0,127}));
  connect(realExpression.y, hea.u)
    annotation (Line(points={{-135,20},{-112,20}}, color={0,0,127}));
  connect(hea.port_a, senEntFloOut.port_b) annotation (Line(points={{-110,14},{
          -120,14},{-120,-50},{10,-50},{10,-24}}, color={0,127,255}));
  connect(tan.port_a, senEntFloIn.port_b)
    annotation (Line(points={{-14,14},{-28,14}}, color={0,127,255}));
  connect(tan.port_b, con.port_a)
    annotation (Line(points={{6,14},{20,14}}, color={0,127,255}));
  connect(hea.port_b, senEntFloIn.port_a)
    annotation (Line(points={{-90,14},{-48,14}}, color={0,127,255}));
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
end IdealConsumerTwinNetworkExample;
