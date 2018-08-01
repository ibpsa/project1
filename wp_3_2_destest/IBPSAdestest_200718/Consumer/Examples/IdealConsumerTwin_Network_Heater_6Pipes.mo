within IBPSAdestest_200718.Consumer.Examples;
model IdealConsumerTwin_Network_Heater_6Pipes
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
    fileName=Modelica.Utilities.Files.loadResource("modelica://IBPSAdestest_200718/Resources/Data/DestestHeatDemand/heat_profiles.txt"))
    annotation (Placement(transformation(extent={{-36,70},{-16,90}})));

  replaceable package Medium = IBPSA.Media.Water;
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=5
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
  Modelica.Blocks.Sources.RealExpression realExpression(y=353)
    annotation (Placement(transformation(extent={{-84,-2},{-64,18}})));
  IBPSA.Fluid.HeatExchangers.Heater_T hea1(
    redeclare package Medium = IBPSA.Media.Water,
    dp_nominal=100,
    QMax_flow=18900,
    m_flow_nominal=m_flow_nominal)
                    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-40,20})));
  IBPSA.Fluid.Sources.FixedBoundary bou1(redeclare package Medium = Medium,
      nPorts=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-36,-12})));
  Network_with_Parameters.BaseClasses.PlugFlowPipe_IBPSA
                                 pipeba(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water,
    length=5,
    nPorts=2)                                     annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-40,54})));
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
  IdealConsumerTwin con1(
    redeclare package Medium = Medium,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{-90,50},{-110,70}})));
  Network_with_Parameters.BaseClasses.PlugFlowPipe_IBPSA
                                 pipeba2(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water,
    nPorts=1,
    length=5)                                     annotation (Placement(
        transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={-72,64})));
  Network_with_Parameters.BaseClasses.PlugFlowPipe_IBPSA
                                 pipeba3(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water,
    nPorts=1,
    length=5)                                     annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={16,56})));
  Network_with_Parameters.BaseClasses.PlugFlowPipe_IBPSA
                                 pipeba4(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water,
    length=5,
    nPorts=2)                                     annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-34,46})));
  Network_with_Parameters.BaseClasses.PlugFlowPipe_IBPSA
                                 pipeba5(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water,
    nPorts=1,
    length=5)                                     annotation (Placement(
        transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={-58,56})));
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
  connect(hea1.port_b, pipeba.port_a)
    annotation (Line(points={{-40,30},{-40,44}}, color={0,127,255}));
  connect(pipeba1.ports_b[1], senEntFloIn.port_a)
    annotation (Line(points={{12,64},{40,64}}, color={0,127,255}));
  connect(pipeba.ports_b[1], pipeba1.port_a)
    annotation (Line(points={{-38,64},{-8,64}}, color={0,127,255}));
  connect(con1.QDem, con.QDem) annotation (Line(points={{-100,70},{-100,80},{80,
          80},{80,70}}, color={0,0,127}));
  connect(pipeba.ports_b[2], pipeba2.port_a)
    annotation (Line(points={{-42,64},{-62,64}}, color={0,127,255}));
  connect(pipeba2.ports_b[1], con1.port_a)
    annotation (Line(points={{-82,64},{-90,64}}, color={0,127,255}));
  connect(pipeba3.port_a, pipeba4.ports_b[1])
    annotation (Line(points={{6,56},{-32,56}}, color={0,127,255}));
  connect(pipeba4.port_a, hea1.port_a)
    annotation (Line(points={{-34,36},{-34,10},{-40,10}}, color={0,127,255}));
  connect(pipeba4.ports_b[2], pipeba5.port_a)
    annotation (Line(points={{-36,56},{-48,56}}, color={0,127,255}));
  connect(pipeba5.ports_b[1], con1.port_b) annotation (Line(points={{-68,56},{-80,
          56},{-80,55.8},{-90,55.8}}, color={0,127,255}));
  connect(pipeba3.ports_b[1], senEntFloOut.port_b)
    annotation (Line(points={{26,56},{46,56}}, color={0,127,255}));
  connect(bou1.ports[1], hea1.port_a)
    annotation (Line(points={{-36,-2},{-36,10},{-40,10}}, color={0,127,255}));
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
end IdealConsumerTwin_Network_Heater_6Pipes;
