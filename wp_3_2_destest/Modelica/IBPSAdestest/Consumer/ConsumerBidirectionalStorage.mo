within IBPSAdestest.Consumer;
model ConsumerBidirectionalStorage
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
    m_flow_nominal=Q_hea_nominal/(deltaT*4.182),
    addPowerToMedium=false,
    T_start=289.15,
    use_inputFilter=false)
    annotation (Placement(transformation(extent={{-44,2},{-24,-18}})));
  IBPSA.Fluid.Movers.FlowControlled_m_flow pumcoo(
                                               redeclare package Medium =
        Medium,
    addPowerToMedium=false,
    use_inputFilter=false,
    T_start=285.15,
    m_flow_nominal=Q_coo_nominal/(deltaT*4.182))
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
    dTEva_nominal=T_sup_coo - T_ret_coo,
    dTCon_nominal=deltaT,
    dp1_nominal=dp_nominal,
    dp2_nominal=dp_nominal,
    QEva_flow_nominal=-Q_coo_nominal,
    T1_start=289.15,
    T2_start=283.15)
    annotation (Placement(transformation(extent={{26,-116},{46,-96}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=T_sup_hea)
    annotation (Placement(transformation(extent={{86,-4},{66,16}})));
  Modelica.Blocks.Sources.RealExpression realExpression1(y=T_sup_coo)
    annotation (Placement(transformation(extent={{-8,-104},{12,-84}})));
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
  BaseClasses.Storage_controlled_heating storage_controlled_heating(
    redeclare package Medium = Medium,
    T_sup=T_sup_hea,
    T_ret=T_ret_hea,
    volume_tank=1000,
    Q_nominal=20000)
    annotation (Placement(transformation(extent={{32,32},{52,52}})));
  Modelica.Blocks.Sources.RealExpression realExpression2(y=0)
    annotation (Placement(transformation(extent={{84,54},{64,74}})));
  BaseClasses.Storage_controlled_cooling storage_controlled_cooling(
    redeclare package Medium = Medium,
    T_sup=T_sup_coo,
    T_ret=T_ret_coo,
    volume_tank=1000,
    Q_nominal=20000)
    annotation (Placement(transformation(extent={{36,-164},{56,-144}})));
  Modelica.Blocks.Sources.RealExpression realExpression3(y=0)
    annotation (Placement(transformation(extent={{88,-142},{68,-122}})));
equation
  connect(heaPum.port_a2, pum_hea.port_b)
    annotation (Line(points={{24,-8},{-24,-8}}, color={0,127,255}));
  connect(heaPum.port_b2, port_b) annotation (Line(points={{44,-8},{74,-8},{74,-42},
          {-100,-42}}, color={0,127,255}));
  connect(pum_hea.port_a, port_a) annotation (Line(points={{-44,-8},{-80,-8},{-80,
          40},{-100,40}}, color={0,127,255}));
  connect(port_b, pumcoo.port_a) annotation (Line(points={{-100,-42},{-88,-42},{
          -88,-100},{-60,-100}}, color={0,127,255}));
  connect(pumcoo.port_b, chi.port_a1)
    annotation (Line(points={{-40,-100},{26,-100}}, color={0,127,255}));
  connect(chi.port_b1, port_a) annotation (Line(points={{46,-100},{74,-100},{74,
          -60},{-80,-60},{-80,40},{-100,40}}, color={0,127,255}));
  connect(heaPum.TSet, realExpression.y)
    annotation (Line(points={{46,7},{56,7},{56,6},{65,6}}, color={0,0,127}));
  connect(chi.TSet, realExpression1.y) annotation (Line(points={{24,-97},{18,-97},
          {18,-94},{13,-94}}, color={0,0,127}));
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
  connect(heaPum.port_b1, storage_controlled_heating.port_a) annotation (Line(
        points={{24,4},{-4,4},{-4,46},{32,46}}, color={0,127,255}));
  connect(heaPum.port_a1, storage_controlled_heating.port_b) annotation (Line(
        points={{44,4},{52,4},{52,22},{18,22},{18,37.8},{32,37.8}}, color={0,
          127,255}));
  connect(storage_controlled_heating.QDem, HDem) annotation (Line(points={{42,
          52},{42,66},{0,66},{0,100}}, color={0,0,127}));
  connect(realExpression2.y, storage_controlled_heating.Control_m_flow)
    annotation (Line(points={{63,64},{39,64},{39,52}}, color={0,0,127}));
  connect(chi.port_b2, storage_controlled_cooling.port_a) annotation (Line(
        points={{26,-112},{12,-112},{12,-150},{36,-150}}, color={0,127,255}));
  connect(storage_controlled_cooling.port_b, chi.port_a2) annotation (Line(
        points={{36,-158.2},{24,-158.2},{24,-158},{2,-158},{2,-122},{50,-122},{
          50,-112},{46,-112}}, color={0,127,255}));
  connect(CDem, storage_controlled_cooling.QDem) annotation (Line(points={{40,
          100},{40,76},{94,76},{94,-140},{46,-140},{46,-144}}, color={0,0,127}));
  connect(realExpression3.y, storage_controlled_cooling.Control_m_flow)
    annotation (Line(points={{67,-132},{43,-132},{43,-144}}, color={0,0,127}));
  annotation (Documentation(info="<html>
  <p>Models a consumer with a deterministic heat demand and cool demand and water storage for both demands. Carnot heat pumps are used for meeting the demand, using the network as a source for the heating demand and using the network
  as a sink for the cooling demand. Decentral pumps are used. Stratified tanks models are used as storage.</p>
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
          extent={{-48,-42},{76,-52}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={0,0,255},
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
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-4,20},{28,-20}},
          lineColor={0,0,0},
          fillColor={35,138,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-4,14},{28,24}},
          lineColor={0,0,0},
          fillColor={35,138,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-4,-24},{28,-14}},
          lineColor={0,0,0},
          fillColor={35,138,255},
          fillPattern=FillPattern.Solid)}));
end ConsumerBidirectionalStorage;
