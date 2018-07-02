within IBPSAdestest_Comparison.Network_with_Parameters.BaseClasses;
model BuildingLocationsDouble "Supply and return are modelled"
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=5;
  Consumer.IdealConsumerTwin
                          SimpleDistrict_2(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{-160,140},{-180,160}})));
  Consumer.IdealConsumerTwin   SimpleDistrict_3(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{-40,140},{-20,160}})));
  Consumer.IdealConsumerTwin   SimpleDistrict_5(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{-160,80},{-180,100}})));
  Consumer.IdealConsumerTwin   SimpleDistrict_6(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{-40,80},{-20,100}})));
  Consumer.IdealConsumerTwin SimpleDistrict_10(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{-160,20},{-180,40}})));
  Consumer.IdealConsumerTwin SimpleDistrict_16(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{-160,-40},{-180,-20}})));
  Consumer.IdealConsumerTwin SimpleDistrict_15(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{-40,-40},{-20,-20}})));
  Consumer.IdealConsumerTwin SimpleDistrict_11(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
  Consumer.IdealConsumerTwin   SimpleDistrict_1(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{40,140},{20,160}})));
  Consumer.IdealConsumerTwin   SimpleDistrict_4(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{160,140},{180,160}})));
  Consumer.IdealConsumerTwin   SimpleDistrict_7(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{160,78},{180,98}})));
  Consumer.IdealConsumerTwin   SimpleDistrict_8(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{40,80},{20,100}})));
  Consumer.IdealConsumerTwin SimpleDistrict_9(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{40,20},{20,40}})));
  Consumer.IdealConsumerTwin SimpleDistrict_12(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{160,20},{180,40}})));
  Consumer.IdealConsumerTwin SimpleDistrict_13(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{160,-40},{180,-20}})));
  Consumer.IdealConsumerTwin SimpleDistrict_14(redeclare package Medium =
        IBPSA.Media.Water,
    dp_nominal(displayUnit="Pa"),
    deltaT=20,
    m_flow_nominal=m_flow_nominal,
    m_flo_bypass=0,
    T_start=323.15)
    annotation (Placement(transformation(extent={{40,-40},{20,-20}})));
  annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
        coordinateSystem(extent={{-120,-100},{100,120}})));
end BuildingLocationsDouble;
