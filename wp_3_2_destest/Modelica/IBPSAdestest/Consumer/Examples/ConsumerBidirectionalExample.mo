within IBPSAdestest.Consumer.Examples;
model ConsumerBidirectionalExample
  extends Modelica.Icons.Example;
  replaceable package Medium = IBPSA.Media.Water "Medium model";

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    tableName="data",
    columns=2:18,
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://IBPSAdestest/Resources/Data/DestestHeatDemand/heat_profiles.txt"))
    annotation (Placement(transformation(extent={{0,32},{20,52}})));
  IBPSAdestest.Consumer.ConsumerBidirectional
    idealConsumerBidirectional_heating(
    redeclare package Medium = Medium,
    Q_hea_nominal=20000,
    Q_coo_nominal=-20000)
    annotation (Placement(transformation(extent={{60,0},{80,20}})));
  IBPSAdestest.Consumer.ConsumerBidirectional
    idealConsumerBidirectional_cooling(
    redeclare package Medium = Medium,
    Q_hea_nominal=20000,
    Q_coo_nominal=-20000)
    annotation (Placement(transformation(extent={{60,-40},{80,-20}})));
public
  Buildings.Fluid.FixedResistances.Pipe     Supply_5_b(
    redeclare package Medium = Medium,
    length=50,
    m_flow_nominal=2,
    thicknessIns=0.1,
    lambdaIns=0.035,
    T_start=289.15)
    annotation (Placement(transformation(extent={{0,-2},{-12,10}})));
public
  Buildings.Fluid.FixedResistances.Pipe     Return_5_b(
    redeclare package Medium = Medium,
    length=50,
    m_flow_nominal=2,
    thicknessIns=0.1,
    lambdaIns=0.035,
    T_start=289.15)
    annotation (Placement(transformation(extent={{-12,-28},{0,-16}})));
public
  Buildings.Fluid.FixedResistances.Pipe     Supply_5_b1(
    redeclare package Medium = Medium,
    length=50,
    m_flow_nominal=2,
    thicknessIns=0.1,
    lambdaIns=0.035,
    T_start=285.15)
    annotation (Placement(transformation(extent={{0,16},{-12,28}})));
public
  Buildings.Fluid.FixedResistances.Pipe     Return_5_b1(
    redeclare package Medium = Medium,
    length=50,
    m_flow_nominal=2,
    thicknessIns=0.1,
    lambdaIns=0.035,
    T_start=285.15)
    annotation (Placement(transformation(extent={{-12,-48},{0,-36}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=16 + 273.15)
    annotation (Placement(transformation(extent={{-74,82},{-54,102}})));
  Modelica.Blocks.Sources.RealExpression realExpression1(y=12 + 273.15)
    annotation (Placement(transformation(extent={{-100,82},{-80,102}})));
  Modelica.Blocks.Sources.RealExpression realExpression2(y=0)
    annotation (Placement(transformation(extent={{20,82},{40,102}})));
  IBPSA.Fluid.Sources.FixedBoundary bou(          redeclare package Medium =
        Medium, nPorts=1)
    annotation (Placement(transformation(extent={{-80,-70},{-60,-50}})));
  Modelica.Fluid.Sensors.Temperature temperature_cold(redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-102,50},{-82,70}})));
  Modelica.Fluid.Sensors.Temperature temperature_warm(redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-36,50},{-16,70}})));
  Buildings.Experimental.DistrictHeatingCooling.Plants.Ideal_T ideal_T(
      redeclare package Medium = Medium, m_flow_nominal=2)
    annotation (Placement(transformation(extent={{-72,40},{-52,60}})));
  Modelica.Fluid.Sensors.TemperatureTwoPort temperature_cold_consumerCooling(
      redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{46,-76},{26,-56}})));
  Modelica.Fluid.Sensors.TemperatureTwoPort temperature_warm_consumerCooling(
      redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{30,-32},{50,-12}})));
  Modelica.Blocks.Math.Add add
    annotation (Placement(transformation(extent={{38,64},{58,84}})));
  Modelica.Blocks.Sources.Sine sine(
    amplitude=6000,
    offset=0,
    freqHz=0.00001)
    annotation (Placement(transformation(extent={{0,66},{20,86}})));
  IBPSA.Utilities.Math.SmoothMax smoothMax(deltaX=0.1)   annotation (Placement(
        transformation(
        extent={{-10,10},{10,-10}},
        rotation=270,
        origin={70,38})));
equation
  connect(combiTimeTable.y[2], idealConsumerBidirectional_cooling.CDem)
    annotation (Line(points={{21,42},{28,42},{28,26},{90,26},{90,-12},{74,-12},
          {74,-20}},                                                      color=
         {0,0,127}));
  connect(realExpression2.y, idealConsumerBidirectional_heating.CDem)
    annotation (Line(points={{41,92},{74,92},{74,20}}, color={0,0,127}));
  connect(realExpression2.y, idealConsumerBidirectional_cooling.HDem)
    annotation (Line(points={{41,92},{88,92},{88,-8},{70,-8},{70,-20}}, color={0,
          0,127}));
  connect(temperature_warm.port, ideal_T.port_b) annotation (Line(points={{-26,50},
          {-52,50}},                   color={238,46,47}));
  connect(temperature_cold.port, ideal_T.port_a) annotation (Line(points={{-92,50},
          {-72,50}},                    color={0,127,255}));
  connect(ideal_T.TSetHea, realExpression.y) annotation (Line(points={{-74,58},
          {-74,76},{-48,76},{-48,92},{-53,92}},color={0,0,127}));
  connect(ideal_T.TSetCoo, realExpression1.y) annotation (Line(points={{-74,54},
          {-78,54},{-78,82},{-78,82},{-78,92},{-79,92}}, color={0,0,127}));
  connect(idealConsumerBidirectional_cooling.port_b,
    temperature_cold_consumerCooling.port_a) annotation (Line(points={{60,-34.2},
          {54,-34.2},{54,-66},{46,-66}}, color={0,127,255}));
  connect(idealConsumerBidirectional_cooling.port_a,
    temperature_warm_consumerCooling.port_b) annotation (Line(points={{60,-26},{
          56,-26},{56,-22},{50,-22}}, color={238,46,47}));
  connect(idealConsumerBidirectional_heating.HDem, smoothMax.y)
    annotation (Line(points={{70,20},{70,27}},         color={0,0,127}));
  connect(smoothMax.u1, add.y) annotation (Line(points={{64,50},{64,74},{59,74}},
                    color={0,0,127}));
  connect(smoothMax.u2, realExpression2.y) annotation (Line(points={{76,50},{76,
          50},{76,76},{76,76},{76,92},{41,92}}, color={0,0,127}));
  connect(Return_5_b.port_a, Supply_5_b.port_b) annotation (Line(points={{-12,-22},
          {-38,-22},{-38,4},{-12,4}}, color={238,46,47}));
  connect(Return_5_b.port_b, Supply_5_b.port_a) annotation (Line(points={{0,-22},
          {10,-22},{10,4},{0,4}}, color={238,46,47}));
  connect(temperature_warm_consumerCooling.port_a, Return_5_b.port_b)
    annotation (Line(points={{30,-22},{0,-22}}, color={238,46,47}));
  connect(idealConsumerBidirectional_heating.port_a, Supply_5_b.port_a)
    annotation (Line(points={{60,14},{52,14},{52,4},{0,4}}, color={238,46,47}));
  connect(Supply_5_b.port_b, ideal_T.port_b) annotation (Line(points={{-12,4},{-40,
          4},{-40,50},{-52,50}}, color={238,46,47}));
  connect(Return_5_b1.port_a, Supply_5_b1.port_b) annotation (Line(points={{-12,
          -42},{-46,-42},{-46,22},{-12,22}}, color={0,127,255}));
  connect(Return_5_b1.port_b, Supply_5_b1.port_a) annotation (Line(points={{0,-42},
          {18,-42},{18,22},{0,22}}, color={0,127,255}));
  connect(temperature_cold_consumerCooling.port_b, Return_5_b1.port_b)
    annotation (Line(points={{26,-66},{10,-66},{10,-42},{0,-42}},
        color={0,127,255}));
  connect(idealConsumerBidirectional_heating.port_b, Supply_5_b1.port_a)
    annotation (Line(points={{60,5.8},{48,5.8},{48,6},{44,6},{44,22},{0,22}},
        color={0,127,255}));
  connect(Return_5_b1.port_a, ideal_T.port_a) annotation (Line(points={{-12,-42},
          {-76,-42},{-76,50},{-72,50}}, color={0,127,255}));
  connect(bou.ports[1], Return_5_b1.port_a) annotation (Line(points={{-60,-60},
          {-14,-60},{-14,-42},{-12,-42}},color={0,127,255}));
  connect(add.u2, combiTimeTable.y[1]) annotation (Line(points={{36,68},{28,68},
          {28,42},{21,42}}, color={0,0,127}));
  connect(sine.y, add.u1) annotation (Line(points={{21,76},{32,76},{32,80},{36,
          80}}, color={0,0,127}));
  annotation (Documentation(info="<html>
<p>
Example of <a href=\"modelica://IBPSAdestest.Consumer.ConsumerBidirectional\">ConsumerBidirectional</a> model using data from the DesTest building heat demand exercise. 
</p>
</html>", revisions="<html>
<ul>
<li>November 8, 2018, by Felix Bünning:
<br/>First implementation</li>
</ul>
</html>"),
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)));
end ConsumerBidirectionalExample;
