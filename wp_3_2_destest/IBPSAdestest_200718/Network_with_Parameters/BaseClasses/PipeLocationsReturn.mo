within IBPSAdestest_200718.Network_with_Parameters.BaseClasses;
model PipeLocationsReturn
//BeginningEndingNodes={Length [m],Inner Diameter [m],Insulation Thickness [m],Peak Load [kW],Total pressure loss [Pa/m],U-value [W/mK]};
  //extends BaseClasses.PipeParametersReturn;
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=5;

  BaseClasses.PlugFlowPipe_IBPSA pipeef(
    nPorts=2,
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.ef[1],
    dIns=pipeParametersReturn.ef[3],
    kIns=pipeParametersReturn.ef[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={106,136})));
  BaseClasses.PlugFlowPipe_IBPSA pipefg(
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.fg[1],
    dIns=pipeParametersReturn.fg[3],
    kIns=pipeParametersReturn.fg[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={106,76})));
  BaseClasses.PlugFlowPipe_IBPSA pipegh(
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.gh[1],
    dIns=pipeParametersReturn.gh[3],
    kIns=pipeParametersReturn.gh[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={106,16})));
  BaseClasses.PlugFlowPipe_IBPSA pipehi(
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.hi[1],
    dIns=pipeParametersReturn.hi[3],
    kIns=pipeParametersReturn.hi[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={106,-44})));
  BaseClasses.PlugFlowPipe_IBPSA pipedi(
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.di[1],
    dIns=pipeParametersReturn.di[3],
    kIns=pipeParametersReturn.di[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={-94,-44})));
  BaseClasses.PlugFlowPipe_IBPSA pipecd(
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.cd[1],
    dIns=pipeParametersReturn.cd[3],
    kIns=pipeParametersReturn.cd[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={-94,16})));
  BaseClasses.PlugFlowPipe_IBPSA pipebc(
    nPorts=3,
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.bc[1],
    dIns=pipeParametersReturn.bc[3],
    kIns=pipeParametersReturn.bc[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={-94,76})));
  BaseClasses.PlugFlowPipe_IBPSA pipeab(
    nPorts=2,
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.ab[1],
    dIns=pipeParametersReturn.ab[3],
    kIns=pipeParametersReturn.ab[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={-94,136})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD16d(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD16d[1],
    dIns=pipeParametersReturn.SD16d[3],
    kIns=pipeParametersReturn.SD16d[6]) annotation (Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=0,
        origin={-140,-34})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD1e(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD1e[1],
    dIns=pipeParametersReturn.SD1e[3],
    kIns=pipeParametersReturn.SD1e[6]) annotation (Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=0,
        origin={60,146})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD8f(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD8f[1],
    dIns=pipeParametersReturn.SD8f[3],
    kIns=pipeParametersReturn.SD8f[6]) annotation (Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=0,
        origin={60,86})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD9g(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD9g[1],
    dIns=pipeParametersReturn.SD9g[3],
    kIns=pipeParametersReturn.SD9g[6]) annotation (Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=0,
        origin={60,26})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD14h(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD14h[1],
    dIns=pipeParametersReturn.SD14h[3],
    kIns=pipeParametersReturn.SD14h[6]) annotation (Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=0,
        origin={60,-34})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD4e(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD4e[1],
    dIns=pipeParametersReturn.SD4e[3],
    kIns=pipeParametersReturn.SD4e[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=0,
        origin={140,146})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD7f(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD7f[1],
    dIns=pipeParametersReturn.SD7f[3],
    kIns=pipeParametersReturn.SD7f[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=0,
        origin={140,86})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD12g(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD12g[1],
    dIns=pipeParametersReturn.SD12g[3],
    kIns=pipeParametersReturn.SD12g[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=0,
        origin={140,26})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD13h(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD13h[1],
    dIns=pipeParametersReturn.SD13h[3],
    kIns=pipeParametersReturn.SD13h[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=0,
        origin={140,-34})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD10c(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD10c[1],
    dIns=pipeParametersReturn.SD10c[3],
    kIns=pipeParametersReturn.SD10c[6]) annotation (Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=0,
        origin={-140,26})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD5b(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD5b[1],
    dIns=pipeParametersReturn.SD5b[3],
    kIns=pipeParametersReturn.SD5b[6]) annotation (Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=0,
        origin={-140,86})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD2a(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD2a[1],
    dIns=pipeParametersReturn.SD2a[3],
    kIns=pipeParametersReturn.SD2a[6]) annotation (Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=0,
        origin={-140,146})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD3a(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD3a[1],
    dIns=pipeParametersReturn.SD3a[3],
    kIns=pipeParametersReturn.SD3a[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=0,
        origin={-60,146})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD6b(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD6b[1],
    dIns=pipeParametersReturn.SD6b[3],
    kIns=pipeParametersReturn.SD6b[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=0,
        origin={-60,86})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD11c(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD11c[1],
    dIns=pipeParametersReturn.SD11c[3],
    kIns=pipeParametersReturn.SD11c[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=0,
        origin={-60,26})));
  BaseClasses.PlugFlowPipe_IBPSA pipeSD15d(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = IBPSA.Media.Water,
    length=pipeParametersReturn.SD15d[1],
    dIns=pipeParametersReturn.SD15d[3],
    kIns=pipeParametersReturn.SD15d[6]) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=0,
        origin={-60,-34})));
  PipeParametersReturn pipeParametersReturn
    annotation (Placement(transformation(extent={{-180,-180},{-160,-160}})));
equation
  connect(pipefg.port_a, pipegh.ports_b[1]) annotation (Line(points={{106,66},{
          106,26},{103.333,26}},
                             color={0,127,255}));
  connect(pipeef.port_a, pipefg.ports_b[1]) annotation (Line(points={{106,126},
          {106,86},{103.333,86}},color={0,127,255}));
  connect(pipegh.port_a, pipehi.ports_b[1]) annotation (Line(points={{106,6},{
          106,-34},{103.333,-34}},
                               color={0,127,255}));
  connect(pipeab.port_a, pipebc.ports_b[1]) annotation (Line(points={{-94,126},
          {-94,86},{-96.6667,86}},color={0,127,255}));
  connect(pipebc.port_a, pipecd.ports_b[1]) annotation (Line(points={{-94,66},{
          -94,26},{-96.6667,26}},
                              color={0,127,255}));
  connect(pipecd.port_a, pipedi.ports_b[1]) annotation (Line(points={{-94,6},{
          -94,-34},{-96.6667,-34}},
                                color={0,127,255}));
  connect(pipeab.ports_b[1], pipeSD3a.port_a)
    annotation (Line(points={{-96,146},{-70,146}}, color={0,127,255}));
  connect(pipeSD6b.port_a, pipebc.ports_b[2])
    annotation (Line(points={{-70,86},{-94,86}},      color={0,127,255}));
  connect(pipeSD11c.port_a, pipecd.ports_b[2])
    annotation (Line(points={{-70,26},{-94,26}},      color={0,127,255}));
  connect(pipeSD15d.port_a, pipedi.ports_b[2])
    annotation (Line(points={{-70,-34},{-94,-34}},      color={0,127,255}));
  connect(pipeSD4e.port_a, pipeef.ports_b[1])
    annotation (Line(points={{130,146},{104,146}}, color={0,127,255}));
  connect(pipeSD7f.port_a, pipefg.ports_b[2]) annotation (Line(points={{130,86},
          {106,86}},                       color={0,127,255}));
  connect(pipeSD12g.port_a, pipegh.ports_b[2])
    annotation (Line(points={{130,26},{106,26}},     color={0,127,255}));
  connect(pipeSD13h.port_a, pipehi.ports_b[2])
    annotation (Line(points={{130,-34},{106,-34}},     color={0,127,255}));
  connect(pipeSD16d.port_a, pipedi.ports_b[3])
    annotation (Line(points={{-130,-34},{-91.3333,-34}}, color={0,127,255}));
  connect(pipeSD10c.port_a, pipecd.ports_b[3])
    annotation (Line(points={{-130,26},{-91.3333,26}}, color={0,127,255}));
  connect(pipeSD5b.port_a, pipebc.ports_b[3])
    annotation (Line(points={{-130,86},{-91.3333,86}}, color={0,127,255}));
  connect(pipeSD2a.port_a, pipeab.ports_b[2])
    annotation (Line(points={{-130,146},{-92,146}}, color={0,127,255}));
  connect(pipeSD14h.port_a, pipehi.ports_b[3])
    annotation (Line(points={{70,-34},{108.667,-34}}, color={0,127,255}));
  connect(pipeSD9g.port_a, pipegh.ports_b[3])
    annotation (Line(points={{70,26},{108.667,26}}, color={0,127,255}));
  connect(pipeSD8f.port_a, pipefg.ports_b[3])
    annotation (Line(points={{70,86},{108.667,86}}, color={0,127,255}));
  connect(pipeSD1e.port_a, pipeef.ports_b[2])
    annotation (Line(points={{70,146},{108,146}}, color={0,127,255}));
  annotation (Diagram(coordinateSystem(extent={{-180,-180},{180,180}})), Icon(
        coordinateSystem(extent={{-100,-100},{100,100}})));
end PipeLocationsReturn;
