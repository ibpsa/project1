within IBPSAdestest_200718.Network_with_Parameters.BaseClasses;
model PipeLocationsSupply
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=5;
  BaseClasses.PlugFlowPipe_IBPSA pipeba(
    nPorts=2,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-106,144})));
  BaseClasses.PlugFlowPipe_IBPSA pipecb(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-106,84})));
  BaseClasses.PlugFlowPipe_IBPSA pipedc(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-106,24})));
  BaseClasses.PlugFlowPipe_IBPSA pipeid(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-106,-36})));
  BaseClasses.PlugFlowPipe_IBPSA pipefe(
    nPorts=2,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={94,144})));
  BaseClasses.PlugFlowPipe_IBPSA pipegf(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={94,84})));
  BaseClasses.PlugFlowPipe_IBPSA pipehg(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={94,24})));
  BaseClasses.PlugFlowPipe_IBPSA pipeih(
    nPorts=3,
    length=20,
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={94,-36})));
  BaseClasses.PlugFlowPipe_IBPSA pipeaSD2(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water)
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={-140,154})));
  BaseClasses.PlugFlowPipe_IBPSA pipebSD5(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water)
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={-140,94})));
  BaseClasses.PlugFlowPipe_IBPSA pipecSD10(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water)
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={-140,34})));
  BaseClasses.PlugFlowPipe_IBPSA pipedSD16(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water)
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={-140,-26})));
  BaseClasses.PlugFlowPipe_IBPSA pipeeSD1(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water)
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={60,154})));
  BaseClasses.PlugFlowPipe_IBPSA pipefSD8(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water)
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={60,94})));
  BaseClasses.PlugFlowPipe_IBPSA pipegSD9(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water)
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={60,34})));
  BaseClasses.PlugFlowPipe_IBPSA pipehSD14(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water)
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={60,-26})));
  BaseClasses.PlugFlowPipe_IBPSA pipedSD15(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-60,-26})));
  BaseClasses.PlugFlowPipe_IBPSA pipecSD11(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-60,34})));
  BaseClasses.PlugFlowPipe_IBPSA pipebSD6(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-60,94})));
  BaseClasses.PlugFlowPipe_IBPSA pipeaSD3(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-60,154})));
  BaseClasses.PlugFlowPipe_IBPSA pipeeSD4(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={140,154})));
  BaseClasses.PlugFlowPipe_IBPSA pipefSD7(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={140,94})));
  BaseClasses.PlugFlowPipe_IBPSA pipegSD12(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={140,34})));
  BaseClasses.PlugFlowPipe_IBPSA pipehSD13(
    m_flow_nominal=m_flow_nominal,
    dIns=0.1,
    kIns=0.4,
    length=20,
    redeclare package Medium = IBPSA.Media.Water) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={140,-26})));
equation
  connect(pipeba.port_a, pipecb.ports_b[1]) annotation (Line(points={{-106,134},
          {-106,94},{-103.333,94}}, color={0,127,255}));
  connect(pipecb.port_a, pipedc.ports_b[1]) annotation (Line(points={{-106,74},
          {-106,34},{-103.333,34}},color={0,127,255}));
  connect(pipefe.port_a, pipegf.ports_b[1]) annotation (Line(points={{94,134},{
          94,94},{96.6667,94}},
                             color={0,127,255}));
  connect(pipegf.port_a, pipehg.ports_b[1]) annotation (Line(points={{94,74},{
          94,34},{96.6667,34}},
                             color={0,127,255}));
  connect(pipehg.port_a, pipeih.ports_b[1]) annotation (Line(points={{94,14},{
          94,-26},{96.6667,-26}},
                               color={0,127,255}));
  connect(pipeba.ports_b[1], pipeaSD3.port_a)
    annotation (Line(points={{-104,154},{-70,154}}, color={0,127,255}));
  connect(pipecb.ports_b[2], pipebSD6.port_a)
    annotation (Line(points={{-106,94},{-70,94}},     color={0,127,255}));
  connect(pipedc.ports_b[2], pipecSD11.port_a)
    annotation (Line(points={{-106,34},{-70,34}},     color={0,127,255}));
  connect(pipeid.ports_b[2], pipedSD15.port_a)
    annotation (Line(points={{-106,-26},{-70,-26}}, color={0,127,255}));
  connect(pipedc.port_a, pipeid.ports_b[1]) annotation (Line(points={{-106,14},
          {-106,-26},{-103.333,-26}},color={0,127,255}));
  connect(pipefe.ports_b[1], pipeeSD4.port_a)
    annotation (Line(points={{96,154},{130,154}}, color={0,127,255}));
  connect(pipegf.ports_b[2], pipefSD7.port_a)
    annotation (Line(points={{94,94},{130,94}},      color={0,127,255}));
  connect(pipehg.ports_b[2], pipegSD12.port_a)
    annotation (Line(points={{94,34},{130,34}},      color={0,127,255}));
  connect(pipeih.ports_b[2], pipehSD13.port_a)
    annotation (Line(points={{94,-26},{130,-26}},      color={0,127,255}));
  connect(pipeaSD2.port_a, pipeba.ports_b[2])
    annotation (Line(points={{-130,154},{-108,154}}, color={0,127,255}));
  connect(pipebSD5.port_a, pipecb.ports_b[3])
    annotation (Line(points={{-130,94},{-108.667,94}}, color={0,127,255}));
  connect(pipecSD10.port_a, pipedc.ports_b[3])
    annotation (Line(points={{-130,34},{-108.667,34}}, color={0,127,255}));
  connect(pipedSD16.port_a, pipeid.ports_b[3])
    annotation (Line(points={{-130,-26},{-108.667,-26}},
                                                     color={0,127,255}));
  connect(pipehSD14.port_a, pipeih.ports_b[3])
    annotation (Line(points={{70,-26},{91.3333,-26}}, color={0,127,255}));
  connect(pipegSD9.port_a, pipehg.ports_b[3])
    annotation (Line(points={{70,34},{91.3333,34}}, color={0,127,255}));
  connect(pipefSD8.port_a, pipegf.ports_b[3])
    annotation (Line(points={{70,94},{91.3333,94}}, color={0,127,255}));
  connect(pipeeSD1.port_a, pipefe.ports_b[2])
    annotation (Line(points={{70,154},{92,154}}, color={0,127,255}));
  annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
        coordinateSystem(extent={{-100,-100},{100,100}})));
end PipeLocationsSupply;
