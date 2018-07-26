within IBPSAdestest_200718.Consumer.Examples;
model IdealConsumerTwin_Network_Heater_2Pipes
  "Example of idealized twin connection consumer model"
  extends Modelica.Icons.Example;
  IdealConsumerTwin con(
    redeclare package Medium = Medium,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{70,50},{90,70}})));
  Modelica.Blocks.Sources.CombiTimeTable heaDem(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    tableName="data",
    columns=2:18,
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://IBPSAdestest_200718/Resources/Data/DestestHeatDemand/heat_profiles.txt"))
    annotation (Placement(transformation(extent={{-36,70},{-16,90}})));

  replaceable package Medium = IBPSA.Media.Water;
  IBPSA.Fluid.Sensors.TemperatureTwoPort senTem(redeclare package Medium =
        Medium, m_flow_nominal=m_flow_nominal) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-14,18})));
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=1
    "Nominal mass flow rate, used for regularization near zero flow";
  IBPSA.Fluid.Sensors.EnthalpyFlowRate senEntFloIn(redeclare package Medium =
        Medium, m_flow_nominal=m_flow_nominal)
    annotation (Placement(transformation(extent={{40,54},{60,74}})));
  IBPSA.Fluid.Sensors.EnthalpyFlowRate senEntFloOut(redeclare package Medium =
        Medium, m_flow_nominal=m_flow_nominal) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={56,56})));
  Modelica.Blocks.Math.Feedback heaExtr
    annotation (Placement(transformation(extent={{80,80},{100,100}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=363)
    annotation (Placement(transformation(extent={{-84,-2},{-64,18}})));
  IBPSA.Fluid.HeatExchangers.Heater_T hea1(
    redeclare package Medium = IBPSA.Media.Water,
    dp_nominal=100,
    m_flow_nominal=1,
    QMax_flow=160000)
                    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-40,20})));
  IBPSA.Fluid.Sources.FixedBoundary bou1(redeclare package Medium = Medium,
      nPorts=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-32,-12})));
  Network_with_Parameters.BaseClasses.PlugFlowPipe_IBPSA
                                 pipeba(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water,
    nPorts=1,
    length=5)                                     annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-40,46})));
  Network_with_Parameters.BaseClasses.PlugFlowPipe_IBPSA
                                 pipeba1(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water,
    nPorts=1,
    length=5)                                     annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={2,64})));
equation
  connect(heaDem.y[1], con.QDem)
    annotation (Line(points={{-15,80},{80,80},{80,70}}, color={0,0,127}));
  connect(senEntFloOut.port_a, con.port_b)
    annotation (Line(points={{66,56},{66,55.8},{70,55.8}},
                                                         color={0,127,255}));
  connect(senEntFloIn.H_flow, heaExtr.u1)
    annotation (Line(points={{50,75},{50,90},{82,90}},   color={0,0,127}));
  connect(senEntFloOut.H_flow, heaExtr.u2)
    annotation (Line(points={{56,45},{90,45},{90,82}},   color={0,0,127}));
  connect(senEntFloIn.port_b, con.port_a)
    annotation (Line(points={{60,64},{70,64}}, color={0,127,255}));
  connect(hea1.TSet, realExpression.y)
    annotation (Line(points={{-48,8},{-63,8}}, color={0,0,127}));
  connect(hea1.port_a, senTem.port_b)
    annotation (Line(points={{-40,10},{-40,8},{-14,8}}, color={0,127,255}));
  connect(bou1.ports[1], senTem.port_b)
    annotation (Line(points={{-32,-2},{-32,8},{-14,8}}, color={0,127,255}));
  connect(senTem.port_a, senEntFloOut.port_b)
    annotation (Line(points={{-14,28},{-14,56},{46,56}}, color={0,127,255}));
  connect(hea1.port_b, pipeba.port_a)
    annotation (Line(points={{-40,30},{-40,36}}, color={0,127,255}));
  connect(pipeba.ports_b[1], pipeba1.port_a)
    annotation (Line(points={{-40,56},{-40,64},{-8,64}}, color={0,127,255}));
  connect(pipeba1.ports_b[1], senEntFloIn.port_a)
    annotation (Line(points={{12,64},{40,64}}, color={0,127,255}));
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
end IdealConsumerTwin_Network_Heater_2Pipes;
