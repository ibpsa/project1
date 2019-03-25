within IBPSAdestest.Network;
model SupplyNetwork_DynamicPipe "Only supply line is modelled"
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
  Buildings.Fluid.FixedResistances.Pipe Supply_2_a(
    redeclare package Medium = Medium1,
    diameter=pipeData[10, 2],
    length=pipeData[10, 1],
    thicknessIns=pipeData[10, 3],
    lambdaIns=pipeData[10, 6],
    m_flow_nominal=pipeData[10, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-128,148},{-140,160}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_2_a(
    redeclare package Medium = Medium1,
    diameter=pipeData[10, 2],
    length=pipeData[10, 1],
    thicknessIns=pipeData[10, 3],
    lambdaIns=pipeData[10, 6],
    m_flow_nominal=pipeData[10, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-140,122},{-128,134}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_3_a(
    redeclare package Medium = Medium1,
    diameter=pipeData[21, 2],
    length=pipeData[21, 1],
    thicknessIns=pipeData[21, 3],
    lambdaIns=pipeData[21, 6],
    m_flow_nominal=pipeData[21, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-68,148},{-56,160}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_3_a(
    redeclare package Medium = Medium1,
    diameter=pipeData[21, 2],
    length=pipeData[21, 1],
    thicknessIns=pipeData[21, 3],
    lambdaIns=pipeData[21, 6],
    m_flow_nominal=pipeData[21, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-56,122},{-68,134}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_5_b(
    redeclare package Medium = Medium1,
    diameter=pipeData[12, 2],
    length=pipeData[12, 1],
    thicknessIns=pipeData[12, 3],
    lambdaIns=pipeData[12, 6],
    m_flow_nominal=pipeData[12, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-128,88},{-140,100}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_5_b(
    redeclare package Medium = Medium1,
    diameter=pipeData[12, 2],
    length=pipeData[12, 1],
    thicknessIns=pipeData[12, 3],
    lambdaIns=pipeData[12, 6],
    m_flow_nominal=pipeData[12, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-140,62},{-128,74}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_6_b(
    redeclare package Medium = Medium1,
    diameter=pipeData[22, 2],
    length=pipeData[22, 1],
    thicknessIns=pipeData[22, 3],
    lambdaIns=pipeData[22, 6],
    m_flow_nominal=pipeData[22, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-56,62},{-68,74}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_6_b(
    redeclare package Medium = Medium1,
    diameter=pipeData[22, 2],
    length=pipeData[22, 1],
    thicknessIns=pipeData[22, 3],
    lambdaIns=pipeData[22, 6],
    m_flow_nominal=pipeData[22, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-68,88},{-56,100}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_10_c(
    redeclare package Medium = Medium1,
    diameter=pipeData[20, 2],
    length=pipeData[20, 1],
    thicknessIns=pipeData[20, 3],
    lambdaIns=pipeData[20, 6],
    m_flow_nominal=pipeData[20, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-128,28},{-140,40}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_10_c(
    redeclare package Medium = Medium1,
    diameter=pipeData[20, 2],
    length=pipeData[20, 1],
    thicknessIns=pipeData[20, 3],
    lambdaIns=pipeData[20, 6],
    m_flow_nominal=pipeData[20, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-140,2},{-128,14}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_11_c(
    redeclare package Medium = Medium1,
    diameter=pipeData[4, 2],
    length=pipeData[4, 1],
    thicknessIns=pipeData[4, 3],
    lambdaIns=pipeData[4, 6],
    m_flow_nominal=pipeData[4, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                         annotation (Placement(transformation(extent={{-56,2},{-68,
            14}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_11_c(
    redeclare package Medium = Medium1,
    diameter=pipeData[4, 2],
    length=pipeData[4, 1],
    thicknessIns=pipeData[4, 3],
    lambdaIns=pipeData[4, 6],
    m_flow_nominal=pipeData[4, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                         annotation (Placement(transformation(extent={{-68,28},{
            -56,40}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_16_d(
    redeclare package Medium = Medium1,
    diameter=pipeData[2, 2],
    length=pipeData[2, 1],
    thicknessIns=pipeData[2, 3],
    lambdaIns=pipeData[2, 6],
    m_flow_nominal=pipeData[2, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-128,-32},{-140,-20}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_16_d(
    redeclare package Medium = Medium1,
    diameter=pipeData[2, 2],
    length=pipeData[2, 1],
    thicknessIns=pipeData[2, 3],
    lambdaIns=pipeData[2, 6],
    m_flow_nominal=pipeData[2, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-140,-60},{-128,-48}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_15_d(
    redeclare package Medium = Medium1,
    diameter=pipeData[1, 2],
    length=pipeData[1, 1],
    thicknessIns=pipeData[1, 3],
    lambdaIns=pipeData[1, 6],
    m_flow_nominal=pipeData[1, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{-56,-60},{-68,-48}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_15_d(
    redeclare package Medium = Medium1,
    diameter=pipeData[1, 2],
    length=pipeData[1, 1],
    thicknessIns=pipeData[1, 3],
    lambdaIns=pipeData[1, 6],
    m_flow_nominal=pipeData[1, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
    annotation (Placement(transformation(extent={{-68,-32},{-56,-20}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_1_e(
    redeclare package Medium = Medium1,
    diameter=pipeData[19, 2],
    length=pipeData[19, 1],
    thicknessIns=pipeData[19, 3],
    lambdaIns=pipeData[19, 6],
    m_flow_nominal=pipeData[19, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                          annotation (Placement(transformation(extent={{72,148},
            {60,160}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_1_e(
    redeclare package Medium = Medium1,
    diameter=pipeData[19, 2],
    length=pipeData[19, 1],
    thicknessIns=pipeData[19, 3],
    lambdaIns=pipeData[19, 6],
    m_flow_nominal=pipeData[19, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(extent={{60,122},
            {72,134}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_4_e(
    redeclare package Medium = Medium1,
    diameter=pipeData[24, 2],
    length=pipeData[24, 1],
    thicknessIns=pipeData[24, 3],
    lambdaIns=pipeData[24, 6],
    m_flow_nominal=pipeData[24, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
    annotation (Placement(transformation(extent={{132,148},{144,160}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_4_e(
    redeclare package Medium = Medium1,
    diameter=pipeData[24, 2],
    length=pipeData[24, 1],
    thicknessIns=pipeData[24, 3],
    lambdaIns=pipeData[24, 6],
    m_flow_nominal=pipeData[24, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{144,122},{132,134}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_8_f(
    redeclare package Medium = Medium1,
    diameter=pipeData[11, 2],
    length=pipeData[11, 1],
    thicknessIns=pipeData[11, 3],
    lambdaIns=pipeData[11, 6],
    m_flow_nominal=pipeData[11, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                          annotation (Placement(transformation(extent={{72,88},{
            60,100}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_8_f(
    redeclare package Medium = Medium1,
    diameter=pipeData[11, 2],
    length=pipeData[11, 1],
    thicknessIns=pipeData[11, 3],
    lambdaIns=pipeData[11, 6],
    m_flow_nominal=pipeData[11, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(extent={{60,62},{
            72,74}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_7_f(
    redeclare package Medium = Medium1,
    diameter=pipeData[5, 2],
    length=pipeData[5, 1],
    thicknessIns=pipeData[5, 3],
    lambdaIns=pipeData[5, 6],
    m_flow_nominal=pipeData[5, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                         annotation (Placement(transformation(extent={{144,64},{
            132,76}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_7_f(
    redeclare package Medium = Medium1,
    diameter=pipeData[5, 2],
    length=pipeData[5, 1],
    thicknessIns=pipeData[5, 3],
    lambdaIns=pipeData[5, 6],
    m_flow_nominal=pipeData[5, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
    annotation (Placement(transformation(extent={{132,88},{144,100}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_9_g(
    redeclare package Medium = Medium1,
    diameter=pipeData[6, 2],
    length=pipeData[6, 1],
    thicknessIns=pipeData[6, 3],
    lambdaIns=pipeData[6, 6],
    m_flow_nominal=pipeData[6, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                         annotation (Placement(transformation(extent={{72,28},{60,40}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_9_g(
    redeclare package Medium = Medium1,
    diameter=pipeData[6, 2],
    length=pipeData[6, 1],
    thicknessIns=pipeData[6, 3],
    lambdaIns=pipeData[6, 6],
    m_flow_nominal=pipeData[6, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                         annotation (Placement(transformation(extent={{60,2},{72,14}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_12_g(
    redeclare package Medium = Medium1,
    diameter=pipeData[14, 2],
    length=pipeData[14, 1],
    thicknessIns=pipeData[14, 3],
    lambdaIns=pipeData[14, 6],
    m_flow_nominal=pipeData[14, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(extent={{144,2},{132,14}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_12_g(
    redeclare package Medium = Medium1,
    diameter=pipeData[14, 2],
    length=pipeData[14, 1],
    thicknessIns=pipeData[14, 3],
    lambdaIns=pipeData[14, 6],
    m_flow_nominal=pipeData[14, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                          annotation (Placement(transformation(extent={{132,28},{144,40}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_14_h(
    redeclare package Medium = Medium1,
    diameter=pipeData[15, 2],
    length=pipeData[15, 1],
    thicknessIns=pipeData[15, 3],
    lambdaIns=pipeData[15, 6],
    m_flow_nominal=pipeData[15, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                          annotation (Placement(transformation(extent={{72,-32},{60,-20}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_14_h(
    redeclare package Medium = Medium1,
    diameter=pipeData[15, 2],
    length=pipeData[15, 1],
    thicknessIns=pipeData[15, 3],
    lambdaIns=pipeData[15, 6],
    m_flow_nominal=pipeData[15, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(extent={{60,-60},{72,-48}})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_13_h(
    redeclare package Medium = Medium1,
    diameter=pipeData[9, 2],
    length=pipeData[9, 1],
    thicknessIns=pipeData[9, 3],
    lambdaIns=pipeData[9, 6],
    m_flow_nominal=pipeData[9, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
    annotation (Placement(transformation(extent={{144,-60},{132,-48}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_13_h(
    redeclare package Medium = Medium1,
    diameter=pipeData[9, 2],
    length=pipeData[9, 1],
    thicknessIns=pipeData[9, 3],
    lambdaIns=pipeData[9, 6],
    m_flow_nominal=pipeData[9, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
    annotation (Placement(transformation(extent={{132,-32},{144,-20}})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_a_b(
    redeclare package Medium = Medium1,
    diameter=pipeData[3, 2],
    length=pipeData[3, 1],
    thicknessIns=pipeData[3, 3],
    lambdaIns=pipeData[3, 6],
    m_flow_nominal=pipeData[3, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                         annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={-108,142})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_a_b(
    redeclare package Medium = Medium1,
    diameter=pipeData[3, 2],
    length=pipeData[3, 1],
    thicknessIns=pipeData[3, 3],
    lambdaIns=pipeData[3, 6],
    m_flow_nominal=pipeData[3, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                         annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={-92,116})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_b_c(
    redeclare package Medium = Medium1,
    diameter=pipeData[8, 2],
    length=pipeData[8, 1],
    thicknessIns=pipeData[8, 3],
    lambdaIns=pipeData[8, 6],
    m_flow_nominal=pipeData[8, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                         annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={-108,82})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_b_c(
    redeclare package Medium = Medium1,
    diameter=pipeData[8, 2],
    length=pipeData[8, 1],
    thicknessIns=pipeData[8, 3],
    lambdaIns=pipeData[8, 6],
    m_flow_nominal=pipeData[8, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                         annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={-92,56})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_c_d(
    redeclare package Medium = Medium1,
    diameter=pipeData[23, 2],
    length=pipeData[23, 1],
    thicknessIns=pipeData[23, 3],
    lambdaIns=pipeData[23, 6],
    m_flow_nominal=pipeData[23, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                          annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={-108,22})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_c_d(
    redeclare package Medium = Medium1,
    diameter=pipeData[23, 2],
    length=pipeData[23, 1],
    thicknessIns=pipeData[23, 3],
    lambdaIns=pipeData[23, 6],
    m_flow_nominal=pipeData[23, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={-92,-4})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_d_i(
    redeclare package Medium = Medium1,
    diameter=pipeData[16, 2],
    length=pipeData[16, 1],
    thicknessIns=pipeData[16, 3],
    lambdaIns=pipeData[16, 6],
    m_flow_nominal=pipeData[16, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                          annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={-108,-38})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_d_i(
    redeclare package Medium = Medium1,
    diameter=pipeData[16, 2],
    length=pipeData[16, 1],
    thicknessIns=pipeData[16, 3],
    lambdaIns=pipeData[16, 6],
    m_flow_nominal=pipeData[16, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={-92,-64})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_e_f(
    redeclare package Medium = Medium1,
    diameter=pipeData[13, 2],
    length=pipeData[13, 1],
    thicknessIns=pipeData[13, 3],
    lambdaIns=pipeData[13, 6],
    m_flow_nominal=pipeData[13, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                          annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={92,142})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_e_f(
    redeclare package Medium = Medium1,
    diameter=pipeData[13, 2],
    length=pipeData[13, 1],
    thicknessIns=pipeData[13, 3],
    lambdaIns=pipeData[13, 6],
    m_flow_nominal=pipeData[13, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={108,116})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_f_g(
    redeclare package Medium = Medium1,
    diameter=pipeData[18, 2],
    length=pipeData[18, 1],
    thicknessIns=pipeData[18, 3],
    lambdaIns=pipeData[18, 6],
    m_flow_nominal=pipeData[18, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                          annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={92,82})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_f_g(
    redeclare package Medium = Medium1,
    diameter=pipeData[18, 2],
    length=pipeData[18, 1],
    thicknessIns=pipeData[18, 3],
    lambdaIns=pipeData[18, 6],
    m_flow_nominal=pipeData[18, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={108,56})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_g_h(
    redeclare package Medium = Medium1,
    diameter=pipeData[17, 2],
    length=pipeData[17, 1],
    thicknessIns=pipeData[17, 3],
    lambdaIns=pipeData[17, 6],
    m_flow_nominal=pipeData[17, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                          annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={92,22})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_g_h(
    redeclare package Medium = Medium1,
    diameter=pipeData[17, 2],
    length=pipeData[17, 1],
    thicknessIns=pipeData[17, 3],
    lambdaIns=pipeData[17, 6],
    m_flow_nominal=pipeData[17, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
                          annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={108,-4})));

public
  Buildings.Fluid.FixedResistances.Pipe Supply_h_i(
    redeclare package Medium = Medium1,
    diameter=pipeData[7, 2],
    length=pipeData[7, 1],
    thicknessIns=pipeData[7, 3],
    lambdaIns=pipeData[7, 6],
    m_flow_nominal=pipeData[7, 4]/(cp_water*dT),
    T_start=T_supply + 273.15)
                         annotation (Placement(transformation(
        extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={92,-38})));

public
  Buildings.Fluid.FixedResistances.Pipe Return_h_i(
    redeclare package Medium = Medium1,
    diameter=pipeData[7, 2],
    length=pipeData[7, 1],
    thicknessIns=pipeData[7, 3],
    lambdaIns=pipeData[7, 6],
    m_flow_nominal=pipeData[7, 4]/(cp_water*dT),
    T_start=T_supply + 273.15 - 20)
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
  IBPSA.Fluid.Sources.FixedBoundary bou( redeclare package Medium =
        Medium1, nPorts=1)
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
  connect(SimpleDistrict_2.port_a, Supply_2_a.port_b) annotation (Line(
      points={{-160,154},{-140,154}},
      color={217,67,180},
      thickness=0.5));
  connect(Return_2_a.port_a, SimpleDistrict_2.port_b) annotation (Line(
      points={{-140,128},{-150,128},{-150,145.8},{-160,145.8}},
      color={0,127,255},
      thickness=0.5));
  connect(Supply_2_a.port_a, Supply_a_b.port_b) annotation (Line(
      points={{-128,154},{-108,154},{-108,148}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_3_a.port_a, Supply_a_b.port_b) annotation (Line(
      points={{-68,154},{-108,154},{-108,148}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_3_a.port_b, SimpleDistrict_3.port_a) annotation (Line(
      points={{-56,154},{-40,154}},
      color={217,67,180},
      thickness=0.5));
  connect(Return_3_a.port_a, SimpleDistrict_3.port_b) annotation (Line(
      points={{-56,128},{-50,128},{-50,145.8},{-40,145.8}},
      color={0,127,255},
      thickness=0.5));
  connect(SimpleDistrict_5.port_a, Supply_5_b.port_b) annotation (Line(
      points={{-160,94},{-140,94}},
      color={217,67,180},
      thickness=0.5));
  connect(SimpleDistrict_10.port_a, Supply_10_c.port_b) annotation (Line(
      points={{-160,34},{-140,34}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_11_c.port_b, SimpleDistrict_11.port_a) annotation (Line(
      points={{-56,34},{-40,34}},
      color={217,67,180},
      thickness=0.5));
  connect(SimpleDistrict_16.port_a, Supply_16_d.port_b) annotation (Line(
      points={{-160,-26},{-140,-26}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_15_d.port_b, SimpleDistrict_15.port_a) annotation (Line(
      points={{-56,-26},{-40,-26}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_5_b.port_a, Supply_b_c.port_b) annotation (Line(
      points={{-128,94},{-108,94},{-108,88}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_a_b.port_a, Supply_b_c.port_b) annotation (Line(
      points={{-108,136},{-108,88}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_6_b.port_a, Supply_b_c.port_b) annotation (Line(
      points={{-68,94},{-108,94},{-108,88}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_10_c.port_a, Supply_c_d.port_b) annotation (Line(
      points={{-128,34},{-108,34},{-108,28}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_b_c.port_a, Supply_c_d.port_b) annotation (Line(
      points={{-108,76},{-108,28}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_11_c.port_a, Supply_c_d.port_b) annotation (Line(
      points={{-68,34},{-108,34},{-108,28}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_16_d.port_a, Supply_d_i.port_b) annotation (Line(
      points={{-128,-26},{-108,-26},{-108,-32}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_c_d.port_a, Supply_d_i.port_b) annotation (Line(
      points={{-108,16},{-108,-32}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_15_d.port_a, Supply_d_i.port_b) annotation (Line(
      points={{-68,-26},{-108,-26},{-108,-32}},
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
  connect(Supply_6_b.port_b, SimpleDistrict_6.port_a) annotation (Line(
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
  connect(SimpleDistrict_1.port_a, Supply_1_e.port_b) annotation (Line(
      points={{40,154},{60,154}},
      color={217,67,180},
      thickness=0.5));
  connect(SimpleDistrict_8.port_a, Supply_8_f.port_b) annotation (Line(
      points={{40,94},{60,94}},
      color={217,67,180},
      thickness=0.5));
  connect(SimpleDistrict_4.port_a, Supply_4_e.port_b) annotation (Line(
      points={{160,154},{144,154}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_7_f.port_b, SimpleDistrict_7.port_a) annotation (Line(
      points={{144,94},{154,94},{154,92},{160,92}},
      color={217,67,180},
      thickness=0.5));
  connect(SimpleDistrict_9.port_a, Supply_9_g.port_b) annotation (Line(
      points={{40,34},{60,34}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_12_g.port_b, SimpleDistrict_12.port_a) annotation (Line(
      points={{144,34},{160,34}},
      color={217,67,180},
      thickness=0.5));
  connect(SimpleDistrict_14.port_a, Supply_14_h.port_b) annotation (Line(
      points={{40,-26},{60,-26}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_13_h.port_b, SimpleDistrict_13.port_a) annotation (Line(
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
  connect(Supply_1_e.port_a, Supply_e_f.port_b) annotation (Line(
      points={{72,154},{92,154},{92,148}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_4_e.port_a, Supply_e_f.port_b) annotation (Line(
      points={{132,154},{92,154},{92,148}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_8_f.port_a, Supply_f_g.port_b) annotation (Line(
      points={{72,94},{92,94},{92,88}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_e_f.port_a, Supply_f_g.port_b) annotation (Line(
      points={{92,136},{92,88}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_7_f.port_a, Supply_f_g.port_b) annotation (Line(
      points={{132,94},{92,94},{92,88}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_9_g.port_a, Supply_g_h.port_b) annotation (Line(
      points={{72,34},{92,34},{92,28}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_f_g.port_a, Supply_g_h.port_b) annotation (Line(
      points={{92,76},{92,28}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_12_g.port_a, Supply_g_h.port_b) annotation (Line(
      points={{132,34},{92,34},{92,28}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_14_h.port_a, Supply_h_i.port_b) annotation (Line(
      points={{72,-26},{92,-26},{92,-32}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_g_h.port_a, Supply_h_i.port_b) annotation (Line(
      points={{92,16},{92,-8},{92,-32},{92,-32}},
      color={217,67,180},
      thickness=0.5));
  connect(Supply_13_h.port_a, Supply_h_i.port_b) annotation (Line(
      points={{132,-26},{92,-26},{92,-32}},
      color={217,67,180},
      thickness=0.5));
  connect(Return_3_a.port_b, Return_a_b.port_b) annotation (Line(
      points={{-68,128},{-92,128},{-92,122}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_2_a.port_b, Return_a_b.port_b) annotation (Line(
      points={{-128,128},{-92,128},{-92,122}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_6_b.port_b, Return_b_c.port_b) annotation (Line(
      points={{-68,68},{-92,68},{-92,62}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_a_b.port_a, Return_b_c.port_b) annotation (Line(
      points={{-92,110},{-92,62}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_5_b.port_b, Return_b_c.port_b) annotation (Line(
      points={{-128,68},{-92,68},{-92,62}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_11_c.port_b, Return_c_d.port_b) annotation (Line(
      points={{-68,8},{-92,8},{-92,2}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_b_c.port_a, Return_c_d.port_b) annotation (Line(
      points={{-92,50},{-92,2}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_10_c.port_b, Return_c_d.port_b) annotation (Line(
      points={{-128,8},{-92,8},{-92,2}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_15_d.port_b, Return_d_i.port_b) annotation (Line(
      points={{-68,-54},{-92,-54},{-92,-58}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_c_d.port_a, Return_d_i.port_b) annotation (Line(
      points={{-92,-10},{-92,-58}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_16_d.port_b, Return_d_i.port_b) annotation (Line(
      points={{-128,-54},{-92,-54},{-92,-58}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_4_e.port_b, Return_e_f.port_b) annotation (Line(
      points={{132,128},{108,128},{108,122}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_1_e.port_b, Return_e_f.port_b) annotation (Line(
      points={{72,128},{108,128},{108,122}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_7_f.port_b, Return_f_g.port_b) annotation (Line(
      points={{132,70},{122,70},{122,68},{108,68},{108,62}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_e_f.port_a, Return_f_g.port_b) annotation (Line(
      points={{108,110},{108,62}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_8_f.port_b, Return_f_g.port_b) annotation (Line(
      points={{72,68},{108,68},{108,62}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_12_g.port_b, Return_g_h.port_b) annotation (Line(
      points={{132,8},{108,8},{108,2}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_f_g.port_a, Return_g_h.port_b) annotation (Line(
      points={{108,50},{108,26},{108,2},{108,2}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_13_h.port_b, Return_h_i.port_b) annotation (Line(
      points={{132,-54},{108,-54},{108,-58}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_g_h.port_a, Return_h_i.port_b) annotation (Line(
      points={{108,-10},{108,-34},{108,-58},{108,-58}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_14_h.port_b, Return_h_i.port_b) annotation (Line(
      points={{72,-54},{108,-54},{108,-58}},
      color={0,127,255},
      thickness=0.5));
  connect(Return_9_g.port_b, Return_g_h.port_b) annotation (Line(
      points={{72,8},{108,8},{108,2}},
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
  connect(realExpression.y, hea.TSet) annotation (Line(points={{-119,-136},{-82,
          -136},{-82,-112},{-12,-112}}, color={0,0,127}));
  connect(fixedTemperature.port, Supply_a_b.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,142},{-105,142}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_a_b.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,116},{-95,116}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_b_c.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,82},{-105,82}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_b_c.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,56},{-95,56}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_c_d.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,22},{-105,22}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_c_d.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-4},{-95,-4}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_d_i.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-38},{-105,-38}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_d_i.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-64},{-95,-64}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_2_a.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,157},{-134,157}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_3_a.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,157},{-62,157}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_2_a.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,131},{-134,131}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_3_a.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,131},{-62,131}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_5_b.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,97},{-134,97}},        color={191,0,0}));
  connect(fixedTemperature.port, Supply_6_b.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,97},{-62,97}},        color={191,0,0}));
  connect(fixedTemperature.port, Return_5_b.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,71},{-134,71}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_6_b.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,71},{-62,71}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_10_c.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,37},{-134,37}},       color={191,0,0}));
  connect(fixedTemperature.port, Supply_11_c.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,37},{-62,37}},       color={191,0,0}));
  connect(fixedTemperature.port, Return_10_c.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,11},{-134,11}},       color={191,0,0}));
  connect(fixedTemperature.port, Return_11_c.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,11},{-62,11}},       color={191,0,0}));
  connect(fixedTemperature.port, Supply_16_d.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-23},{-134,-23}},       color={191,0,0}));
  connect(fixedTemperature.port, Supply_15_d.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-23},{-62,-23}},       color={191,0,0}));
  connect(fixedTemperature.port, Return_16_d.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-51},{-134,-51}},       color={191,0,0}));
  connect(fixedTemperature.port, Return_15_d.heatPort) annotation (Line(points={{-120,
          190},{-100,190},{-100,-51},{-62,-51}},       color={191,0,0}));
  connect(fixedTemperature.port, Supply_e_f.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,142},{95,142}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_e_f.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,116},{105,116}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_f_g.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,82},{95,82}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_f_g.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,56},{105,56}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_g_h.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,22},{95,22}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_g_h.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,-4},{105,-4}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_h_i.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,-38},{95,-38}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_h_i.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,-64},{105,-64}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_1_e.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,157},{66,157}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_4_e.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,157},{138,157}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_1_e.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,131},{66,131}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_4_e.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,131},{138,131}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_8_f.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,97},{66,97}},        color={191,0,0}));
  connect(fixedTemperature.port, Supply_7_f.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,97},{138,97}},        color={191,0,0}));
  connect(fixedTemperature.port, Return_8_f.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,71},{66,71}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_7_f.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,73},{138,73}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_9_g.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,37},{66,37}},      color={191,0,0}));
  connect(fixedTemperature.port, Supply_12_g.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,37},{138,37}},       color={191,0,0}));
  connect(fixedTemperature.port, Return_9_g.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,11},{66,11}},      color={191,0,0}));
  connect(fixedTemperature.port, Return_12_g.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,11},{138,11}},       color={191,0,0}));
  connect(fixedTemperature.port, Supply_14_h.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,-23},{66,-23}},       color={191,0,0}));
  connect(fixedTemperature.port, Supply_13_h.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,-23},{138,-23}},       color={191,0,0}));
  connect(fixedTemperature.port, Return_14_h.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,-51},{66,-51}},       color={191,0,0}));
  connect(fixedTemperature.port, Return_13_h.heatPort) annotation (Line(points={{-120,
          190},{100,190},{100,-51},{138,-51}},       color={191,0,0}));
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
  connect(bou.ports[1], hea.port_a) annotation (Line(points={{-30,-140},{-18,
          -140},{-18,-120},{-10,-120}}, color={0,127,255}));
  connect(realExpression1.y, HeatLosses)
    annotation (Line(points={{95,-150},{170,-150}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
        coordinateSystem(extent={{-100,-100},{100,100}})));
end SupplyNetwork_DynamicPipe;
