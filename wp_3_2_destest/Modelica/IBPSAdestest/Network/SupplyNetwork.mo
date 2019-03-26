within IBPSAdestest.Network;
model SupplyNetwork "Only supply line is modelled"
  extends Modelica.Icons.Example;
  extends BaseClasses.BuildingLocationsDouble(
    SimpleDistrict_2(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_3(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_1(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_4(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_5(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_6(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_8(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_7(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_10(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_11(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_9(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_12(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_16(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_15(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_14(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3),
    SimpleDistrict_13(           T_start=T_supply + 273.15,
      pum(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false),
      deltaT=20,
      m_flo_bypass=0.3));

  package Medium1 = IBPSA.Media.Water "Medium model";

  parameter Real pipeData[24,6]=DataFiles.readCSVmatrix(Buildings.BoundaryConditions.WeatherData.BaseClasses.getAbsolutePath("modelica://IBPSAdestest/Resources/Data/DestestPipeData/Pipe data wo names.csv"));

  parameter Real dT=20 "Temperature difference between suply and return line";
  parameter Real cp_water=4.182 "Cp of water";
  parameter Real T_supply=50 "T_supply in degC";

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    tableName="data",
    columns=2:18,
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://IBPSAdestest/Resources/Data/DestestHeatDemand/heat_profiles.txt"))
    annotation (Placement(transformation(extent={{-140,-120},{-120,-100}})));

protected
  Modelica.Blocks.Interfaces.RealOutput y1[size(combiTimeTable.y, 1)]
                     "Connector of Real output signals"
    annotation (Placement(transformation(extent={{-1,-73},{0,-74}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_2_a(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[10, 2],
    length=pipeData[10, 1],
    dIns=pipeData[10, 3],
    kIns=pipeData[10, 6],
    m_flow_nominal=pipeData[10, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-128,148},{-140,160}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_2_a(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[10, 2],
    length=pipeData[10, 1],
    dIns=pipeData[10, 3],
    kIns=pipeData[10, 6],
    m_flow_nominal=pipeData[10, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-140,122},{-128,134}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_3_a(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[21, 2],
    length=pipeData[21, 1],
    dIns=pipeData[21, 3],
    kIns=pipeData[21, 6],
    m_flow_nominal=pipeData[21, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-68,148},{-56,160}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_3_a(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[21, 2],
    length=pipeData[21, 1],
    dIns=pipeData[21, 3],
    kIns=pipeData[21, 6],
    m_flow_nominal=pipeData[21, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-56,122},{-68,134}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_5_b(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[12, 2],
    length=pipeData[12, 1],
    dIns=pipeData[12, 3],
    kIns=pipeData[12, 6],
    m_flow_nominal=pipeData[12, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-128,88},{-140,100}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_5_b(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[12, 2],
    length=pipeData[12, 1],
    dIns=pipeData[12, 3],
    kIns=pipeData[12, 6],
    m_flow_nominal=pipeData[12, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-140,62},{-128,74}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_6_b(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[22, 2],
    length=pipeData[22, 1],
    dIns=pipeData[22, 3],
    kIns=pipeData[22, 6],
    m_flow_nominal=pipeData[22, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-56,62},{-68,74}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_6_b(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[22, 2],
    length=pipeData[22, 1],
    dIns=pipeData[22, 3],
    kIns=pipeData[22, 6],
    m_flow_nominal=pipeData[22, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-68,88},{-56,100}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_10_c(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[20, 2],
    length=pipeData[20, 1],
    dIns=pipeData[20, 3],
    kIns=pipeData[20, 6],
    m_flow_nominal=pipeData[20, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-128,28},{-140,40}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_10_c(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[20, 2],
    length=pipeData[20, 1],
    dIns=pipeData[20, 3],
    kIns=pipeData[20, 6],
    m_flow_nominal=pipeData[20, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-140,2},{-128,14}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_11_c(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[4, 2],
    length=pipeData[4, 1],
    dIns=pipeData[4, 3],
    kIns=pipeData[4, 6],
    m_flow_nominal=pipeData[4, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                         annotation (Placement(transformation(extent={{-56,2},{-68,
            14}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_11_c(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[4, 2],
    length=pipeData[4, 1],
    dIns=pipeData[4, 3],
    kIns=pipeData[4, 6],
    m_flow_nominal=pipeData[4, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                         annotation (Placement(transformation(extent={{-68,28},{
            -56,40}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_16_d(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[2, 2],
    length=pipeData[2, 1],
    dIns=pipeData[2, 3],
    kIns=pipeData[2, 6],
    m_flow_nominal=pipeData[2, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-128,-32},{-140,-20}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_16_d(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[2, 2],
    length=pipeData[2, 1],
    dIns=pipeData[2, 3],
    kIns=pipeData[2, 6],
    m_flow_nominal=pipeData[2, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-140,-60},{-128,-48}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_15_d(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[1, 2],
    length=pipeData[1, 1],
    dIns=pipeData[1, 3],
    kIns=pipeData[1, 6],
    m_flow_nominal=pipeData[1, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-56,-60},{-68,-48}})));
public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_15_d(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[1, 2],
    length=pipeData[1, 1],
    dIns=pipeData[1, 3],
    kIns=pipeData[1, 6],
    m_flow_nominal=pipeData[1, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-68,-32},{-56,-20}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_1_e(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[19, 2],
    length=pipeData[19, 1],
    dIns=pipeData[19, 3],
    kIns=pipeData[19, 6],
    m_flow_nominal=pipeData[19, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                          annotation (Placement(transformation(extent={{72,148},
            {60,160}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_1_e(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[19, 2],
    length=pipeData[19, 1],
    dIns=pipeData[19, 3],
    kIns=pipeData[19, 6],
    m_flow_nominal=pipeData[19, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(extent={{60,122},
            {72,134}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_4_e(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[24, 2],
    length=pipeData[24, 1],
    dIns=pipeData[24, 3],
    kIns=pipeData[24, 6],
    m_flow_nominal=pipeData[24, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
    annotation (Placement(transformation(extent={{132,148},{144,160}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_4_e(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[24, 2],
    length=pipeData[24, 1],
    dIns=pipeData[24, 3],
    kIns=pipeData[24, 6],
    m_flow_nominal=pipeData[24, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{144,122},{132,134}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_8_f(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[11, 2],
    length=pipeData[11, 1],
    dIns=pipeData[11, 3],
    kIns=pipeData[11, 6],
    m_flow_nominal=pipeData[11, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                          annotation (Placement(transformation(extent={{72,88},{
            60,100}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_8_f(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[11, 2],
    length=pipeData[11, 1],
    dIns=pipeData[11, 3],
    kIns=pipeData[11, 6],
    m_flow_nominal=pipeData[11, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(extent={{60,62},{
            72,74}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_7_f(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[5, 2],
    length=pipeData[5, 1],
    dIns=pipeData[5, 3],
    kIns=pipeData[5, 6],
    m_flow_nominal=pipeData[5, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                         annotation (Placement(transformation(extent={{144,64},{
            132,76}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_7_f(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[5, 2],
    length=pipeData[5, 1],
    dIns=pipeData[5, 3],
    kIns=pipeData[5, 6],
    m_flow_nominal=pipeData[5, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
    annotation (Placement(transformation(extent={{132,88},{144,100}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_9_g(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[6, 2],
    length=pipeData[6, 1],
    dIns=pipeData[6, 3],
    kIns=pipeData[6, 6],
    m_flow_nominal=pipeData[6, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                         annotation (Placement(transformation(extent={{72,28},{60,40}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_9_g(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[6, 2],
    length=pipeData[6, 1],
    dIns=pipeData[6, 3],
    kIns=pipeData[6, 6],
    m_flow_nominal=pipeData[6, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                         annotation (Placement(transformation(extent={{60,2},{72,14}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_12_g(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[14, 2],
    length=pipeData[14, 1],
    dIns=pipeData[14, 3],
    kIns=pipeData[14, 6],
    m_flow_nominal=pipeData[14, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(extent={{144,2},{132,14}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_12_g(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[14, 2],
    length=pipeData[14, 1],
    dIns=pipeData[14, 3],
    kIns=pipeData[14, 6],
    m_flow_nominal=pipeData[14, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                          annotation (Placement(transformation(extent={{132,28},{144,40}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_14_h(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[15, 2],
    length=pipeData[15, 1],
    dIns=pipeData[15, 3],
    kIns=pipeData[15, 6],
    m_flow_nominal=pipeData[15, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                          annotation (Placement(transformation(extent={{72,-32},{60,-20}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_14_h(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[15, 2],
    length=pipeData[15, 1],
    dIns=pipeData[15, 3],
    kIns=pipeData[15, 6],
    m_flow_nominal=pipeData[15, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(extent={{60,-60},{72,-48}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_13_h(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[9, 2],
    length=pipeData[9, 1],
    dIns=pipeData[9, 3],
    kIns=pipeData[9, 6],
    m_flow_nominal=pipeData[9, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{144,-60},{132,-48}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_13_h(
    redeclare package Medium = Medium1,
    nPorts=1,
    dh=pipeData[9, 2],
    length=pipeData[9, 1],
    dIns=pipeData[9, 3],
    kIns=pipeData[9, 6],
    m_flow_nominal=pipeData[9, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
    annotation (Placement(transformation(extent={{132,-32},{144,-20}})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_a_b(
    redeclare package Medium = Medium1,
    nPorts=2,
    dh=pipeData[3, 2],
    length=pipeData[3, 1],
    dIns=pipeData[3, 3],
    kIns=pipeData[3, 6],
    m_flow_nominal=pipeData[3, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                         annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={-108,142})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_a_b(
    redeclare package Medium = Medium1,
    nPorts=2,
    dh=pipeData[3, 2],
    length=pipeData[3, 1],
    dIns=pipeData[3, 3],
    kIns=pipeData[3, 6],
    m_flow_nominal=pipeData[3, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                         annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={-92,116})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_b_c(
    redeclare package Medium = Medium1,
    nPorts=3,
    dh=pipeData[8, 2],
    length=pipeData[8, 1],
    dIns=pipeData[8, 3],
    kIns=pipeData[8, 6],
    m_flow_nominal=pipeData[8, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                         annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={-108,82})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_b_c(
    redeclare package Medium = Medium1,
    nPorts=3,
    dh=pipeData[8, 2],
    length=pipeData[8, 1],
    dIns=pipeData[8, 3],
    kIns=pipeData[8, 6],
    m_flow_nominal=pipeData[8, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                         annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={-92,56})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_c_d(
    redeclare package Medium = Medium1,
    nPorts=3,
    dh=pipeData[23, 2],
    length=pipeData[23, 1],
    dIns=pipeData[23, 3],
    kIns=pipeData[23, 6],
    m_flow_nominal=pipeData[23, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                          annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={-108,22})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_c_d(
    redeclare package Medium = Medium1,
    nPorts=3,
    dh=pipeData[23, 2],
    length=pipeData[23, 1],
    dIns=pipeData[23, 3],
    kIns=pipeData[23, 6],
    m_flow_nominal=pipeData[23, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={-92,-4})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_d_i(
    redeclare package Medium = Medium1,
    nPorts=3,
    dh=pipeData[16, 2],
    length=pipeData[16, 1],
    dIns=pipeData[16, 3],
    kIns=pipeData[16, 6],
    m_flow_nominal=pipeData[16, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                          annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={-108,-38})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_d_i(
    redeclare package Medium = Medium1,
    nPorts=3,
    dh=pipeData[16, 2],
    length=pipeData[16, 1],
    dIns=pipeData[16, 3],
    kIns=pipeData[16, 6],
    m_flow_nominal=pipeData[16, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={-92,-64})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_e_f(
    redeclare package Medium = Medium1,
    nPorts=2,
    dh=pipeData[13, 2],
    length=pipeData[13, 1],
    dIns=pipeData[13, 3],
    kIns=pipeData[13, 6],
    m_flow_nominal=pipeData[13, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                          annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={92,142})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_e_f(
    redeclare package Medium = Medium1,
    nPorts=2,
    dh=pipeData[13, 2],
    length=pipeData[13, 1],
    dIns=pipeData[13, 3],
    kIns=pipeData[13, 6],
    m_flow_nominal=pipeData[13, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={108,116})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_f_g(
    redeclare package Medium = Medium1,
    nPorts=3,
    dh=pipeData[18, 2],
    length=pipeData[18, 1],
    dIns=pipeData[18, 3],
    kIns=pipeData[18, 6],
    m_flow_nominal=pipeData[18, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                          annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={92,82})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_f_g(
    redeclare package Medium = Medium1,
    nPorts=3,
    dh=pipeData[18, 2],
    length=pipeData[18, 1],
    dIns=pipeData[18, 3],
    kIns=pipeData[18, 6],
    m_flow_nominal=pipeData[18, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={108,56})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_g_h(
    redeclare package Medium = Medium1,
    nPorts=3,
    dh=pipeData[17, 2],
    length=pipeData[17, 1],
    dIns=pipeData[17, 3],
    kIns=pipeData[17, 6],
    m_flow_nominal=pipeData[17, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                          annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={92,22})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_g_h(
    redeclare package Medium = Medium1,
    nPorts=3,
    dh=pipeData[17, 2],
    length=pipeData[17, 1],
    dIns=pipeData[17, 3],
    kIns=pipeData[17, 6],
    m_flow_nominal=pipeData[17, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={108,-4})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Supply_h_i(
    redeclare package Medium = Medium1,
    nPorts=3,
    dh=pipeData[7, 2],
    length=pipeData[7, 1],
    dIns=pipeData[7, 3],
    kIns=pipeData[7, 6],
    m_flow_nominal=pipeData[7, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15,
    T_start_out=T_supply + 273.15)
                         annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={92,-38})));

public
  IBPSA.Fluid.FixedResistances.PlugFlowPipe Return_h_i(
    redeclare package Medium = Medium1,
    nPorts=3,
    dh=pipeData[7, 2],
    length=pipeData[7, 1],
    dIns=pipeData[7, 3],
    kIns=pipeData[7, 6],
    m_flow_nominal=pipeData[7, 4]/(cp_water*dT),
    T_start_in=T_supply + 273.15 - 20,
    T_start_out=T_supply + 273.15 - 20)
                         annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={108,-64})));

  IBPSA.Fluid.HeatExchangers.Heater_T hea(
    redeclare package Medium = Medium1,
    m_flow_nominal=20,
    dp_nominal=0,
    T_start=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-10,-130},{10,-110}})));
  IBPSA.Fluid.Sources.FixedBoundary bou(nPorts=1, redeclare package Medium =
        Medium1)
    annotation (Placement(transformation(extent={{-50,-150},{-30,-130}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-140,-146},{-120,-126}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(T=285.15)
    annotation (Placement(transformation(extent={{-140,180},{-120,200}})));
  Modelica.Blocks.Interfaces.RealOutput HeatInjection
    annotation (Placement(transformation(extent={{160,-122},{180,-102}})));
  Modelica.Blocks.Interfaces.RealOutput HeatLosses
    annotation (Placement(transformation(extent={{160,-160},{180,-140}})));
  Modelica.Blocks.Interfaces.RealOutput HeatInjectionTotal
    annotation (Placement(transformation(extent={{160,-140},{180,-120}})));
  Modelica.Blocks.Continuous.Integrator integrator
    annotation (Placement(transformation(extent={{130,-140},{150,-120}})));
  Modelica.Blocks.Interfaces.RealOutput HeatLossesTotal
    annotation (Placement(transformation(extent={{160,-180},{180,-160}})));
  Modelica.Blocks.Continuous.Integrator integrator1
    annotation (Placement(transformation(extent={{130,-180},{150,-160}})));
  Modelica.Blocks.Sources.RealExpression realExpression1(y=fixedTemperature.port.Q_flow)
    annotation (Placement(transformation(extent={{74,-160},{94,-140}})));
equation
  connect(combiTimeTable.y[2], SimpleDistrict_2.QDem) annotation (Line(points={{-119,
          -110},{-108,-110},{-108,-74},{-198,-74},{-198,170},{-170,170},{-170,160}},
                      color={0,0,127}));
  connect(combiTimeTable.y[5], SimpleDistrict_5.QDem) annotation (Line(points={{-119,
          -110},{-108,-110},{-108,-110},{-108,-74},{-198,-74},{-198,112},{-170,112},
          {-170,100}},            color={0,0,127}));
  connect(combiTimeTable.y[10], SimpleDistrict_10.QDem) annotation (Line(points={{-119,
          -110},{-108,-110},{-108,-74},{-198,-74},{-198,52},{-170,52},{-170,40}},
                     color={0,0,127}));
  connect(combiTimeTable.y[16], SimpleDistrict_16.QDem) annotation (Line(points={{-119,
          -110},{-108,-110},{-108,-74},{-198,-74},{-198,-8},{-170,-8},{-170,-20}},
                      color={0,0,127}));
  connect(combiTimeTable.y, y1) annotation (Line(points={{-119,-110},{-108,-110},
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
      points={{-108,136},{-108,88}},
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
      points={{-108,76},{-108,28}},
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
      points={{-108,16},{-108,-32}},
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
      points={{144,70},{154,70},{154,83.8},{160,83.8}},
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
      points={{92,136},{92,88}},
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
      points={{92,76},{92,28}},
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
  connect(Return_3_a.ports_b[1], Return_a_b.ports_b[1]) annotation (Line(
      points={{-68,128},{-90.8,128},{-90.8,122}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_2_a.ports_b[1], Return_a_b.ports_b[2]) annotation (Line(
      points={{-128,128},{-93.2,128},{-93.2,122}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_6_b.ports_b[1], Return_b_c.ports_b[1]) annotation (Line(
      points={{-68,68},{-90.4,68},{-90.4,62}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_a_b.port_a, Return_b_c.ports_b[2]) annotation (Line(
      points={{-92,110},{-92,62}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_5_b.ports_b[1], Return_b_c.ports_b[3]) annotation (Line(
      points={{-128,68},{-93.6,68},{-93.6,62}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_11_c.ports_b[1], Return_c_d.ports_b[1]) annotation (Line(
      points={{-68,8},{-90.4,8},{-90.4,2}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_b_c.port_a, Return_c_d.ports_b[2]) annotation (Line(
      points={{-92,50},{-92,2}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_10_c.ports_b[1], Return_c_d.ports_b[3]) annotation (Line(
      points={{-128,8},{-93.6,8},{-93.6,2}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_15_d.ports_b[1], Return_d_i.ports_b[1]) annotation (Line(
      points={{-68,-54},{-90.4,-54},{-90.4,-58}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_c_d.port_a, Return_d_i.ports_b[2]) annotation (Line(
      points={{-92,-10},{-92,-58}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_16_d.ports_b[1], Return_d_i.ports_b[3]) annotation (Line(
      points={{-128,-54},{-93.6,-54},{-93.6,-58}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_4_e.ports_b[1], Return_e_f.ports_b[1]) annotation (Line(
      points={{132,128},{109.2,128},{109.2,122}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_1_e.ports_b[1], Return_e_f.ports_b[2]) annotation (Line(
      points={{72,128},{106.8,128},{106.8,122}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_7_f.ports_b[1], Return_f_g.ports_b[1]) annotation (Line(
      points={{132,70},{122,70},{122,68},{109.6,68},{109.6,62}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_e_f.port_a, Return_f_g.ports_b[2]) annotation (Line(
      points={{108,110},{108,62}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_8_f.ports_b[1], Return_f_g.ports_b[3]) annotation (Line(
      points={{72,68},{106.4,68},{106.4,62}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_12_g.ports_b[1], Return_g_h.ports_b[1]) annotation (Line(
      points={{132,8},{109.6,8},{109.6,2}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_f_g.port_a, Return_g_h.ports_b[2]) annotation (Line(
      points={{108,50},{108,26},{108,2},{108,2}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_13_h.ports_b[1], Return_h_i.ports_b[1]) annotation (Line(
      points={{132,-54},{109.6,-54},{109.6,-58}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_g_h.port_a, Return_h_i.ports_b[2]) annotation (Line(
      points={{108,-10},{108,-34},{108,-58},{108,-58}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_14_h.ports_b[1], Return_h_i.ports_b[3]) annotation (Line(
      points={{72,-54},{106.4,-54},{106.4,-58}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_9_g.ports_b[1], Return_g_h.ports_b[3]) annotation (Line(
      points={{72,8},{106.4,8},{106.4,2}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_d_i.port_a, hea.port_a) annotation (Line(
      points={{-92,-70},{-92,-120},{-10,-120}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_h_i.port_a, hea.port_a) annotation (Line(
      points={{108,-70},{110,-70},{110,-96},{-30,-96},{-30,-120},{-10,-120}},
      color={0,127,255},
      thickness=0.5));
  connect(Supply_h_i.port_a, hea.port_b) annotation (Line(
      points={{92,-44},{92,-120},{10,-120}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_d_i.port_a, hea.port_b) annotation (Line(
      points={{-108,-44},{-108,-68},{-102,-68},{-102,-90},{32,-90},{32,-120},{10,
          -120}},
      color={217,67,180},
      thickness=0.5));
  connect(bou.ports[1], hea.port_a) annotation (Line(points={{-30,-140},{-10,-140},
          {-10,-120}}, color={0,127,255}));
  connect(realExpression.y, hea.TSet) annotation (Line(points={{-119,-136},{-82,
          -136},{-82,-112},{-12,-112}}, color={0,0,127}));
  connect(fixedTemperature.port, Supply_a_b.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,142},{-102,142}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_a_b.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,116},{-98,116}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_b_c.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,82},{-102,82}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_b_c.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,56},{-98,56}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_c_d.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,22},{-102,22}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_c_d.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-4},{-98,-4}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_d_i.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-38},{-102,-38}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_d_i.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-64},{-98,-64}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_2_a.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,160},{-134,160}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_3_a.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,160},{-62,160}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_2_a.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,134},{-134,134}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_3_a.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,134},{-62,134}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_5_b.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,100},{-134,100}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_6_b.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,100},{-62,100}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_5_b.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,74},{-134,74}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_6_b.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,74},{-62,74}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_10_c.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,40},{-134,40}},       color={191,0,0}));
  connect(fixedTemperature.port, Supply_11_c.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,40},{-62,40}},       color={191,0,0}));
  connect(fixedTemperature.port, Return_10_c.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,14},{-134,14}},       color={191,0,0}));
  connect(fixedTemperature.port, Return_11_c.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,14},{-62,14}},       color={191,0,0}));
  connect(fixedTemperature.port, Supply_16_d.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-20},{-134,-20}},       color={191,0,0}));
  connect(fixedTemperature.port, Supply_15_d.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-20},{-62,-20}},       color={191,0,0}));
  connect(fixedTemperature.port, Return_16_d.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-48},{-134,-48}},       color={191,0,0}));
  connect(fixedTemperature.port, Return_15_d.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-48},{-62,-48}},       color={191,0,0}));
  connect(fixedTemperature.port, Supply_e_f.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,142},{98,142}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_e_f.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,116},{102,116}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_f_g.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,82},{98,82}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_f_g.heatPort) annotation (Line(points={{
          -120,190},{100,190},{100,56},{102,56}}, color={191,0,0}));
  connect(fixedTemperature.port, Supply_g_h.heatPort) annotation (Line(points={{
          -120,190},{100,190},{100,22},{98,22}}, color={191,0,0}));
  connect(fixedTemperature.port, Return_g_h.heatPort) annotation (Line(points={{
          -120,190},{100,190},{100,-4},{102,-4}}, color={191,0,0}));
  connect(fixedTemperature.port, Supply_h_i.heatPort) annotation (Line(points={{
          -120,190},{100,190},{100,-38},{98,-38}}, color={191,0,0}));
  connect(fixedTemperature.port, Return_h_i.heatPort) annotation (Line(points={{
          -120,190},{100,190},{100,-64},{102,-64}}, color={191,0,0}));
  connect(fixedTemperature.port, Supply_1_e.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,160},{66,160}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_4_e.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,160},{138,160}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_1_e.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,134},{66,134}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_4_e.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,134},{138,134}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_8_f.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,100},{66,100}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_7_f.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,100},{138,100}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_8_f.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,74},{66,74}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_7_f.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,76},{138,76}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_9_g.heatPort) annotation (Line(points={{
          -120,190},{100,190},{100,40},{66,40}}, color={191,0,0}));
  connect(fixedTemperature.port, Supply_12_g.heatPort) annotation (Line(points={
          {-120,190},{100,190},{100,40},{138,40}}, color={191,0,0}));
  connect(fixedTemperature.port, Return_9_g.heatPort) annotation (Line(points={{
          -120,190},{100,190},{100,14},{66,14}}, color={191,0,0}));
  connect(fixedTemperature.port, Return_12_g.heatPort) annotation (Line(points={
          {-120,190},{100,190},{100,14},{138,14}}, color={191,0,0}));
  connect(fixedTemperature.port, Supply_14_h.heatPort) annotation (Line(points={
          {-120,190},{100,190},{100,-20},{66,-20}}, color={191,0,0}));
  connect(fixedTemperature.port, Supply_13_h.heatPort) annotation (Line(points={
          {-120,190},{100,190},{100,-20},{138,-20}}, color={191,0,0}));
  connect(fixedTemperature.port, Return_14_h.heatPort) annotation (Line(points={
          {-120,190},{100,190},{100,-48},{66,-48}}, color={191,0,0}));
  connect(fixedTemperature.port, Return_13_h.heatPort) annotation (Line(points={
          {-120,190},{100,190},{100,-48},{138,-48}}, color={191,0,0}));
  connect(hea.Q_flow, HeatInjection)
    annotation (Line(points={{11,-112},{170,-112}}, color={0,0,127}));
  connect(integrator.y, HeatInjectionTotal)
    annotation (Line(points={{151,-130},{170,-130}}, color={0,0,127}));
  connect(integrator.u, HeatInjection) annotation (Line(points={{128,-130},{108,
          -130},{108,-112},{170,-112}}, color={0,0,127}));
  connect(HeatInjection, HeatInjection)
    annotation (Line(points={{170,-112},{170,-112}}, color={0,0,127}));
  connect(integrator1.y, HeatLossesTotal)
    annotation (Line(points={{151,-170},{170,-170}}, color={0,0,127}));
  connect(integrator1.u, HeatLosses) annotation (Line(points={{128,-170},{124,-170},
          {124,-150},{170,-150}}, color={0,0,127}));
  connect(realExpression1.y, HeatLosses)
    annotation (Line(points={{95,-150},{170,-150}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
        coordinateSystem(extent={{-100,-100},{100,100}})));
end SupplyNetwork;
