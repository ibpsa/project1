within IBPSAdestest.Network;
model SupplyNetwork "Only supply line is modelled"
  extends Modelica.Icons.Example;
  extends BaseClasses.BuildingLocationsDouble;

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable
    annotation (Placement(transformation(extent={{-140,-120},{-120,-100}})));
  annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
        coordinateSystem(extent={{-100,-100},{100,100}})));
end SupplyNetwork;
