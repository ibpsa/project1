within IBPSAdestest_200718.Consumer.Examples;
model IdealConsumerTwin_Network_Heater
  "Example of idealized twin connection consumer model"
  extends Modelica.Icons.Example;
  IdealConsumerTwin con(
    redeclare package Medium = Medium,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{60,50},{80,70}})));
  Modelica.Blocks.Sources.CombiTimeTable heaDem(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    tableName="data",
    columns=2:18,
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://IBPSAdestest/Resources/Data/DestestHeatDemand/heat_profiles.txt"))
    annotation (Placement(transformation(extent={{-36,70},{-16,90}})));

  IBPSA.Fluid.Sources.FixedBoundary bou1(nPorts=1, redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=90,
        origin={50,-14})));
  replaceable package Medium = IBPSA.Media.Water;
  IBPSA.Fluid.Sensors.TemperatureTwoPort senTem(redeclare package Medium =
        Medium, m_flow_nominal=m_flow_nominal) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={50,10})));
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=1
    "Nominal mass flow rate, used for regularization near zero flow";
  IBPSA.Fluid.Sensors.EnthalpyFlowRate senEntFloIn(redeclare package Medium =
        Medium, m_flow_nominal=m_flow_nominal)
    annotation (Placement(transformation(extent={{30,54},{50,74}})));
  IBPSA.Fluid.Sensors.EnthalpyFlowRate senEntFloOut(redeclare package Medium =
        Medium, m_flow_nominal=m_flow_nominal) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={50,40})));
  Modelica.Blocks.Math.Feedback heaExtr
    annotation (Placement(transformation(extent={{80,80},{100,100}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=333)
    annotation (Placement(transformation(extent={{-24,8},{-4,28}})));
  IBPSA.Fluid.HeatExchangers.Heater_T hea1(
    redeclare package Medium = IBPSA.Media.Water,
    m_flow_nominal=5,
    dp_nominal=100) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={20,30})));
equation
  connect(heaDem.y[1], con.QDem)
    annotation (Line(points={{-15,80},{70,80},{70,70}}, color={0,0,127}));
  connect(bou1.ports[1], senTem.port_b)
    annotation (Line(points={{50,-4},{50,0}},    color={0,127,255}));
  connect(senTem.port_a, senEntFloOut.port_b)
    annotation (Line(points={{50,20},{50,30}},   color={0,127,255}));
  connect(senEntFloOut.port_a, con.port_b)
    annotation (Line(points={{50,50},{50,55.8},{60,55.8}},
                                                         color={0,127,255}));
  connect(senEntFloIn.H_flow, heaExtr.u1)
    annotation (Line(points={{40,75},{40,90},{82,90}},   color={0,0,127}));
  connect(senEntFloOut.H_flow, heaExtr.u2)
    annotation (Line(points={{61,40},{90,40},{90,82}},   color={0,0,127}));
  connect(senEntFloIn.port_b, con.port_a)
    annotation (Line(points={{50,64},{60,64}}, color={0,127,255}));
  connect(hea1.port_b, senEntFloIn.port_a)
    annotation (Line(points={{20,40},{20,64},{30,64}}, color={0,127,255}));
  connect(hea1.TSet, realExpression.y)
    annotation (Line(points={{12,18},{-3,18}}, color={0,0,127}));
  connect(hea1.port_a, senTem.port_b)
    annotation (Line(points={{20,20},{20,0},{50,0}}, color={0,127,255}));
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
        "Simulate and plot"),
    Diagram(coordinateSystem(extent={{-80,-60},{100,100}})),
    Icon(coordinateSystem(extent={{-80,-60},{100,100}})));
end IdealConsumerTwin_Network_Heater;
