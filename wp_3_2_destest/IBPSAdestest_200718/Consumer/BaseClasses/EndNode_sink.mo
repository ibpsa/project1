within IBPSAdestest_200718.Consumer.BaseClasses;
partial model EndNode_sink
  "Partial model of a component with only one fluid port and an ideal sink. No return is modelled."
  extends PartialConsumer;
  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end EndNode_sink;
