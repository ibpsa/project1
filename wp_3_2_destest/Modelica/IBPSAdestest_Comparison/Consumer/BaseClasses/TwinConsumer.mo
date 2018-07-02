within IBPSAdestest_Comparison.Consumer.BaseClasses;
model TwinConsumer
  extends IBPSAdestest_Comparison.Consumer.BaseClasses.EndNode_twoport;
  IBPSA.Fluid.Movers.FlowControlled_m_flow pum(redeclare package Medium =
        Medium, m_flow_nominal=m_flow_nominal)
    annotation (Placement(transformation(extent={{-60,50},{-40,30}})));
  IBPSA.Fluid.HeatExchangers.HeaterCooler_u hea(
    redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal,
    dp_nominal=dp_nominal,
    Q_flow_nominal=-1) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={30,0})));
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=1
    "Nominal mass flow rate";
  parameter Modelica.SIunits.PressureDifference dp_nominal=100
    "Pressure difference";
equation
  connect(pum.port_a, port_a)
    annotation (Line(points={{-60,40},{-100,40}}, color={0,127,255}));
  connect(pum.port_b, hea.port_a) annotation (Line(points={{-40,40},{-6,40},{30,
          40},{30,10}}, color={0,127,255}));
  connect(hea.port_b, port_b) annotation (Line(points={{30,-10},{30,-42},{-100,
          -42}}, color={0,127,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end TwinConsumer;
