within IBPSAdestest.Network;
model SupplyNetwork_numerical
  "Supply and return are modelled. Numerical design parameters are hard-coded"
  extends Modelica.Icons.Example;
  extends BaseClasses.BuildingLocationsDouble(
    SimpleDistrict_16(T_start=supTem),
    SimpleDistrict_10(T_start=supTem),
    SimpleDistrict_5(T_start=supTem),
    SimpleDistrict_2(T_start=supTem),
    SimpleDistrict_3(T_start=supTem),
    SimpleDistrict_6(T_start=supTem),
    SimpleDistrict_11(T_start=supTem),
    SimpleDistrict_15(T_start=supTem),
    SimpleDistrict_14(T_start=supTem),
    SimpleDistrict_9(T_start=supTem),
    SimpleDistrict_8(T_start=supTem),
    SimpleDistrict_1(T_start=supTem),
    SimpleDistrict_4(T_start=supTem),
    SimpleDistrict_7(T_start=supTem),
    SimpleDistrict_12(T_start=supTem),
    SimpleDistrict_13(T_start=supTem));

  package Medium1 = IBPSA.Media.Water "Medium model";

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    tableName="data",
    columns=2:18,
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://IBPSAdestest/Resources/Data/DestestHeatDemand/heat_profiles.txt"))
    annotation (Placement(transformation(extent={{-160,-120},{-140,-100}})));

protected
  Modelica.Blocks.Interfaces.RealOutput y1[size(combiTimeTable.y, 1)]
                     "Connector of Real output signals"
    annotation (Placement(transformation(extent={{-1,-73},{0,-74}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_2_a(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.025,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
    annotation (Placement(transformation(extent={{-128,148},{-140,160}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_2_a(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.025,
    length=12,
    dIns=0.11,
    kIns=kIns)
    annotation (Placement(transformation(extent={{-140,122},{-128,134}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_3_a(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.025,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
    annotation (Placement(transformation(extent={{-68,148},{-56,160}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_3_a(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.025,
    length=12,
    dIns=0.11,
    kIns=kIns)
    annotation (Placement(transformation(extent={{-56,122},{-68,134}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_5_b(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
    annotation (Placement(transformation(extent={{-128,88},{-140,100}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_5_b(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns)
    annotation (Placement(transformation(extent={{-140,62},{-128,74}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_6_b(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns)       annotation (Placement(transformation(extent={{-56,62},{-68,74}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_6_b(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
    annotation (Placement(transformation(extent={{-68,88},{-56,100}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_10_c(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
    annotation (Placement(transformation(extent={{-128,28},{-140,40}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_10_c(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
    annotation (Placement(transformation(extent={{-140,2},{-128,14}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_11_c(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns)        annotation (Placement(transformation(extent={{-56,2},{-68,14}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_11_c(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
                      annotation (Placement(transformation(extent={{-68,28},{-56,40}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_16_d(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
    annotation (Placement(transformation(extent={{-128,-32},{-140,-20}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_16_d(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns)
    annotation (Placement(transformation(extent={{-140,-60},{-128,-48}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_15_d(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns)
    annotation (Placement(transformation(extent={{-56,-60},{-68,-48}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_15_d(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
    annotation (Placement(transformation(extent={{-68,-32},{-56,-20}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_1_e(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.025,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
                     annotation (Placement(transformation(extent={{72,148},{60,160}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_1_e(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.025,
    length=12,
    dIns=0.11,
    kIns=kIns)       annotation (Placement(transformation(extent={{60,122},{72,134}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_4_e(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.025,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
    annotation (Placement(transformation(extent={{132,148},{144,160}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_4_e(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.025,
    length=12,
    dIns=0.11,
    kIns=kIns)
    annotation (Placement(transformation(extent={{144,122},{132,134}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_8_f(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
                     annotation (Placement(transformation(extent={{72,88},{60,100}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_8_f(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns)       annotation (Placement(transformation(extent={{60,62},{72,74}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_7_f(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns)       annotation (Placement(transformation(extent={{144,62},{132,74}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_7_f(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
    annotation (Placement(transformation(extent={{132,88},{144,100}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_9_g(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
                     annotation (Placement(transformation(extent={{72,28},{60,40}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_9_g(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns)       annotation (Placement(transformation(extent={{60,2},{72,14}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_12_g(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    kIns=kIns,
    dh=0.02,
    length=12,
    dIns=0.11)        annotation (Placement(transformation(extent={{144,2},{132,14}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_12_g(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    kIns=kIns,
    dh=0.02,
    length=12,
    dIns=0.11,
    T_start_in=supTem,
    T_start_out=supTem)
                      annotation (Placement(transformation(extent={{132,28},{144,40}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_14_h(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
                      annotation (Placement(transformation(extent={{72,-32},{60,-20}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_14_h(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns)        annotation (Placement(transformation(extent={{60,-60},{72,-48}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_13_h(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=1,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns)
    annotation (Placement(transformation(extent={{144,-60},{132,-48}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_13_h(
    redeclare package Medium = Medium1,
    nPorts=1,
    m_flow_nominal=m_flow_nominal,
    dh=0.02,
    length=12,
    dIns=0.11,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
    annotation (Placement(transformation(extent={{132,-32},{144,-20}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_a_b(
    redeclare package Medium = Medium1,
    nPorts=2,
    m_flow_nominal=m_flow_nominal,
    dh=0.032,
    length=24,
    dIns=0.125,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
                     annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={-108,142})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_a_b(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=2,
    dh=0.032,
    length=24,
    dIns=0.125,
    kIns=kIns)       annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={-92,116})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_b_c(
    redeclare package Medium = Medium1,
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    dh=0.04,
    length=24,
    dIns=0.125,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
                     annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={-108,82})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_b_c(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=3,
    dh=0.04,
    length=24,
    dIns=0.125,
    kIns=kIns)       annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={-92,56})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_c_d(
    redeclare package Medium = Medium1,
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    dh=0.05,
    length=24,
    dIns=0.14,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
                     annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={-108,22})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_c_d(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=3,
    dh=0.05,
    length=24,
    dIns=0.14,
    kIns=kIns)       annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={-92,-4})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_d_i(
    redeclare package Medium = Medium1,
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    dh=0.05,
    length=36,
    dIns=0.14,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
                     annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={-108,-38})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_d_i(
    redeclare package Medium = Medium1,
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    dh=0.05,
    length=36,
    dIns=0.14,
    kIns=kIns)       annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={-92,-64})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_e_f(
    redeclare package Medium = Medium1,
    nPorts=2,
    m_flow_nominal=m_flow_nominal,
    dh=0.032,
    length=24,
    dIns=0.125,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
                     annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={92,142})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_e_f(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=2,
    dh=0.032,
    length=24,
    dIns=0.125,
    kIns=kIns)       annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={108,116})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_f_g(
    redeclare package Medium = Medium1,
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    dh=0.04,
    length=24,
    dIns=0.125,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
                     annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={92,82})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_f_g(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=3,
    dh=0.04,
    length=24,
    dIns=0.125,
    kIns=kIns)       annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={108,56})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_g_h(
    redeclare package Medium = Medium1,
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    dh=0.05,
    length=24,
    dIns=0.14,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
                     annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={92,22})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_g_h(
    redeclare package Medium = Medium1,
    m_flow_nominal=m_flow_nominal,
    nPorts=3,
    dh=0.05,
    length=24,
    dIns=0.14,
    kIns=kIns)       annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={108,-4})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_h_i(
    redeclare package Medium = Medium1,
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    dh=0.05,
    length=36,
    dIns=0.14,
    kIns=kIns,
    T_start_in=supTem,
    T_start_out=supTem)
                     annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={92,-38})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_h_i(
    redeclare package Medium = Medium1,
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    dh=0.05,
    length=36,
    dIns=0.14,
    kIns=kIns)       annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={108,-64})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(T=Tgro)
    annotation (Placement(transformation(extent={{-160,-160},{-140,-140}})));
  IBPSA.Fluid.HeatExchangers.Heater_T hea1(
    redeclare package Medium = IBPSA.Media.Water,
    dp_nominal=100,
    m_flow_nominal=50)
                    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-2,-114})));
  Modelica.Blocks.Sources.RealExpression supTemExp(y=supTem)
    annotation (Placement(transformation(extent={{-48,-144},{-28,-124}})));
  IBPSA.Fluid.Sources.FixedBoundary bou(redeclare package Medium =
        IBPSA.Media.Water, nPorts=1)
    annotation (Placement(transformation(extent={{-32,-176},{-12,-156}})));
  parameter Modelica.SIunits.ThermalConductivity kIns=0.035
    "Heat conductivity of pipe insulation, used to compute R";
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=3
    "Nominal mass flow rate";
  parameter Modelica.SIunits.Temperature supTem=333
    "Supply temperature of network";
  parameter Modelica.SIunits.Temperature Tgro=283.15
    "Constant ground temperature";
  IBPSA.Fluid.Sensors.TemperatureTwoPort senTemRetLef(m_flow_nominal=
        m_flow_nominal, redeclare package Medium = Medium1)
    annotation (Placement(transformation(extent={{-54,-154},{-34,-134}})));
  IBPSA.Fluid.Sensors.TemperatureTwoPort senTemRetRig(m_flow_nominal=
        m_flow_nominal, redeclare package Medium = Medium1)
    annotation (Placement(transformation(extent={{60,-154},{40,-134}})));
equation
  connect(combiTimeTable.y[2], SimpleDistrict_2.QDem) annotation (Line(points={{-139,
          -110},{-108,-110},{-108,-74},{-198,-74},{-198,170},{-170,170},{-170,160}},
                      color={0,0,127}));
  connect(combiTimeTable.y[5], SimpleDistrict_5.QDem) annotation (Line(points={{-139,
          -110},{-108,-110},{-108,-74},{-198,-74},{-198,112},{-170,112},{-170,100}},
                                  color={0,0,127}));
  connect(combiTimeTable.y[10], SimpleDistrict_10.QDem) annotation (Line(points={{-139,
          -110},{-108,-110},{-108,-74},{-198,-74},{-198,52},{-170,52},{-170,40}},
                     color={0,0,127}));
  connect(combiTimeTable.y[16], SimpleDistrict_16.QDem) annotation (Line(points={{-139,
          -110},{-108,-110},{-108,-74},{-198,-74},{-198,-8},{-170,-8},{-170,-20}},
                      color={0,0,127}));
  connect(combiTimeTable.y, y1) annotation (Line(points={{-139,-110},{-108,-110},
          {-108,-73.5},{-0.5,-73.5}}, color={0,0,127}));

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
  connect(SimpleDistrict_2.port_a, Supply_2_a.ports_b[1]) annotation (Line(
      points={{-160,154},{-140,154}},
      color={217,67,180},
      thickness=0.5));
  connect(Return_2_a.port_a, SimpleDistrict_2.port_b) annotation (Line(
      points={{-140,128},{-150,128},{-150,145.8},{-160,145.8}},
      color={0,127,255},
      thickness=0.5));
  connect(Supply_2_a.port_a, Supply_a_b.ports_b[1]) annotation (Line(
      points={{-128,154},{-109.2,154},{-109.2,148}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_3_a.port_a, Supply_a_b.ports_b[2]) annotation (Line(
      points={{-68,154},{-106.8,154},{-106.8,148}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_3_a.ports_b[1], SimpleDistrict_3.port_a) annotation (Line(
      points={{-56,154},{-40,154}},
      color={217,67,180},
      thickness=0.5));
  connect(Return_3_a.port_a, SimpleDistrict_3.port_b) annotation (Line(
      points={{-56,128},{-50,128},{-50,145.8},{-40,145.8}},
      color={0,127,255},
      thickness=0.5));
  connect(SimpleDistrict_5.port_a, Supply_5_b.ports_b[1]) annotation (Line(
      points={{-160,94},{-140,94}},
      color={217,67,180},
      thickness=0.5));
  connect(SimpleDistrict_10.port_a, Supply_10_c.ports_b[1]) annotation (Line(
      points={{-160,34},{-140,34}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_11_c.ports_b[1], SimpleDistrict_11.port_a) annotation (Line(
      points={{-56,34},{-40,34}},
      color={217,67,180},
      thickness=0.5));
  connect(SimpleDistrict_16.port_a, Supply_16_d.ports_b[1]) annotation (Line(
      points={{-160,-26},{-140,-26}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_15_d.ports_b[1], SimpleDistrict_15.port_a) annotation (Line(
      points={{-56,-26},{-40,-26}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_5_b.port_a, Supply_b_c.ports_b[1]) annotation (Line(
      points={{-128,94},{-109.6,94},{-109.6,88}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_a_b.port_a, Supply_b_c.ports_b[2]) annotation (Line(
      points={{-108,136},{-108,112},{-108,88},{-108,88}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_6_b.port_a, Supply_b_c.ports_b[3]) annotation (Line(
      points={{-68,94},{-106.4,94},{-106.4,88}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_10_c.port_a, Supply_c_d.ports_b[1]) annotation (Line(
      points={{-128,34},{-109.6,34},{-109.6,28}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_b_c.port_a, Supply_c_d.ports_b[2]) annotation (Line(
      points={{-108,76},{-108,52},{-108,28},{-108,28}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_11_c.port_a, Supply_c_d.ports_b[3]) annotation (Line(
      points={{-68,34},{-106.4,34},{-106.4,28}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_16_d.port_a, Supply_d_i.ports_b[1]) annotation (Line(
      points={{-128,-26},{-109.6,-26},{-109.6,-32}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_c_d.port_a, Supply_d_i.ports_b[2]) annotation (Line(
      points={{-108,16},{-108,-8},{-108,-32},{-108,-32}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_15_d.port_a, Supply_d_i.ports_b[3]) annotation (Line(
      points={{-68,-26},{-106.4,-26},{-106.4,-32}},
      color={217,67,180},
      thickness=0.5));
  connect(Return_5_b.port_a, SimpleDistrict_5.port_b) annotation (Line(
      points={{-140,68},{-150,68},{-150,85.8},{-160,85.8}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_10_c.port_a, SimpleDistrict_10.port_b) annotation (Line(
      points={{-140,8},{-150,8},{-150,25.8},{-160,25.8}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_11_c.port_a, SimpleDistrict_11.port_b) annotation (Line(
      points={{-56,8},{-50,8},{-50,25.8},{-40,25.8}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_6_b.port_a, SimpleDistrict_6.port_b) annotation (Line(
      points={{-56,68},{-50,68},{-50,85.8},{-40,85.8}},
      color={0,127,255},
      thickness=0.5));
  connect(Supply_6_b.ports_b[1], SimpleDistrict_6.port_a) annotation (Line(
      points={{-56,94},{-40,94}},
      color={217,67,180},
      thickness=0.5));
  connect(Return_16_d.port_a, SimpleDistrict_16.port_b) annotation (Line(
      points={{-140,-54},{-150,-54},{-150,-34.2},{-160,-34.2}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_15_d.port_a, SimpleDistrict_15.port_b) annotation (Line(
      points={{-56,-54},{-50,-54},{-50,-34.2},{-40,-34.2}},
      color={0,127,255},
      thickness=0.5));
  connect(SimpleDistrict_1.port_a, Supply_1_e.ports_b[1]) annotation (Line(
      points={{40,154},{60,154}},
      color={217,67,180},
      thickness=0.5));
  connect(SimpleDistrict_8.port_a, Supply_8_f.ports_b[1]) annotation (Line(
      points={{40,94},{60,94}},
      color={217,67,180},
      thickness=0.5));
  connect(SimpleDistrict_4.port_a, Supply_4_e.ports_b[1]) annotation (Line(
      points={{160,154},{144,154}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_7_f.ports_b[1], SimpleDistrict_7.port_a) annotation (Line(
      points={{144,94},{154,94},{154,92},{160,92}},
      color={217,67,180},
      thickness=0.5));
  connect(SimpleDistrict_9.port_a, Supply_9_g.ports_b[1]) annotation (Line(
      points={{40,34},{60,34}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_12_g.ports_b[1], SimpleDistrict_12.port_a) annotation (Line(
      points={{144,34},{160,34}},
      color={217,67,180},
      thickness=0.5));
  connect(SimpleDistrict_14.port_a, Supply_14_h.ports_b[1]) annotation (Line(
      points={{40,-26},{60,-26}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_13_h.ports_b[1], SimpleDistrict_13.port_a) annotation (Line(
      points={{144,-26},{160,-26}},
      color={217,67,180},
      thickness=0.5));
  connect(Return_1_e.port_a, SimpleDistrict_1.port_b) annotation (Line(
      points={{60,128},{52,128},{52,145.8},{40,145.8}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_4_e.port_a, SimpleDistrict_4.port_b) annotation (Line(
      points={{144,128},{154,128},{154,145.8},{160,145.8}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_8_f.port_a, SimpleDistrict_8.port_b) annotation (Line(
      points={{60,68},{52,68},{52,85.8},{40,85.8}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_7_f.port_a, SimpleDistrict_7.port_b) annotation (Line(
      points={{144,68},{154,68},{154,83.8},{160,83.8}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_9_g.port_a, SimpleDistrict_9.port_b) annotation (Line(
      points={{60,8},{50,8},{50,25.8},{40,25.8}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_12_g.port_a, SimpleDistrict_12.port_b) annotation (Line(
      points={{144,8},{154,8},{154,25.8},{160,25.8}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_14_h.port_a, SimpleDistrict_14.port_b) annotation (Line(
      points={{60,-54},{50,-54},{50,-34.2},{40,-34.2}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_13_h.port_a, SimpleDistrict_13.port_b) annotation (Line(
      points={{144,-54},{154,-54},{154,-34.2},{160,-34.2}},
      color={0,127,255},
      thickness=0.5));
  connect(Supply_1_e.port_a, Supply_e_f.ports_b[1]) annotation (Line(
      points={{72,154},{90.8,154},{90.8,148}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_4_e.port_a, Supply_e_f.ports_b[2]) annotation (Line(
      points={{132,154},{93.2,154},{93.2,148}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_8_f.port_a, Supply_f_g.ports_b[1]) annotation (Line(
      points={{72,94},{90.4,94},{90.4,88}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_e_f.port_a, Supply_f_g.ports_b[2]) annotation (Line(
      points={{92,136},{92,112},{92,88},{92,88}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_7_f.port_a, Supply_f_g.ports_b[3]) annotation (Line(
      points={{132,94},{93.6,94},{93.6,88}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_9_g.port_a, Supply_g_h.ports_b[1]) annotation (Line(
      points={{72,34},{90.4,34},{90.4,28}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_f_g.port_a, Supply_g_h.ports_b[2]) annotation (Line(
      points={{92,76},{92,52},{92,28},{92,28}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_12_g.port_a, Supply_g_h.ports_b[3]) annotation (Line(
      points={{132,34},{93.6,34},{93.6,28}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_14_h.port_a, Supply_h_i.ports_b[1]) annotation (Line(
      points={{72,-26},{90.4,-26},{90.4,-32}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_g_h.port_a, Supply_h_i.ports_b[2]) annotation (Line(
      points={{92,16},{92,-8},{92,-32},{92,-32}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_13_h.port_a, Supply_h_i.ports_b[3]) annotation (Line(
      points={{132,-26},{93.6,-26},{93.6,-32}},
      color={217,67,180},
      thickness=0.5));
  connect(fixedTemperature.port, Supply_2_a.heatPort) annotation (Line(points={{
          -140,-150},{-4,-150},{-4,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Supply_3_a.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-62,
          160},{-62,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Supply_1_e.heatPort, Supply_2_a.heatPort) annotation (Line(points={{66,
          160},{66,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Supply_4_e.heatPort, Supply_2_a.heatPort) annotation (Line(points={{138,
          160},{138,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Return_1_e.heatPort, Supply_2_a.heatPort) annotation (Line(points={{66,
          134},{68,134},{68,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Return_4_e.heatPort, Supply_2_a.heatPort) annotation (Line(points={{138,
          134},{136,134},{136,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Return_3_a.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-62,
          134},{-60,134},{-60,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Return_2_a.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-134,
          134},{-132,134},{-132,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Supply_5_b.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-134,
          100},{-134,104},{-4,104},{-4,174},{-134,174},{-134,160}}, color={191,0,
          0}));
  connect(Supply_6_b.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-62,
          100},{-62,104},{-4,104},{-4,174},{-134,174},{-134,160}}, color={191,0,
          0}));
  connect(Supply_a_b.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-102,
          142},{-98,142},{-98,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Return_a_b.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-98,
          116},{-98,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Supply_b_c.heatPort, Return_a_b.heatPort)
    annotation (Line(points={{-102,82},{-98,82},{-98,116}}, color={191,0,0}));
  connect(Return_b_c.heatPort, Return_a_b.heatPort)
    annotation (Line(points={{-98,56},{-98,116}}, color={191,0,0}));
  connect(Return_c_d.heatPort, Return_b_c.heatPort)
    annotation (Line(points={{-98,-4},{-98,56}}, color={191,0,0}));
  connect(Supply_c_d.heatPort, Return_b_c.heatPort)
    annotation (Line(points={{-102,22},{-98,22},{-98,56}}, color={191,0,0}));
  connect(Return_c_d.heatPort, Return_d_i.heatPort)
    annotation (Line(points={{-98,-4},{-98,-64}}, color={191,0,0}));
  connect(Supply_d_i.heatPort, Return_d_i.heatPort) annotation (Line(points={{-102,
          -38},{-98,-38},{-98,-64}}, color={191,0,0}));
  connect(Return_5_b.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-134,
          74},{-132,74},{-132,104},{-4,104},{-4,174},{-134,174},{-134,160}},
        color={191,0,0}));
  connect(Return_6_b.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-62,
          74},{-64,74},{-64,104},{-4,104},{-4,174},{-134,174},{-134,160}},
        color={191,0,0}));
  connect(Supply_10_c.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-134,
          40},{-134,46},{-4,46},{-4,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Supply_11_c.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-62,
          40},{-62,46},{-4,46},{-4,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Return_10_c.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-134,
          14},{-132,14},{-132,46},{-4,46},{-4,174},{-134,174},{-134,160}},
        color={191,0,0}));
  connect(Return_11_c.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-62,
          14},{-64,14},{-64,46},{-4,46},{-4,174},{-134,174},{-134,160}}, color={
          191,0,0}));
  connect(Supply_16_d.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-134,
          -20},{-134,-14},{-4,-14},{-4,174},{-134,174},{-134,160}}, color={191,0,
          0}));
  connect(Supply_15_d.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-62,
          -20},{-62,-14},{-4,-14},{-4,174},{-134,174},{-134,160}}, color={191,0,
          0}));
  connect(Return_16_d.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-134,
          -48},{-132,-48},{-132,-14},{-4,-14},{-4,174},{-134,174},{-134,160}},
        color={191,0,0}));
  connect(Return_15_d.heatPort, Supply_2_a.heatPort) annotation (Line(points={{-62,
          -48},{-64,-48},{-64,-14},{-4,-14},{-4,174},{-134,174},{-134,160}},
        color={191,0,0}));
  connect(Return_h_i.heatPort, Return_g_h.heatPort)
    annotation (Line(points={{102,-64},{102,-4}}, color={191,0,0}));
  connect(Return_g_h.heatPort, Return_f_g.heatPort)
    annotation (Line(points={{102,-4},{102,56}}, color={191,0,0}));
  connect(Return_f_g.heatPort, Return_e_f.heatPort)
    annotation (Line(points={{102,56},{102,116}}, color={191,0,0}));
  connect(Return_e_f.heatPort, Supply_2_a.heatPort) annotation (Line(points={{102,
          116},{102,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Supply_e_f.heatPort, Supply_2_a.heatPort) annotation (Line(points={{98,
          142},{102,142},{102,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Supply_f_g.heatPort, Return_e_f.heatPort)
    annotation (Line(points={{98,82},{102,82},{102,116}}, color={191,0,0}));
  connect(Supply_g_h.heatPort, Return_f_g.heatPort)
    annotation (Line(points={{98,22},{102,22},{102,56}}, color={191,0,0}));
  connect(Supply_h_i.heatPort, Return_g_h.heatPort)
    annotation (Line(points={{98,-38},{102,-38},{102,-4}}, color={191,0,0}));
  connect(Supply_14_h.heatPort, Supply_2_a.heatPort) annotation (Line(points={{66,
          -20},{66,-14},{-4,-14},{-4,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Supply_13_h.heatPort, Supply_2_a.heatPort) annotation (Line(points={{138,
          -20},{138,-14},{-4,-14},{-4,174},{-134,174},{-134,160}}, color={191,0,
          0}));
  connect(Return_14_h.heatPort, Supply_2_a.heatPort) annotation (Line(points={{66,
          -48},{68,-48},{68,-14},{-4,-14},{-4,174},{-134,174},{-134,160}},
        color={191,0,0}));
  connect(Return_13_h.heatPort, Supply_2_a.heatPort) annotation (Line(points={{138,
          -48},{136,-48},{136,-14},{-4,-14},{-4,174},{-134,174},{-134,160}},
        color={191,0,0}));
  connect(Supply_12_g.heatPort, Supply_2_a.heatPort) annotation (Line(points={{138,
          40},{138,46},{-4,46},{-4,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Supply_9_g.heatPort, Supply_2_a.heatPort) annotation (Line(points={{66,
          40},{66,46},{-4,46},{-4,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Return_9_g.heatPort, Supply_2_a.heatPort) annotation (Line(points={{66,
          14},{68,14},{68,46},{-4,46},{-4,174},{-134,174},{-134,160}}, color={191,
          0,0}));
  connect(Return_12_g.heatPort, Supply_2_a.heatPort) annotation (Line(points={{138,
          14},{136,14},{136,46},{-4,46},{-4,174},{-134,174},{-134,160}}, color={
          191,0,0}));
  connect(Supply_7_f.heatPort, Supply_2_a.heatPort) annotation (Line(points={{138,
          100},{138,104},{-4,104},{-4,174},{-134,174},{-134,160}}, color={191,0,
          0}));
  connect(Supply_8_f.heatPort, Supply_2_a.heatPort) annotation (Line(points={{66,
          100},{66,104},{-4,104},{-4,174},{-134,174},{-134,160}}, color={191,0,0}));
  connect(Return_8_f.heatPort, Supply_2_a.heatPort) annotation (Line(points={{66,
          74},{68,74},{68,104},{-4,104},{-4,174},{-134,174},{-134,160}}, color={
          191,0,0}));
  connect(Return_7_f.heatPort, Supply_2_a.heatPort) annotation (Line(points={{138,
          74},{136,74},{136,104},{-4,104},{-4,174},{-134,174},{-134,160}},
        color={191,0,0}));
  connect(Return_3_a.ports_b[1], Return_a_b.ports_b[1]) annotation (Line(points=
         {{-68,128},{-90.8,128},{-90.8,122}}, color={0,127,255}));
  connect(Return_2_a.ports_b[1], Return_a_b.ports_b[2]) annotation (Line(points=
         {{-128,128},{-93.2,128},{-93.2,122}}, color={0,127,255}));
  connect(Return_6_b.ports_b[1], Return_b_c.ports_b[1]) annotation (Line(points=
         {{-68,68},{-90.4,68},{-90.4,62}}, color={0,127,255}));
  connect(Return_a_b.port_a, Return_b_c.ports_b[2]) annotation (Line(points={{-92,
          110},{-92,86},{-92,62},{-92,62}}, color={0,127,255}));
  connect(Return_5_b.ports_b[1], Return_b_c.ports_b[3]) annotation (Line(points=
         {{-128,68},{-93.6,68},{-93.6,62}}, color={0,127,255}));
  connect(Return_11_c.ports_b[1], Return_c_d.ports_b[1])
    annotation (Line(points={{-68,8},{-90.4,8},{-90.4,2}}, color={0,127,255}));
  connect(Return_b_c.port_a, Return_c_d.ports_b[2]) annotation (Line(points={{-92,
          50},{-92,26},{-92,2},{-92,2}}, color={0,127,255}));
  connect(Return_10_c.ports_b[1], Return_c_d.ports_b[3]) annotation (Line(
        points={{-128,8},{-93.6,8},{-93.6,2}}, color={0,127,255}));
  connect(Return_15_d.ports_b[1], Return_d_i.ports_b[1]) annotation (Line(
        points={{-68,-54},{-90.4,-54},{-90.4,-58}}, color={0,127,255}));
  connect(Return_c_d.port_a, Return_d_i.ports_b[2]) annotation (Line(points={{-92,
          -10},{-92,-34},{-92,-58},{-92,-58}}, color={0,127,255}));
  connect(Return_16_d.ports_b[1], Return_d_i.ports_b[3]) annotation (Line(
        points={{-128,-54},{-93.6,-54},{-93.6,-58}}, color={0,127,255}));
  connect(Return_4_e.ports_b[1], Return_e_f.ports_b[1]) annotation (Line(points=
         {{132,128},{109.2,128},{109.2,122}}, color={0,127,255}));
  connect(Return_1_e.ports_b[1], Return_e_f.ports_b[2]) annotation (Line(points=
         {{72,128},{106.8,128},{106.8,122}}, color={0,127,255}));
  connect(Return_7_f.ports_b[1], Return_f_g.ports_b[1]) annotation (Line(points=
         {{132,68},{109.6,68},{109.6,62}}, color={0,127,255}));
  connect(Return_e_f.port_a, Return_f_g.ports_b[2]) annotation (Line(points={{108,
          110},{108,110},{108,62}}, color={0,127,255}));
  connect(Return_8_f.ports_b[1], Return_f_g.ports_b[3]) annotation (Line(points=
         {{72,68},{106.4,68},{106.4,62}}, color={0,127,255}));
  connect(Return_12_g.ports_b[1], Return_g_h.ports_b[1])
    annotation (Line(points={{132,8},{109.6,8},{109.6,2}}, color={0,127,255}));
  connect(Return_f_g.port_a, Return_g_h.ports_b[2]) annotation (Line(points={{108,
          50},{108,26},{108,2},{108,2}}, color={0,127,255}));
  connect(Return_9_g.ports_b[1], Return_g_h.ports_b[3])
    annotation (Line(points={{72,8},{106.4,8},{106.4,2}}, color={0,127,255}));
  connect(Return_13_h.ports_b[1], Return_h_i.ports_b[1]) annotation (Line(
        points={{132,-54},{109.6,-54},{109.6,-58}}, color={0,127,255}));
  connect(Return_g_h.port_a, Return_h_i.ports_b[2]) annotation (Line(points={{108,
          -10},{108,-34},{108,-58},{108,-58}}, color={0,127,255}));
  connect(Return_14_h.ports_b[1], Return_h_i.ports_b[3]) annotation (Line(
        points={{72,-54},{106.4,-54},{106.4,-58}}, color={0,127,255}));
  connect(supTemExp.y, hea1.TSet) annotation (Line(points={{-27,-134},{-10,-134},
          {-10,-126}}, color={0,0,127}));
  connect(hea1.port_b, Supply_d_i.port_a) annotation (Line(points={{-2,-104},{-2,
          -88},{-106,-88},{-106,-66},{-108,-66},{-108,-44}}, color={0,127,255}));
  connect(hea1.port_b, Supply_h_i.port_a) annotation (Line(points={{-2,-104},{-2,
          -88},{92,-88},{92,-44}}, color={0,127,255}));
  connect(bou.ports[1], hea1.port_a) annotation (Line(points={{-12,-166},{-2,-166},
          {-2,-124}}, color={0,127,255}));
  connect(Return_d_i.port_a, senTemRetLef.port_a) annotation (Line(points={{-92,
          -70},{-92,-144},{-54,-144}}, color={0,127,255}));
  connect(senTemRetLef.port_b, hea1.port_a) annotation (Line(points={{-34,-144},
          {-2,-144},{-2,-124}}, color={0,127,255}));
  connect(Return_h_i.port_a, senTemRetRig.port_a) annotation (Line(points={{108,
          -70},{108,-144},{60,-144}}, color={0,127,255}));
  connect(senTemRetRig.port_b, hea1.port_a) annotation (Line(points={{40,-144},
          {-2,-144},{-2,-124}}, color={0,127,255}));
  annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
        coordinateSystem(extent={{-100,-100},{100,100}})),
    experiment(StopTime=604800, Interval=59.9999616),
    __Dymola_experimentSetupOutput,
    __Dymola_experimentFlags(
      Advanced(
        EvaluateAlsoTop=false,
        GenerateVariableDependencies=false,
        OutputModelicaCode=false),
      Evaluate=true,
      OutputCPUtime=true,
      OutputFlatModelica=false));
end SupplyNetwork_numerical;
