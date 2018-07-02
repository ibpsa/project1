within IBPSAdestest.Network;
model SupplyNetwork "Only supply line is modelled"
  extends Modelica.Icons.Example;
  extends BaseClasses.BuildingLocationsDouble;

  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=1;
  parameter Modelica.SIunits.Pressure dP=100;

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    tableName="data",
    columns=2:18,
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://IBPSAdestest/Resources/Data/DestestHeatDemand/heat_profiles.txt"))
    annotation (Placement(transformation(extent={{-160,-114},{-140,-94}})));

protected
  Modelica.Blocks.Interfaces.RealOutput y1[size(combiTimeTable.y, 1)]
                     "Connector of Real output signals"
    annotation (Placement(transformation(extent={{-1,-73},{0,-74}})));
equation
  connect(combiTimeTable.y[2], SimpleDistrict_2.QDem) annotation (Line(points={{-139,
          -104},{-100,-104},{-100,-74},{-198,-74},{-198,170},{-170,170},{-170,
          160}},      color={0,0,127}));
  connect(combiTimeTable.y[5], SimpleDistrict_5.QDem) annotation (Line(points={{-139,
          -104},{-100,-104},{-100,-74},{-198,-74},{-198,112},{-170,112},{-170,
          100}},                  color={0,0,127}));
  connect(combiTimeTable.y[10], SimpleDistrict_10.QDem) annotation (Line(points={{-139,
          -104},{-100,-104},{-100,-74},{-198,-74},{-198,52},{-170,52},{-170,40}},
                     color={0,0,127}));
  connect(combiTimeTable.y[16], SimpleDistrict_16.QDem) annotation (Line(points={{-139,
          -104},{-100,-104},{-100,-74},{-198,-74},{-198,-8},{-170,-8},{-170,-20}},
                      color={0,0,127}));
  connect(combiTimeTable.y, y1) annotation (Line(points={{-139,-104},{-100,-104},
          {-100,-73.5},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_3.QDem, y1[3]) annotation (Line(points={{-30,160},{-30,
          176},{-0.5,176},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_1.QDem, y1[1]) annotation (Line(points={{30,160},{30,
          176},{-0.5,176},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_6.QDem, y1[6]) annotation (Line(points={{-30,100},{-30,
          112},{-0.5,112},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_8.QDem, y1[8]) annotation (Line(points={{30,100},{30,
          100},{30,112},{-0.5,112},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_11.QDem, y1[11]) annotation (Line(points={{-30,40},{
          -30,52},{-0.5,52},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_9.QDem, y1[9]) annotation (Line(points={{30,40},{30,52},
          {-0.5,52},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_15.QDem, y1[15]) annotation (Line(points={{-30,-20},{
          -32,-20},{-32,0},{-0.5,0},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_14.QDem, y1[14]) annotation (Line(points={{30,-20},{30,
          0},{-0.5,0},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_4.QDem, y1[4]) annotation (Line(points={{170,160},{170,
          174},{202,174},{202,-73.5},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_7.QDem, y1[7]) annotation (Line(points={{170,98},{170,
          112},{202,112},{202,-73.5},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_12.QDem, y1[12]) annotation (Line(points={{170,40},{
          170,50},{202,50},{202,-73.5},{-0.5,-73.5}}, color={0,0,127}));
  connect(SimpleDistrict_13.QDem, y1[13]) annotation (Line(points={{170,-20},{
          170,-8},{202,-8},{202,-73.5},{-0.5,-73.5}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
        coordinateSystem(extent={{-100,-100},{100,100}})));
end SupplyNetwork;
