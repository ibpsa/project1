within IBPSAdestest.Consumer;
model IdealConsumerTwin
  "Basic consumer model for DesTest with a fixed temperature drop, decentralized pump and ideal mass flow control"
  extends BaseClasses.TwinConsumer(pum(
      T_start=T_start, nominalValuesDefineDefaultPressureCurve=true),
                                    hea(T_start=T_start - deltaT));

  parameter Modelica.SIunits.TemperatureDifference deltaT=30
    "Desired temperature difference";
  parameter Modelica.SIunits.MassFlowRate m_flo_bypass=0.0001
    "Minimum bypass flow through substation";
  Modelica.Blocks.Sources.RealExpression cp_dt(y=deltaT*cp_default)
    annotation (Placement(transformation(extent={{8,50},{28,70}})));
  IBPSA.Utilities.Math.SmoothMax smoothMax(deltaX=0.001) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={66,-8})));
  Modelica.Blocks.Math.Division division annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={72,40})));
  Modelica.Blocks.Sources.RealExpression m_flo_min(y=m_flo_bypass)
    annotation (Placement(transformation(extent={{8,38},{28,58}})));
  Modelica.Blocks.Interfaces.RealInput QDem "Control input" annotation (
      Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={0,100})));
  parameter Modelica.Media.Interfaces.Types.Temperature T_start=Medium.T_default
    "Start value of temperature" annotation (Dialog(tab="Initialization"));
equation
  connect(cp_dt.y, division.u2)
    annotation (Line(points={{29,60},{66,60},{66,52}}, color={0,0,127}));
  connect(division.u1, QDem) annotation (Line(points={{78,52},{78,72},{0,72},{0,
          100}}, color={0,0,127}));
  connect(division.y,smoothMax. u1)
    annotation (Line(points={{72,29},{72,4}},         color={0,0,127}));
  connect(m_flo_min.y,smoothMax. u2)
    annotation (Line(points={{29,48},{60,48},{60,4}}, color={0,0,127}));
  connect(smoothMax.y, pum.m_flow_in) annotation (Line(points={{66,-19},{66,-19},
          {66,-56},{-50,-56},{-50,28}}, color={0,0,127}));
  connect(QDem, hea.u) annotation (Line(points={{0,100},{0,42},{36,42},{36,12}},
        color={0,0,127}));
  annotation (Documentation(info="<html>
<p>Models a consumer with a deterministic heat demand, using a fixed pressure drop and ideal mass flow control to achieve this temperature drop. Fixed nominal pressure drop of heating system. Decentralized pumps</p>
</html>", revisions="<html>
<ul>
<li>June 6, 2018 by Bram van der Heijde:
<br/>First implementation</li>
</ul>
</html>"));
end IdealConsumerTwin;
