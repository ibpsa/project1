model SimpleConsumer
  extends IBPSAdestest.Consumer.BaseClasses.EndNode_sink;
  IBPSA.Fluid.Sources.FixedBoundary sin(redeclare package Medium = Medium,
      nPorts=1) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={50,-30})));
  IBPSA.Fluid.Movers.FlowControlled_m_flow fan(redeclare package Medium =
        Medium, m_flow_nominal=m_flow_nominal)
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=1
    "Nominal mass flow rate";
equation
  connect(port_a, fan.port_a)
    annotation (Line(points={{-100,0},{-80,0},{-60,0}}, color={0,127,255}));
  connect(fan.port_b, sin.ports[1]) annotation (Line(points={{-40,0},{6,0},{50,
          0},{50,-20}}, color={0,127,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end SimpleConsumer;
