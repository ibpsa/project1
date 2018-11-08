within IBPSAdestest.Consumer;
model ConsumerBidirectional
  "Basic consumer model for DesTest with a fixed temperature drop, decentralized pump and ideal mass flow control"
  extends IBPSAdestest.Consumer.BaseClasses.EndNode_twoport;

  parameter Modelica.SIunits.TemperatureDifference deltaT=4
    "Desired temperature difference between warm and cold temperature line";

  parameter Modelica.SIunits.Temperature T_sup_coo=273.15+10
    "Supply temperature cooling (building side)";

  parameter Modelica.SIunits.Temperature T_ret_coo=273.15+15
    "Return temperature cooling (building side)";

  parameter Modelica.SIunits.Temperature T_sup_hea=273.15+35
    "Supply temperature heating (building side)";

  parameter Modelica.SIunits.Temperature T_ret_hea=273.15+25
    "Return temperature heating (building side)";

  parameter Real eta_chi=0.3
    "Carnot efficiency chiller";

  parameter Real eta_hea=0.3
    "Carnot efficiency heat pump";

  parameter Modelica.SIunits.HeatFlowRate Q_hea_nominal=10000
    "Nominal heat flow for heating";

  parameter Modelica.SIunits.HeatFlowRate Q_coo_nominal=10000
    "Nominal heat flow for cooling (positive)";

  parameter Modelica.SIunits.Pressure dp_nominal(displayUnit="Pa")=10000
    "Pressure difference at nominal flow rate (for each flow leg)";

  Modelica.Blocks.Interfaces.RealInput HDem "Control input" annotation (
      Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={0,100})));

  Modelica.Blocks.Interfaces.RealInput CDem "Control input" annotation (
      Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={40,100})));
  IBPSA.Fluid.Movers.FlowControlled_m_flow pum_hea(
                                               redeclare package Medium =
        Medium,
    m_flow_nominal=Q_hea_nominal/(deltaT*cp_default),
    addPowerToMedium=false,
    use_inputFilter=false,
    T_start=289.15)
    annotation (Placement(transformation(extent={{-44,2},{-24,-18}})));
  IBPSA.Fluid.Movers.FlowControlled_m_flow pumcoo(
                                               redeclare package Medium =
        Medium,
    addPowerToMedium=false,
    use_inputFilter=false,
    m_flow_nominal=-Q_coo_nominal/(deltaT*cp_default),
    T_start=285.15)
    annotation (Placement(transformation(extent={{-60,-90},{-40,-110}})));
  IBPSA.Fluid.HeatPumps.Carnot_TCon heaPum(
    redeclare package Medium1 = Medium,
    redeclare package Medium2 = Medium,
    etaCarnot_nominal=eta_hea,
    QCon_flow_nominal=Q_hea_nominal,
    dTEva_nominal=-deltaT,
    dp1_nominal=dp_nominal,
    dp2_nominal=dp_nominal,
    dTCon_nominal=T_sup_hea - T_ret_hea,
    T2_start=285.15)
    annotation (Placement(transformation(extent={{44,-12},{24,8}})));
  IBPSA.Fluid.Chillers.Carnot_TEva chi(
    redeclare package Medium1 = Medium,
    redeclare package Medium2 = Medium,
    etaCarnot_nominal=eta_chi,
    QEva_flow_nominal=Q_coo_nominal,
    dTEva_nominal=T_sup_coo - T_ret_coo,
    dTCon_nominal=deltaT,
    dp1_nominal=dp_nominal,
    dp2_nominal=dp_nominal,
    T1_start=289.15)
    annotation (Placement(transformation(extent={{26,-116},{46,-96}})));
  IBPSA.Fluid.Sources.MassFlowSource_T boundary(nPorts=1,
    T=T_ret_hea,
    use_m_flow_in=true,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{86,14},{66,34}})));
  IBPSA.Fluid.Sources.FixedBoundary bou(nPorts=1, redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-18,14},{2,34}})));
  IBPSA.Fluid.Sources.MassFlowSource_T boundary1(nPorts=1,
    use_m_flow_in=true,
    T=T_ret_coo,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{84,-136},{64,-116}})));
  IBPSA.Fluid.Sources.FixedBoundary bou1(nPorts=1, redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-16,-136},{4,-116}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=T_sup_hea)
    annotation (Placement(transformation(extent={{86,-4},{66,16}})));
  Modelica.Blocks.Sources.RealExpression realExpression1(y=T_sup_coo)
    annotation (Placement(transformation(extent={{-8,-104},{12,-84}})));
  Modelica.Blocks.Sources.RealExpression realExpression2(y=cp_default*(
        T_sup_hea - T_ret_hea))
    annotation (Placement(transformation(extent={{0,38},{20,58}})));
  Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{32,44},{52,66}})));
  Modelica.Blocks.Math.Division division1
    annotation (Placement(transformation(extent={{34,-168},{54,-146}})));
  Modelica.Blocks.Sources.RealExpression realExpression3(y=-cp_default*(
        T_sup_coo - T_ret_coo))
    annotation (Placement(transformation(extent={{2,-174},{22,-154}})));
  Modelica.Blocks.Math.Division division2
    annotation (Placement(transformation(extent={{8,-38},{-12,-16}})));
  Modelica.Blocks.Sources.RealExpression realExpression5(y=-cp_default*(deltaT))
    annotation (Placement(transformation(extent={{44,-44},{24,-24}})));
  Modelica.Blocks.Math.Division division3
    annotation (Placement(transformation(extent={{-58,-172},{-78,-150}})));
  Modelica.Blocks.Sources.RealExpression realExpression7(y=cp_default*(deltaT))
    annotation (Placement(transformation(extent={{-16,-178},{-36,-158}})));
  Modelica.Blocks.Interfaces.RealOutput P annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-36,100})));
  Modelica.Blocks.Math.Sum sum1(nin=4)
    annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
  Modelica.Fluid.Sensors.TemperatureTwoPort temperature_cold(redeclare package
      Medium = Medium)
    annotation (Placement(transformation(extent={{72,-52},{52,-32}})));
  Modelica.Fluid.Sensors.TemperatureTwoPort temperature_warm(redeclare package
      Medium = Medium)
    annotation (Placement(transformation(extent={{64,-110},{84,-90}})));
equation
  connect(heaPum.port_a2, pum_hea.port_b)
    annotation (Line(points={{24,-8},{-24,-8}}, color={0,127,255}));
  connect(pum_hea.port_a, port_a) annotation (Line(points={{-44,-8},{-80,-8},{-80,
          40},{-100,40}}, color={0,127,255}));
  connect(port_b, pumcoo.port_a) annotation (Line(points={{-100,-42},{-88,-42},{
          -88,-100},{-60,-100}}, color={0,127,255}));
  connect(pumcoo.port_b, chi.port_a1)
    annotation (Line(points={{-40,-100},{26,-100}}, color={0,127,255}));
  connect(heaPum.port_a1, boundary.ports[1]) annotation (Line(points={{44,4},{58,
          4},{58,24},{66,24}}, color={0,127,255}));
  connect(heaPum.port_b1, bou.ports[1]) annotation (Line(points={{24,4},{10,4},{
          10,24},{2,24}}, color={0,127,255}));
  connect(bou1.ports[1], chi.port_b2) annotation (Line(points={{4,-126},{16,-126},
          {16,-112},{26,-112}}, color={0,127,255}));
  connect(chi.port_a2, boundary1.ports[1]) annotation (Line(points={{46,-112},{58,
          -112},{58,-126},{64,-126}}, color={0,127,255}));
  connect(heaPum.TSet, realExpression.y)
    annotation (Line(points={{46,7},{56,7},{56,6},{65,6}}, color={0,0,127}));
  connect(chi.TSet, realExpression1.y) annotation (Line(points={{24,-97},{18,-97},
          {18,-94},{13,-94}}, color={0,0,127}));
  connect(HDem, division.u1)
    annotation (Line(points={{0,100},{0,61.6},{30,61.6}}, color={0,0,127}));
  connect(division.y, boundary.m_flow_in) annotation (Line(points={{53,55},{96,55},
          {96,32},{88,32}}, color={0,0,127}));
  connect(realExpression2.y, division.u2) annotation (Line(points={{21,48},{26,48},
          {26,48.4},{30,48.4}}, color={0,0,127}));
  connect(realExpression3.y, division1.u2) annotation (Line(points={{23,-164},{26,
          -164},{26,-164},{30,-164},{30,-163.6},{32,-163.6}}, color={0,0,127}));
  connect(division1.y, boundary1.m_flow_in) annotation (Line(points={{55,-157},{
          92,-157},{92,-118},{86,-118}}, color={0,0,127}));
  connect(CDem, division1.u1) annotation (Line(points={{40,100},{40,80},{98,80},
          {98,-172},{26,-172},{26,-150.4},{32,-150.4}}, color={0,0,127}));
  connect(realExpression5.y, division2.u2) annotation (Line(points={{23,-34},{16,
          -34},{16,-33.6},{10,-33.6}}, color={0,0,127}));
  connect(division2.y, pum_hea.m_flow_in)
    annotation (Line(points={{-13,-27},{-34,-27},{-34,-20}}, color={0,0,127}));
  connect(realExpression7.y, division3.u2) annotation (Line(points={{-37,-168},{
          -54,-168},{-54,-167.6},{-56,-167.6}}, color={0,0,127}));
  connect(division3.y, pumcoo.m_flow_in) annotation (Line(points={{-79,-161},{-88,
          -161},{-88,-120},{-50,-120},{-50,-112}}, color={0,0,127}));
  connect(sum1.y, P)
    annotation (Line(points={{-39,70},{-36,70},{-36,100}}, color={0,0,127}));
  connect(heaPum.P, sum1.u[1]) annotation (Line(points={{23,-2},{-70,-2},{-70,68.5},
          {-62,68.5}}, color={0,0,127}));
  connect(pum_hea.P, sum1.u[2]) annotation (Line(points={{-23,-17},{-18,-17},{-18,
          -2},{-70,-2},{-70,69.5},{-62,69.5}}, color={0,0,127}));
  connect(chi.P, sum1.u[3]) annotation (Line(points={{47,-106},{60,-106},{60,-48},
          {-70,-48},{-70,70.5},{-62,70.5}}, color={0,0,127}));
  connect(pumcoo.P, sum1.u[4]) annotation (Line(points={{-39,-109},{-22,-109},{-22,
          -74},{-70,-74},{-70,71.5},{-62,71.5}}, color={0,0,127}));
  connect(division3.u1, chi.QCon_flow) annotation (Line(points={{-56,-154.4},{16,
          -154.4},{16,-134},{52,-134},{52,-97},{47,-97}}, color={0,0,127}));
  connect(heaPum.QEva_flow, division2.u1) annotation (Line(points={{23,-11},{16,
          -11},{16,-20.4},{10,-20.4}}, color={0,0,127}));
  connect(temperature_cold.port_a, heaPum.port_b2) annotation (Line(points={{72,
          -42},{78,-42},{78,-8},{44,-8}}, color={0,127,255}));
  connect(temperature_cold.port_b, port_b)
    annotation (Line(points={{52,-42},{-100,-42}}, color={0,127,255}));
  connect(chi.port_b1, temperature_warm.port_a)
    annotation (Line(points={{46,-100},{64,-100}}, color={0,127,255}));
  connect(temperature_warm.port_b, port_a) annotation (Line(points={{84,-100},{
          92,-100},{92,-60},{-80,-60},{-80,40},{-100,40}}, color={0,127,255}));
  annotation (Documentation(info="<html>
  <p>Models a consumer with a deterministic heat demand and cool demand. Carnot heat pumps are used for meeting the demand, using the network as a source for the heating demand and using the network
  as a sink for the cooling demand. Decentral pumps are used.</p>
</html>", revisions="<html>
<ul>
<li>November 8, 2018 by Felix Bünning:
<br/>First implementation</li>
</ul>
</html>"),
    Diagram(coordinateSystem(extent={{-100,-200},{100,100}}, initialScale=0.1)),
    Icon(coordinateSystem(extent={{-100,-100},{100,100}}, initialScale=0.1),
        graphics={
        Rectangle(
          extent={{-48,60},{88,-58}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-38,54},{76,36}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-48,48},{88,40}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-26,36},{-22,-4}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-38,54},{76,36}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-48,50},{88,40}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{16,40},{88,50}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-24,0},{-34,-12},{-14,-12},{-24,0}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-24,0},{-34,10},{-14,10},{-24,0}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-26,36},{-22,10}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-26,-12},{-22,-54}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{56,36},{60,-54}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{36,20},{80,-22}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{58,20},{40,-12},{76,-12},{58,20}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-38,-38},{76,-56}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-48,-42},{88,-52}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-48,-52},{16,-42}},
          lineColor={0,0,127},
          pattern=LinePattern.None,
          fillColor={0,0,127},
          fillPattern=FillPattern.Solid)}));
end ConsumerBidirectional;
