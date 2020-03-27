within IBPSAdestest.Consumer.BaseClasses;
partial model EndNode_twoport
  "Partial model of a component with only one fluid port and an ideal sink. No return is modelled."
  extends PartialConsumer;
  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-110,30},{-90,50}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-110,-52},{-90,-32}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end EndNode_twoport;
