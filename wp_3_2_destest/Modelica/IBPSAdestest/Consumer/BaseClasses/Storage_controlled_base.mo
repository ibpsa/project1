within IBPSAdestest.Consumer.BaseClasses;
partial model Storage_controlled_base
  "Partial model of a component with only one fluid port and an ideal sink. No return is modelled."
  extends PartialConsumer;

  parameter Modelica.SIunits.Temperature T_sup
    "Supply temperature cooling";

  parameter Modelica.SIunits.Temperature T_ret
    "Supply temperature cooling";

  parameter Modelica.SIunits.HeatFlowRate Q_nominal=10000
    "Nominal heat or cool flow";

  parameter Modelica.SIunits.Volume volume_tank
    "Volume of the water storage tank";

  parameter Boolean external_control=false
    "Enable external control";


  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-110,30},{-90,50}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-110,-52},{-90,-32}})));
  IBPSA.Fluid.Storage.Stratified tan(
    hTan=2,
    dIns=0.3,
    nSeg=3,
    tau=20,
    VTan=volume_tank,
    redeclare package Medium = Medium,
    T_start=T_sup,
    m_flow_nominal=abs(Q_nominal/((T_sup - T_ret)*4.182)))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  IBPSA.Fluid.Movers.FlowControlled_m_flow pum_stor(
    addPowerToMedium=false,
    redeclare package Medium = Medium,
    use_inputFilter=false,
    T_start=T_sup,
    m_flow_nominal=abs(Q_nominal/((T_sup - T_ret)*4.182)))
    annotation (Placement(transformation(extent={{-80,50},{-60,30}})));
  IBPSA.Fluid.Movers.FlowControlled_m_flow pum_demand(
    addPowerToMedium=false,
    redeclare package Medium = Medium,
    use_inputFilter=false,
    T_start=T_sup,
    m_flow_nominal=abs(Q_nominal/((T_sup - T_ret)*4.182)))
    annotation (Placement(transformation(extent={{32,50},{52,30}})));
  Modelica.Blocks.Interfaces.RealInput QDem "Control input" annotation (
      Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={0,100})));
  Modelica.Blocks.Math.Division division annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={72,40})));
  Modelica.Blocks.Sources.RealExpression cp_dt(y=abs((T_sup - T_ret)*cp_default))
    annotation (Placement(transformation(extent={{8,50},{28,70}})));
  IBPSA.Fluid.HeatExchangers.HeaterCooler_u hea(Q_flow_nominal=-1,
    dp_nominal=0,
    redeclare package Medium = Medium,
    T_start=T_sup,
    m_flow_nominal=abs(Q_nominal/((T_sup - T_ret)*4.182)))         annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=-90,
        origin={60,-2})));
  Modelica.Blocks.Interfaces.RealInput Control_m_flow "Control input"
    annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={-30,100})));
  Modelica.Blocks.Logical.Switch switch1
    annotation (Placement(transformation(extent={{-40,0},{-60,20}})));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression(y=
        external_control)
    annotation (Placement(transformation(extent={{-12,0},{-32,22}})));
  Modelica.Blocks.Interfaces.RealOutput storage_state annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-60,100})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=(((tan.heaPorVol[1].T +
        tan.heaPorVol[2].T + tan.heaPorVol[3].T)/3) - T_ret)/(T_sup - T_ret))
    annotation (Placement(transformation(extent={{-94,70},{-74,90}})));
  IBPSA.Fluid.Sources.Boundary_pT bou(nPorts=1, redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-100,52},{-80,72}})));
equation
  connect(pum_stor.port_a, port_a)
    annotation (Line(points={{-80,40},{-100,40}}, color={0,127,255}));
  connect(QDem, division.u1) annotation (Line(points={{0,100},{0,76},{78,76},{78,
          52}}, color={0,0,127}));
  connect(cp_dt.y, division.u2)
    annotation (Line(points={{29,60},{66,60},{66,52}}, color={0,0,127}));
  connect(hea.port_a, pum_demand.port_b)
    annotation (Line(points={{60,8},{60,40},{52,40}}, color={0,127,255}));
  connect(division.y, pum_demand.m_flow_in) annotation (Line(points={{72,29},{72,
          20},{42,20},{42,28}}, color={0,0,127}));
  connect(QDem, hea.u) annotation (Line(points={{0,100},{0,16},{66,16},{66,10}},
        color={0,0,127}));
  connect(switch1.y, pum_stor.m_flow_in)
    annotation (Line(points={{-61,10},{-70,10},{-70,28}}, color={0,0,127}));
  connect(switch1.u1, Control_m_flow)
    annotation (Line(points={{-38,18},{-30,18},{-30,100}}, color={0,0,127}));
  connect(division.y, switch1.u3) annotation (Line(points={{72,29},{72,-54},{-30,
          -54},{-30,2},{-38,2}}, color={0,0,127}));
  connect(switch1.u2, booleanExpression.y) annotation (Line(points={{-38,10},{-36,
          10},{-36,11},{-33,11}}, color={255,0,255}));
  connect(realExpression.y, storage_state)
    annotation (Line(points={{-73,80},{-60,80},{-60,100}}, color={0,0,127}));
  connect(pum_stor.port_a, bou.ports[1])
    annotation (Line(points={{-80,40},{-80,62}}, color={0,127,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Storage_controlled_base;
