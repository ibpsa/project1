within IBPSAdestest.Network;
partial package BaseClasses "Base classes needed for network"
extends Modelica.Icons.BasesPackage;

  model BuildingLocationsSingle "Only supply line is modelled"

    Consumer.SimpleConsumer SimpleDistrict_2(redeclare package Medium =
          IBPSA.Media.Water)
      annotation (Placement(transformation(extent={{-160,140},{-180,160}})));
    Consumer.SimpleConsumer SimpleDistrict_3(redeclare package Medium =
          IBPSA.Media.Water)
      annotation (Placement(transformation(extent={{-40,140},{-20,160}})));
    Consumer.SimpleConsumer SimpleDistrict_5(redeclare package Medium =
          IBPSA.Media.Water)
      annotation (Placement(transformation(extent={{-160,80},{-180,100}})));
    Consumer.SimpleConsumer SimpleDistrict_6(redeclare package Medium =
          IBPSA.Media.Water)
      annotation (Placement(transformation(extent={{-40,80},{-20,100}})));
    Consumer.SimpleConsumer SimpleDistrict_10(redeclare package Medium =
        IBPSA.Media.Water)
    annotation (Placement(transformation(extent={{-160,20},{-180,40}})));
    Consumer.SimpleConsumer SimpleDistrict_16(redeclare package Medium =
        IBPSA.Media.Water)
    annotation (Placement(transformation(extent={{-160,-40},{-180,-20}})));
    Consumer.SimpleConsumer SimpleDistrict_15(redeclare package Medium =
        IBPSA.Media.Water)
    annotation (Placement(transformation(extent={{-40,-40},{-20,-20}})));
    Consumer.SimpleConsumer SimpleDistrict_11(redeclare package Medium =
        IBPSA.Media.Water)
    annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
    Consumer.SimpleConsumer SimpleDistrict_1(redeclare package Medium =
          IBPSA.Media.Water)
      annotation (Placement(transformation(extent={{40,140},{20,160}})));
    Consumer.SimpleConsumer SimpleDistrict_4(redeclare package Medium =
          IBPSA.Media.Water)
      annotation (Placement(transformation(extent={{160,140},{180,160}})));
    Consumer.SimpleConsumer SimpleDistrict_7(redeclare package Medium =
          IBPSA.Media.Water)
      annotation (Placement(transformation(extent={{160,78},{180,98}})));
    Consumer.SimpleConsumer SimpleDistrict_8(redeclare package Medium =
          IBPSA.Media.Water)
      annotation (Placement(transformation(extent={{40,80},{20,100}})));
    Consumer.SimpleConsumer SimpleDistrict_9(redeclare package Medium =
        IBPSA.Media.Water)
    annotation (Placement(transformation(extent={{40,20},{20,40}})));
    Consumer.SimpleConsumer SimpleDistrict_12(redeclare package Medium =
        IBPSA.Media.Water)
    annotation (Placement(transformation(extent={{160,20},{180,40}})));
    Consumer.SimpleConsumer SimpleDistrict_13(redeclare package Medium =
        IBPSA.Media.Water)
    annotation (Placement(transformation(extent={{160,-40},{180,-20}})));
    Consumer.SimpleConsumer SimpleDistrict_14(redeclare package Medium =
        IBPSA.Media.Water)
    annotation (Placement(transformation(extent={{40,-40},{20,-20}})));
    annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
          coordinateSystem(extent={{-120,-100},{100,120}})));
  end BuildingLocationsSingle;
end BaseClasses;
