model SimpleHouseTemplate
  "Template file for simple house example"
  extends Modelica.Icons.Example;

  package MediumAir = Annex60.Media.Air "Medium model for air";
  package MediumWater = Annex60.Media.Water "Medium model for water";

  parameter Modelica.SIunits.Area A_wall = 100 "Wall area";
  parameter Modelica.SIunits.Length d_wall = 0.25 "Wall thickness";
  parameter Modelica.SIunits.ThermalConductivity k_wall = 0.04 "Wall thermal conductivity";
  parameter Modelica.SIunits.Density rho_wall = 2000 "Wall density";
  parameter Modelica.SIunits.SpecificHeatCapacity cp_wall = 1000 "Wall specific heat capacity";


  Annex60.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(
    filNam="modelica://Annex60/Resources/weatherdata/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.mos")
    "Weather data reader"
    annotation (Placement(transformation(extent={{-200,-18},{-180,2}})));
  Annex60.BoundaryConditions.WeatherData.Bus weaBus "Weather data bus"
    annotation (Placement(transformation(extent={{-130,-18},{-110,2}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature Tout
    "Exterior temperature boundary condition"
    annotation (Placement(transformation(extent={{-20,-8},{0,12}})));

  Modelica.Thermal.HeatTransfer.Components.ThermalResistor wallRes(
    R=d_wall/A_wall/k_wall)
    "Thermal resistor for wall: 25 cm of rockwool"
    annotation (Placement(transformation(extent={{84,-8},{104,12}})));
equation
  connect(weaDat.weaBus, weaBus) annotation (Line(
      points={{-180,-8},{-180,-8},{-120,-8}},
      color={255,204,51},
      thickness=0.5));
  connect(Tout.T, weaBus.TDryBul)
    annotation (Line(points={{-22,2},{-120,2},{-120,-8}}, color={0,0,127}));
  connect(Tout.port,wallRes. port_a)
    annotation (Line(points={{0,2},{0,2},{84,2}},    color={191,0,0}));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-240,
            -220},{200,200}}), graphics={
        Rectangle(
          extent={{-220,40},{20,-40}},
          fillColor={238,238,238},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Rectangle(
          extent={{-220,-60},{180,-200}},
          fillColor={238,238,238},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Rectangle(
          extent={{-220,180},{180,60}},
          fillColor={238,238,238},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Text(
          extent={{-144,154},{-210,172}},
          lineColor={0,0,127},
          fillColor={255,213,170},
          fillPattern=FillPattern.Solid,
          textString="Ventilation"),
        Rectangle(
          extent={{40,40},{180,-40}},
          fillColor={238,238,238},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Text(
          extent={{98,20},{32,38}},
          lineColor={0,0,127},
          fillColor={255,213,170},
          fillPattern=FillPattern.Solid,
          textString="Wall"),
        Text(
          extent={{-148,-86},{-214,-68}},
          lineColor={0,0,127},
          fillColor={255,213,170},
          fillPattern=FillPattern.Solid,
          textString="Heating"),
        Text(
          extent={{-118,18},{-214,40}},
          lineColor={0,0,127},
          fillColor={255,213,170},
          fillPattern=FillPattern.Solid,
          textString="Weather inputs")}),
    experiment(StopTime=1e+06),
    Documentation(revisions="<html>
<ul>
<li>
October 11, 2016, by Filip Jorissen:<br/>
First implementation.
</li>
</ul>
</html>", info="<html>
<p>
This model is used at the Modelica course in Corsica of October 2016
to demonstrate the use of Modelica using mainly fluid parts
from the Annex60 library.
</p>
</html>"));
end SimpleHouseTemplate;
