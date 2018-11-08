within IBPSAdestest.Consumer.Examples;
model ConsumerBidirectionalStorageExample
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
  IBPSAdestest.Consumer.ConsumerBidirectionalStorage
    idealConsumerBidirectional_heating(
    redeclare package Medium = Medium,
    Q_hea_nominal=20000,
    Q_coo_nominal=20000)
    annotation (Placement(transformation(extent={{60,-2},{80,18}})));
  IBPSAdestest.Consumer.ConsumerBidirectionalStorage
    idealConsumerBidirectional_cooling(
    redeclare package Medium = Medium,
    Q_hea_nominal=20000,
    Q_coo_nominal=20000)
    annotation (Placement(transformation(extent={{60,-38},{80,-18}})));
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
    annotation (Placement(transformation(extent={{-12,-30},{0,-18}})));
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
    annotation (Placement(transformation(extent={{-62,80},{-42,100}})));
  Modelica.Blocks.Sources.RealExpression realExpression1(y=12 + 273.15)
    annotation (Placement(transformation(extent={{-96,80},{-76,100}})));
  Modelica.Blocks.Sources.RealExpression realExpression2(y=0)
    annotation (Placement(transformation(extent={{20,82},{40,102}})));
  IBPSA.Fluid.Sources.FixedBoundary bou(          redeclare package Medium =
        Medium, nPorts=1)
    annotation (Placement(transformation(extent={{-80,-70},{-60,-50}})));
  Modelica.Fluid.Sensors.Temperature temperature_cold(redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-104,50},{-84,70}})));
  Modelica.Fluid.Sensors.Temperature temperature_warm(redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-32,50},{-12,70}})));
  Buildings.Experimental.DistrictHeatingCooling.Plants.Ideal_T ideal_T(
      redeclare package Medium = Medium, m_flow_nominal=2)
    annotation (Placement(transformation(extent={{-72,40},{-52,60}})));
  Modelica.Fluid.Sensors.TemperatureTwoPort temperature_cold_consumerCooling(
      redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{50,-52},{30,-32}})));
  Modelica.Fluid.Sensors.TemperatureTwoPort temperature_warm_consumerCooling(
      redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{30,-34},{50,-14}})));
  Modelica.Blocks.Math.Add add
    annotation (Placement(transformation(extent={{42,60},{62,80}})));
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
    annotation (Line(points={{21,42},{42,42},{42,24},{88,24},{88,-10},{74,-10},
          {74,-18}},                                                      color=
         {0,0,127}));
  connect(realExpression2.y, idealConsumerBidirectional_heating.CDem)
    annotation (Line(points={{41,92},{74,92},{74,18}}, color={0,0,127}));
  connect(realExpression2.y, idealConsumerBidirectional_cooling.HDem)
    annotation (Line(points={{41,92},{88,92},{88,-8},{70,-8},{70,-18}}, color={0,
          0,127}));
  connect(temperature_warm.port, ideal_T.port_b) annotation (Line(points={{-22,50},
          {-52,50}},                   color={238,46,47}));
  connect(temperature_cold.port, ideal_T.port_a) annotation (Line(points={{-94,50},
          {-72,50}},                    color={0,127,255}));
  connect(ideal_T.TSetHea, realExpression.y) annotation (Line(points={{-74,58},{
          -74,76},{-34,76},{-34,90},{-41,90}}, color={0,0,127}));
  connect(ideal_T.TSetCoo, realExpression1.y) annotation (Line(points={{-74,54},
          {-84,54},{-84,82},{-68,82},{-68,90},{-75,90}}, color={0,0,127}));
  connect(idealConsumerBidirectional_cooling.port_b,
    temperature_cold_consumerCooling.port_a) annotation (Line(points={{60,-32.2},
          {54,-32.2},{54,-42},{50,-42}}, color={0,127,255}));
  connect(idealConsumerBidirectional_cooling.port_a,
    temperature_warm_consumerCooling.port_b)
    annotation (Line(points={{60,-24},{50,-24}}, color={238,46,47}));
  connect(idealConsumerBidirectional_heating.HDem, smoothMax.y)
    annotation (Line(points={{70,18},{70,27}},         color={0,0,127}));
  connect(smoothMax.u1, add.y) annotation (Line(points={{64,50},{64,60},{63,60},
          {63,70}}, color={0,0,127}));
  connect(smoothMax.u2, realExpression2.y) annotation (Line(points={{76,50},{76,
          92},{41,92}},                         color={0,0,127}));
  connect(Return_5_b.port_a, Supply_5_b.port_b) annotation (Line(points={{-12,-24},
          {-30,-24},{-30,4},{-12,4}}, color={238,46,47}));
  connect(Return_5_b.port_b, Supply_5_b.port_a) annotation (Line(points={{0,-24},
          {14,-24},{14,4},{0,4}}, color={238,46,47}));
  connect(temperature_warm_consumerCooling.port_a, Return_5_b.port_b)
    annotation (Line(points={{30,-24},{0,-24}}, color={238,46,47}));
  connect(idealConsumerBidirectional_heating.port_a, Supply_5_b.port_a)
    annotation (Line(points={{60,12},{52,12},{52,4},{0,4}}, color={238,46,47}));
  connect(Supply_5_b.port_b, ideal_T.port_b) annotation (Line(points={{-12,4},{-40,
          4},{-40,50},{-52,50}}, color={238,46,47}));
  connect(Return_5_b1.port_a, Supply_5_b1.port_b) annotation (Line(points={{-12,
          -42},{-46,-42},{-46,22},{-12,22}}, color={0,127,255}));
  connect(Return_5_b1.port_b, Supply_5_b1.port_a) annotation (Line(points={{0,-42},
          {22,-42},{22,22},{0,22}}, color={0,127,255}));
  connect(temperature_cold_consumerCooling.port_b, Return_5_b1.port_b)
    annotation (Line(points={{30,-42},{0,-42}},                   color={0,127,255}));
  connect(idealConsumerBidirectional_heating.port_b, Supply_5_b1.port_a)
    annotation (Line(points={{60,3.8},{54,3.8},{54,10},{54,10},{54,16},{54,16},
          {54,22},{0,22}},
        color={0,127,255}));
  connect(Return_5_b1.port_a, ideal_T.port_a) annotation (Line(points={{-12,-42},
          {-76,-42},{-76,50},{-72,50}}, color={0,127,255}));
  connect(bou.ports[1], Return_5_b1.port_a) annotation (Line(points={{-60,-60},
          {-14,-60},{-14,-42},{-12,-42}},color={0,127,255}));
  connect(add.u1, sine.y)
    annotation (Line(points={{40,76},{21,76}}, color={0,0,127}));
  connect(combiTimeTable.y[1], add.u2) annotation (Line(points={{21,42},{30,42},
          {30,64},{40,64}}, color={0,0,127}));
  annotation (Documentation(info="<html>
<p>
Example of <a href=\"modelica://IBPSAdestest.Consumer.ConsumerBidirectionalStorage\">ConsumerBidirectionalStorage</a> model using data from the DesTest building heat demand exercise. 
</p>
</html>", revisions="<html>
<ul>
<li>November 8, 2018, by Felix Bünning:
<br/>First implementation</li>
</ul>
</html>"),
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)));
end ConsumerBidirectionalStorageExample;
