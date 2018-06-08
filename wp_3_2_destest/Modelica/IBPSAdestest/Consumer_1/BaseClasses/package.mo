within IBPSAdestest.Consumer;
package BaseClasses "Contains base classes for the consumer models"
  extends Modelica.Icons.BasesPackage;

  model TwinConsumer_pipe
    extends IBPSAdestest.Consumer.BaseClasses.EndNode_twoport;

    IBPSA.Fluid.Movers.FlowControlled_m_flow pum(redeclare package Medium =
          Medium, m_flow_nominal=m_flow_nominal)
      annotation (Placement(transformation(extent={{-30,50},{-10,30}})));
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

    IBPSA.Fluid.FixedResistances.PlugFlowPipe plugFlowPipe(
      redeclare package Medium = Medium,
      length=l_pipe,
      m_flow_nominal=m_flow_nominal,
      dIns=w_pipe,
      kIns=k_pipe,
      nPorts=1)
      annotation (Placement(transformation(extent={{-60,30},{-40,50}})));

    parameter Modelica.SIunits.Length l_pipe "Length of each pipe (supply and return)";
    parameter Modelica.SIunits.Length w_pipe "Insulation thickness of each pipe (supply and return)";
    parameter Modelica.SIunits.ThermalConductivity k_pipe  "Thermal Conductivity of each pipe (supply and return)";

    IBPSA.Fluid.FixedResistances.PlugFlowPipe plugFlowPipe1(
      redeclare package Medium = Medium,
      length=l_pipe,
      m_flow_nominal=m_flow_nominal,
      dIns=w_pipe,
      kIns=k_pipe,
      nPorts=1)
      annotation (Placement(transformation(extent={{-40,-52},{-60,-32}})));
  equation
    connect(pum.port_b, hea.port_a) annotation (Line(points={{-10,40},{30,40},{30,
            10}},         color={0,127,255}));
    connect(plugFlowPipe.ports_b[1], pum.port_a)
      annotation (Line(points={{-40,40},{-30,40}}, color={0,127,255}));
    connect(plugFlowPipe.port_a, port_a)
      annotation (Line(points={{-60,40},{-100,40}}, color={0,127,255}));
    connect(hea.port_b, plugFlowPipe1.port_a)
      annotation (Line(points={{30,-10},{30,-42},{-40,-42}}, color={0,127,255}));
    connect(plugFlowPipe1.ports_b[1], port_b)
      annotation (Line(points={{-60,-42},{-100,-42}}, color={0,127,255}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end TwinConsumer_pipe;
end BaseClasses;
