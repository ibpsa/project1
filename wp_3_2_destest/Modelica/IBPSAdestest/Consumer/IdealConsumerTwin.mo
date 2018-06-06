within IBPSAdestest.Consumer;
model IdealConsumerTwin
  "Basic consumer model for DesTest with a fixed temperature drop, decentralized pump and ideal mass flow control"
  extends BaseClasses.TwinConsumer;

  parameter Modelica.Blocks.Interfaces.RealOutput deltaT=30
    "Desired temperature difference";
  parameter Modelica.Blocks.Interfaces.RealOutput m_flo_bypass=0.0001
    "Minimum bypass flow through substation";
  Modelica.Blocks.Sources.RealExpression rho_cp_dt(y=deltaT*cp_default*
        rho_default)
    annotation (Placement(transformation(extent={{8,50},{28,70}})));
  IBPSA.Utilities.Math.SmoothMin smoothMin(deltaX=0.001) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={66,-8})));
  Modelica.Blocks.Math.Division division annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={72,48})));
  Modelica.Blocks.Sources.RealExpression m_flo_min(y=m_flo_bypass)
    annotation (Placement(transformation(extent={{8,38},{28,58}})));
  Modelica.Blocks.Interfaces.RealInput QDem "Control input" annotation (
      Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={0,100})));
equation
  connect(rho_cp_dt.y, division.u2)
    annotation (Line(points={{29,60},{66,60}}, color={0,0,127}));
  connect(division.u1, QDem) annotation (Line(points={{78,60},{78,72},{0,72},{0,
          100}}, color={0,0,127}));
  connect(division.y, smoothMin.u1)
    annotation (Line(points={{72,37},{72,32},{72,4}}, color={0,0,127}));
  connect(m_flo_min.y, smoothMin.u2)
    annotation (Line(points={{29,48},{60,48},{60,4}}, color={0,0,127}));
end IdealConsumerTwin;
