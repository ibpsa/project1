within IBPSAdestest.Consumer;
package HeatingSystems
  "Folder containing building heating systems with a connection to district heating"
  model Substation_no_DHW
    "Model of a substation with a heating curve and no DHW system"
    import Buildings;
    extends IBPSAdestest.Consumer.HeatingSystems.BaseClasses.Primary_Side(
      nEmbPorts=0,
      nConvPorts = nZones,
      nRadPorts = nZones,
      pump_prim_SH(allowFlowReversal=false),
      Tsup(allowFlowReversal=false),
      Tret(allowFlowReversal=false));

    parameter Real fraRad = 0.35 "Fraction of radiator heat transferred by radiation";

    IDEAS.Fluid.Sources.FixedBoundary bou(
      redeclare package Medium = Medium,
      T=Tret_sec,
      use_T=false,
      nPorts=1)
      annotation (Placement(transformation(extent={{-6,-6},{6,6}},
          rotation=180,
          origin={-54,-74})));
    IDEAS.Fluid.Movers.FlowControlled_m_flow pump_sec_SH[nZones](
      redeclare package Medium = Medium,
      m_flow_nominal=mf_sec,
      inputType=IDEAS.Fluid.Types.InputType.Continuous,
      addPowerToMedium=false,
      nominalValuesDefineDefaultPressureCurve=true,
      T_start=Tret_sec,
      massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
      riseTime=30,
      each energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
      each tau=60,
      each allowFlowReversal=false)
                   annotation (Placement(transformation(
          extent={{-10,10},{10,-10}},
          rotation=180,
          origin={-120,-52})));

    IBPSA.Fluid.HeatExchangers.Radiators.RadiatorEN442_2 rad[nZones](
      redeclare package Medium = Medium,
      fraRad=fraRad,
      n=1.3,
      T_a_nominal=Tsup_sec,
      T_b_nominal=Tret_sec,
      T_start=Tret_sec,
      Q_flow_nominal=QNom,
      each allowFlowReversal=false,
      nEle=3,
      energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial)
      annotation (Placement(transformation(extent={{-146,-30},{-126,-10}})));
    IDEAS.Fluid.Sensors.TemperatureTwoPort Tsup_sec_SH(redeclare package Medium
        =        Medium,
      allowFlowReversal=false,
      tau=0,
      m_flow_nominal=sum(mf_sec))
                         annotation (Placement(transformation(
          extent={{-10,10},{10,-10}},
          rotation=180,
          origin={-94,-52})));
    IDEAS.Fluid.Sensors.TemperatureTwoPort Tret_sec_SH(redeclare package Medium
        =        Medium,
      allowFlowReversal=false,
      tau=0,
      m_flow_nominal=sum(mf_sec))
                         annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=0,
          origin={-80,-20})));

    GenkNET.Buildings.HeatingSystems.Controls.OnOff onOff_BP annotation (
        Placement(transformation(
          extent={{7,-7},{-7,7}},
          rotation=180,
          origin={79,-89})));
    Modelica.Blocks.Sources.RealExpression BP_mflow(y=mf_bypass) annotation (
        Placement(transformation(
          extent={{12,-11},{-12,11}},
          rotation=180,
          origin={52,-89})));
    Buildings.Controls.OBC.CDL.Continuous.LessEqualThreshold lesEquThr_BP(threshold=
         Tsup_prim - 10) annotation (Placement(transformation(
          extent={{-7,-7},{7,7}},
          rotation=270,
          origin={79,-71})));
    Modelica.Blocks.Sources.RealExpression outside_temp(y=sim.Te)
      annotation (Placement(transformation(extent={{-78,26},{-56,50}})));
    GenkNET.Buildings.HeatingSystems.Controls.heating_curve heating_curve(
      Tout_min=-10 + 273.15,
      Tsup_max=Tsup_prim - 3,
      Tsup_nom=Tsup_sec,
      Tout_nom=-7.65 + 273.15,
      Tsup_min=35 + 273.15,
      Tout_max=15 + 273.15)
      annotation (Placement(transformation(extent={{-44,28},{-24,48}})));
    IDEAS.Controls.Continuous.LimPID conPID_prim_SH_sec[nZones](
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      yMin=0,
      yMax=mf_sec,
      initType=Modelica.Blocks.Types.InitPID.InitialState,
      k=0.005,
      Ti=180) annotation (Placement(transformation(extent={{-152,52},{-132,32}})));
    IDEAS.Controls.Continuous.LimPID conPID_prim_SH_sup(
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      yMax=mf_prim,
      yMin=0,
      initType=Modelica.Blocks.Types.InitPID.InitialState,
      Ti=180,
      k=0.005)
              annotation (Placement(transformation(extent={{-8,48},{12,28}})));
    IDEAS.Utilities.Math.SmoothMin smoothMin(deltaX=0.001) annotation (
        Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=270,
          origin={20,12})));
    Modelica.Blocks.Math.Gain conv_to_mf_DHW(k=10)
      annotation (Placement(transformation(
          extent={{-6,-6},{6,6}},
          rotation=-90,
          origin={26,62})));
    Modelica.Blocks.Math.Sum sum1(nin=nZones)
      annotation (Placement(transformation(extent={{-110,70},{-90,90}})));
  equation
    connect(heatExchanger_SH.port_a2, Tret_sec_SH.port_b) annotation (Line(
        points={{-62,-26},{-62,-20},{-70,-20}},
        color={0,127,255},
        thickness=1));

    connect(lesEquThr_BP.y, onOff_BP.u) annotation (Line(
        points={{79,-78.7},{79,-80.6}},
        color={255,0,255},
        pattern=LinePattern.Dash));
    connect(Tsup.T, lesEquThr_BP.u) annotation (Line(
        points={{111.2,-73},{106,-73},{106,-62.6},{79,-62.6}},
        color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));

    connect(outside_temp.y, heating_curve.TOut)
      annotation (Line(points={{-54.9,38},{-48,38},{-48,38},{-46,38},{-46,38},{-44,
            38}},                                       color={0,0,127}));
    connect(BP_mflow.y, onOff_BP.u1) annotation (Line(
        points={{65.2,-89},{68.6,-89},{68.6,-89},{70.6,-89}},
        color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));
    connect(Tsup_sec_SH.port_a, heatExchanger_SH.port_b2) annotation (Line(
        points={{-84,-52},{-62,-52},{-62,-46}},
        color={0,127,255},
        thickness=1));
    connect(bou.ports[1], heatExchanger_SH.port_b2) annotation (Line(
        points={{-60,-74},{-62,-74},{-62,-46}},
        color={0,127,255},
        thickness=1));

    connect(rad.port_a, pump_sec_SH.port_b) annotation (Line(points={{-146,-20},{-154,
            -20},{-154,-52},{-130,-52}}, color={0,127,255},
        thickness=1));

    connect(rad.heatPortCon, heatPortCon) annotation (Line(points={{-138,-12.8},{-138,
            4},{-180,4},{-180,20},{-200,20}}, color={191,0,0}));
    connect(rad.heatPortRad, heatPortRad) annotation (Line(points={{-134,-12.8},{-134,
            -8},{-180,-8},{-180,-20},{-200,-20}}, color={191,0,0}));

    for i in 1:nZones loop
      connect(pump_sec_SH[i].port_a, Tsup_sec_SH.port_b)
      annotation (Line(points={{-110,-52},{-104,-52}}, color={0,127,255},
          thickness=1));
      connect(rad[i].port_b, Tret_sec_SH.port_a)
      annotation (Line(points={{-126,-20},{-90,-20}}, color={0,127,255},
          thickness=1));
    end for;
    connect(onOff_BP.y, pump_BP.m_flow_in) annotation (Line(points={{86.7,-89},{140,
            -89},{140,-64}}, color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));
    connect(conPID_prim_SH_sec.u_s, TSet) annotation (Line(
        points={{-154,42},{-164,42},{-164,-104},{20,-104}},
        color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));
    connect(conPID_prim_SH_sec.u_m, TSensor) annotation (Line(
        points={{-142,54},{-142,70},{-180,70},{-180,-60},{-204,-60}},
        color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));
    connect(heating_curve.TSup, conPID_prim_SH_sup.u_s)
      annotation (Line(points={{-24,38},{-10,38}}, color={0,0,127}));
    connect(conPID_prim_SH_sup.u_m, Tsup_sec_SH.T) annotation (Line(
        points={{2,50},{2,64},{-94,64},{-94,-41}},
        color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));
    connect(conPID_prim_SH_sec.y, pump_sec_SH.m_flow_in) annotation (Line(
        points={{-131,42},{-120,42},{-120,-40}},
        color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));

    connect(smoothMin.u2, conPID_prim_SH_sup.y) annotation (Line(points={{14,24},
            {14,32},{14,38},{13,38}}, color={0,0,127}));
    connect(conv_to_mf_DHW.y, smoothMin.u1)
      annotation (Line(points={{26,55.4},{26,24}}, color={0,0,127}));
    connect(sum1.u, conPID_prim_SH_sec.y) annotation (Line(points={{-112,80},{
            -131,80},{-131,42}}, color={0,0,127}));
    connect(sum1.y, conv_to_mf_DHW.u)
      annotation (Line(points={{-89,80},{26,80},{26,69.2}}, color={0,0,127}));
    connect(smoothMin.y, pump_prim_SH.m_flow_in)
      annotation (Line(points={{20,1},{20,-8}}, color={0,0,127}));
      annotation (Line(points={{-39.3,-24},{-39.3,-24}}, color={0,0,127}),
                Icon(coordinateSystem(preserveAspectRatio=false, extent={{-200,-100},
              {200,100}})),                                        Diagram(
          coordinateSystem(preserveAspectRatio=false, extent={{-200,-100},{200,100}}),
                      graphics={
          Rectangle(
            extent={{-88,56},{28,20}},
            lineColor={0,0,127},
            fillColor={215,215,215},
            fillPattern=FillPattern.Solid),
          Rectangle(
            extent={{-174,64},{-114,20}},
            lineColor={0,0,127},
            fillColor={215,215,215},
            fillPattern=FillPattern.Solid),
          Rectangle(
            extent={{36,-58},{92,-100}},
            lineColor={28,108,200},
            fillColor={215,215,215},
            fillPattern=FillPattern.Solid)}));
  end Substation_no_DHW;

  model Substation_with_DHW
    "Model of a substation with a heating curve and a direct DHW system"
    import Buildings;
    extends IBPSAdestest.Consumer.HeatingSystems.BaseClasses.Direct_DHW(
      nEmbPorts=0,
      nConvPorts = nZones,
      nRadPorts = nZones);

    parameter Real fraRad = 0.35 "Fraction of radiator heat transferred by radiation";

    IDEAS.Fluid.Sources.FixedBoundary bou(
      redeclare package Medium = Medium,
      T=Tret_sec,
      use_T=false,
      nPorts=1)
      annotation (Placement(transformation(extent={{-6,-6},{6,6}},
          rotation=180,
          origin={-54,-74})));
    IDEAS.Fluid.Movers.FlowControlled_m_flow pump_sec_SH[nZones](
      redeclare package Medium = Medium,
      m_flow_nominal=mf_sec,
      inputType=IDEAS.Fluid.Types.InputType.Continuous,
      addPowerToMedium=false,
      nominalValuesDefineDefaultPressureCurve=true,
      T_start=Tret_sec,
      energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
      massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
      riseTime=30) annotation (Placement(transformation(
          extent={{-10,10},{10,-10}},
          rotation=180,
          origin={-120,-52})));

    IBPSA.Fluid.HeatExchangers.Radiators.RadiatorEN442_2 rad[nZones](
      redeclare package Medium = Medium,
      fraRad=fraRad,
      n=1.3,
      T_a_nominal=Tsup_sec,
      T_b_nominal=Tret_sec,
      T_start=Tret_sec,
      VWat=5.8E-8*abs(rad.Q_flow_nominal),
      mDry=0.000263*abs(rad.Q_flow_nominal),
      Q_flow_nominal=QNom)
      annotation (Placement(transformation(extent={{-146,-30},{-126,-10}})));
    Modelica.Fluid.Sensors.TemperatureTwoPort Tsup_sec_SH(redeclare package
        Medium = Medium) annotation (Placement(transformation(
          extent={{-10,10},{10,-10}},
          rotation=180,
          origin={-94,-52})));
    Modelica.Fluid.Sensors.TemperatureTwoPort Tret_sec_SH(redeclare package
        Medium = Medium) annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=0,
          origin={-80,-20})));

    GenkNET.Buildings.HeatingSystems.Controls.OnOff onOff_BP annotation (
        Placement(transformation(
          extent={{7,-7},{-7,7}},
          rotation=180,
          origin={79,-89})));
    Modelica.Blocks.Sources.RealExpression BP_mflow(y=mf_bypass) annotation (
        Placement(transformation(
          extent={{12,-11},{-12,11}},
          rotation=180,
          origin={52,-89})));
    Buildings.Controls.OBC.CDL.Continuous.LessEqualThreshold lesEquThr_BP(threshold=
         Tsup_prim - 10) annotation (Placement(transformation(
          extent={{-7,-7},{7,7}},
          rotation=270,
          origin={79,-71})));
    Modelica.Blocks.Sources.RealExpression outside_temp(y=sim.Te)
      annotation (Placement(transformation(extent={{-92,54},{-70,78}})));
    GenkNET.Buildings.HeatingSystems.Controls.heating_curve heating_curve(
      Tout_min=-10 + 273.15,
      Tsup_max=Tsup_prim - 3,
      Tsup_nom=Tsup_sec,
      Tout_nom=-7.65 + 273.15,
      Tsup_min=35 + 273.15,
      Tout_max=15 + 273.15)
      annotation (Placement(transformation(extent={{-64,56},{-44,76}})));
    IDEAS.Controls.Continuous.LimPID conPID_prim_SH_sec[nZones](
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      yMin=0,
      k=0.05,
      Ti=30,
      yMax=mf_sec,
      initType=Modelica.Blocks.Types.InitPID.InitialState)
              annotation (Placement(transformation(extent={{-152,52},{-132,32}})));
    IDEAS.Controls.Continuous.LimPID conPID_prim_SH_sup(
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      yMax=mf_prim,
      yMin=0,
      k=0.005,
      Ti=180,
      initType=Modelica.Blocks.Types.InitPID.InitialState)
              annotation (Placement(transformation(extent={{-36,76},{-16,56}})));
    Modelica.Blocks.Sources.RealExpression mf_DHW_factor(y=mDHW60C*(DHW_warm -
          DHW_cold)/(60 - 10))
      annotation (Placement(transformation(extent={{24,76},{48,98}})));
    IDEAS.Controls.Continuous.LimPID conPID_prim_DHW(
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      yMin=0,
      k=0.005,
      Ti=180,
      yMax=mf_DHW_prim,
      initType=Modelica.Blocks.Types.InitPID.InitialState)
      annotation (Placement(transformation(extent={{40,24},{60,4}})));
    Modelica.Blocks.Sources.RealExpression DHW_warm_temp(y=DHW_warm)
      annotation (Placement(transformation(extent={{6,2},{32,26}})));
  equation
    connect(heatExchanger_SH.port_a2, Tret_sec_SH.port_b) annotation (Line(
        points={{-62,-26},{-62,-20},{-70,-20}},
        color={0,127,255},
        thickness=1));

    connect(lesEquThr_BP.y, onOff_BP.u) annotation (Line(
        points={{79,-78.7},{79,-80.6}},
        color={255,0,255},
        pattern=LinePattern.Dash));
    connect(Tsup.T, lesEquThr_BP.u) annotation (Line(
        points={{111.2,-73},{106,-73},{106,-62.6},{79,-62.6}},
        color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));

    connect(outside_temp.y, heating_curve.TOut)
      annotation (Line(points={{-68.9,66},{-64,66}},    color={0,0,127}));
    connect(BP_mflow.y, onOff_BP.u1) annotation (Line(
        points={{65.2,-89},{68.6,-89},{68.6,-89},{70.6,-89}},
        color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));
    connect(Tsup_sec_SH.port_a, heatExchanger_SH.port_b2) annotation (Line(
        points={{-84,-52},{-62,-52},{-62,-46}},
        color={0,127,255},
        thickness=1));
    connect(bou.ports[1], heatExchanger_SH.port_b2) annotation (Line(
        points={{-60,-74},{-62,-74},{-62,-46}},
        color={0,127,255},
        thickness=1));

    connect(rad.port_a, pump_sec_SH.port_b) annotation (Line(points={{-146,-20},{-154,
            -20},{-154,-52},{-130,-52}}, color={0,127,255},
        thickness=1));

    connect(rad.heatPortCon, heatPortCon) annotation (Line(points={{-138,-12.8},{-138,
            4},{-180,4},{-180,20},{-200,20}}, color={191,0,0}));
    connect(rad.heatPortRad, heatPortRad) annotation (Line(points={{-134,-12.8},{-134,
            -8},{-180,-8},{-180,-20},{-200,-20}}, color={191,0,0}));

    for i in 1:nZones loop
      connect(pump_sec_SH[i].port_a, Tsup_sec_SH.port_b)
      annotation (Line(points={{-110,-52},{-104,-52}}, color={0,127,255},
          thickness=1));
      connect(rad[i].port_b, Tret_sec_SH.port_a)
      annotation (Line(points={{-126,-20},{-90,-20}}, color={0,127,255},
          thickness=1));
    end for;
    connect(onOff_BP.y, pump_BP.m_flow_in) annotation (Line(points={{86.7,-89},{140,
            -89},{140,-64}}, color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));
    connect(conPID_prim_SH_sec.u_s, TSet) annotation (Line(
        points={{-154,42},{-164,42},{-164,-104},{20,-104}},
        color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));
    connect(conPID_prim_SH_sec.u_m, TSensor) annotation (Line(
        points={{-142,54},{-142,68},{-188,68},{-188,-60},{-204,-60}},
        color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));
    connect(heating_curve.TSup, conPID_prim_SH_sup.u_s)
      annotation (Line(points={{-44,66},{-38,66}}, color={0,0,127}));
    connect(conPID_prim_SH_sup.y, pump_prim_SH.m_flow_in) annotation (Line(
        points={{-15,66},{-10,66},{-10,-6},{20,-6},{20,-8}},
        color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));
    connect(conPID_prim_SH_sup.u_m, Tsup_sec_SH.T) annotation (Line(
        points={{-26,78},{-26,92},{-94,92},{-94,-41}},
        color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));
    connect(conPID_prim_SH_sec.y, pump_sec_SH.m_flow_in) annotation (Line(
        points={{-131,42},{-120,42},{-120,-40}},
        color={0,0,127},
        pattern=LinePattern.Dot,
        thickness=0.5));

    connect(mf_DHW_factor.y, pump_sec_DHW.m_flow_in)
      annotation (Line(points={{49.2,87},{66,87},{66,74}}, color={0,0,127}));
    connect(conPID_prim_DHW.y, pump_prim_DHW.m_flow_in)
      annotation (Line(points={{61,14},{70,14}}, color={0,0,127}));
    connect(Tsup_sec_DHW.T, conPID_prim_DHW.u_m)
      annotation (Line(points={{144,73},{50,73},{50,26}}, color={0,0,127}));
    connect(DHW_warm_temp.y, conPID_prim_DHW.u_s)
      annotation (Line(points={{33.3,14},{38,14}}, color={0,0,127}));
      annotation (Line(points={{-39.3,-24},{-39.3,-24}}, color={0,0,127}),
                Icon(coordinateSystem(preserveAspectRatio=false, extent={{-200,-100},
              {200,100}})),                                        Diagram(
          coordinateSystem(preserveAspectRatio=false, extent={{-200,-100},{200,100}}),
                      graphics={
          Rectangle(
            extent={{-100,84},{-4,48}},
            lineColor={0,0,127},
            fillColor={215,215,215},
            fillPattern=FillPattern.Solid),
          Rectangle(
            extent={{-174,64},{-114,20}},
            lineColor={0,0,127},
            fillColor={215,215,215},
            fillPattern=FillPattern.Solid),
          Rectangle(
            extent={{36,-58},{92,-100}},
            lineColor={28,108,200},
            fillColor={215,215,215},
            fillPattern=FillPattern.Solid),
          Rectangle(
            extent={{2,30},{66,-4}},
            lineColor={0,0,127},
            fillColor={215,215,215},
            fillPattern=FillPattern.Solid)}));
  end Substation_with_DHW;

  package BaseClasses
    partial model Primary_Side
      "Model of the primary side of a district heating substation"
      import Buildings;
      extends IDEAS.Templates.Interfaces.BaseClasses.HeatingSystem(
        P=fill(QHeaSys,nLoads_min),
        Q=zeros(nLoads_min),
        isDH=true,
        nTemSen = nZones,
        nLoads=0);

      parameter Modelica.SIunits.Power[nZones] QNom(each min=0) = fill(5000,nZones)
        "Nominal power, power that is injected when the heating system is on";
      parameter Modelica.SIunits.Temperature Tsup_prim
                "Nominal primary supply temperature";
      parameter Modelica.SIunits.Temperature Tret_prim
                "Nominal primary return temperature";
      parameter Modelica.SIunits.MassFlowRate mf_prim=
                sum(QNom)/cp_nominal/(Tsup_prim - Tret_prim)
                "Primary mass flow rate";

      parameter Modelica.SIunits.MassFlowRate mf_bypass = 0.01*mf_prim
                "Bypass mass flow rate";

      parameter Modelica.SIunits.Temperature Tsup_sec
                "Nominal secondary supply temperature";
      parameter Modelica.SIunits.Temperature Tret_sec
                "Nominal secondary return temperature";
      parameter Modelica.SIunits.MassFlowRate mf_sec[nZones]=
                QNom/cp_nominal/(Tsup_sec - Tret_sec) "Secondary mass flow rate";

      parameter Boolean add_bypass = true "Add a bypass valve if true";


    protected
      final parameter Medium.ThermodynamicState sta_default = Medium.setState_pTX(
         T=Medium.T_default,
         p=Medium.p_default,
         X=Medium.X_default[1:Medium.nXi]) "Default state for medium 1";

      parameter Modelica.SIunits.SpecificHeatCapacity cp_nominal(fixed=false)
        "Specific heat capacity of medium 1 at nominal condition";

    public
      IDEAS.Fluid.Movers.FlowControlled_m_flow pump_prim_SH(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        redeclare package Medium = Medium,
        inputType=IDEAS.Fluid.Types.InputType.Continuous,
        addPowerToMedium=false,
        nominalValuesDefineDefaultPressureCurve=true,
        T_start=Tsup_prim,
        m_flow_nominal=mf_prim,
        m_flow_start=mf_prim,
        riseTime=30)            annotation (Placement(transformation(
            extent={{10,10},{-10,-10}},
            rotation=180,
            origin={20,-20})));
      IDEAS.Fluid.Sensors.TemperatureTwoPort Tret(redeclare package Medium =
            Medium,
        m_flow_nominal=mf_prim,
        tau=0)
        annotation (Placement(transformation(extent={{-7,-8},{7,8}},
            rotation=270,
            origin={160,-73})));
      IDEAS.Fluid.Sensors.TemperatureTwoPort Tsup(redeclare package Medium =
            Medium,
        m_flow_nominal=mf_prim,
        tau=0)      annotation (Placement(transformation(
            extent={{-7,-8},{7,8}},
            rotation=90,
            origin={120,-73})));
      GenkNET.Buildings.HeatingSystems.HeatExchanger heatExchanger_SH(
        redeclare package Medium1 = Medium,
        redeclare package Medium2 = Medium,
        m1_flow_nominal=mf_prim,
        m2_flow_nominal=sum(mf_sec),
        dp1_nominal=0,
        dp2_nominal=0,
        Q_nominal=sum(QNom),
        T1_in=Tsup_prim,
        T1_out=Tret_prim,
        T2_in=Tret_sec,
        T2_out=Tsup_sec)
                       annotation (Placement(transformation(
            extent={{10,-10},{-10,10}},
            rotation=270,
            origin={-56,-36})));
        //redeclare package Medium1 = Medium,
        //redeclare package Medium2 = Medium,
        //allowFlowReversal1=false,
        //allowFlowReversal2=false,
        //m1_flow_nominal=mf_prim,
        //m2_flow_nominal=mf_sec,
        //dp1_nominal=0,
        //dp2_nominal=0,
        //Q_flow_nominal=Q_nominal,
        //T_a1_nominal=Tsup_prim,
        //configuration=Buildings.Fluid.Types.HeatExchangerConfiguration.CounterFlow,
        //T_a2_nominal=Tret_sec)

      IDEAS.Fluid.Movers.FlowControlled_m_flow pump_BP(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        redeclare package Medium = Medium,
        inputType=IDEAS.Fluid.Types.InputType.Continuous,
        addPowerToMedium=false,
        nominalValuesDefineDefaultPressureCurve=true,
        T_start=Tsup_prim,
        m_flow_start=0,
        m_flow_nominal=mf_bypass + 0.001,
        riseTime=30) if                      add_bypass annotation (Placement(
            transformation(
            extent={{-10,10},{10,-10}},
            rotation=0,
            origin={140,-52})));
      Modelica.Blocks.Interfaces.RealInput mDHW60C(
        min=0,
        final quantity="Mass Flow Rate",
        unit="kg/s",
        displayUnit="kg/s") "Setpoint temperature for the zones" annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={80,-104}), iconTransformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={60,-102})));
    initial equation

      cp_nominal = Medium.specificHeatCapacityCp(sta_default);

    equation

      connect(Tsup.port_b, pump_BP.port_a) annotation (Line(
          points={{120,-66},{120,-52},{130,-52}},
          color={0,127,255},
          thickness=1));
      connect(pump_BP.port_b, Tret.port_a) annotation (Line(
          points={{150,-52},{160,-52},{160,-66}},
          color={0,127,255},
          thickness=1));
      connect(Tsup.port_a, port_a) annotation (Line(
          points={{120,-80},{120,-100}},
          color={0,127,255},
          thickness=1));
      connect(Tret.port_b, port_b) annotation (Line(
          points={{160,-80},{160,-100}},
          color={0,127,255},
          thickness=1));
      connect(pump_prim_SH.port_b, Tret.port_a) annotation (Line(
          points={{30,-20},{160,-20},{160,-66}},
          color={0,127,255},
          thickness=1));
      connect(heatExchanger_SH.port_a1, Tsup.port_b) annotation (Line(
          points={{-50,-46},{-50,-52},{120,-52},{120,-66}},
          color={0,127,255},
          thickness=1));
      connect(heatExchanger_SH.port_b1, pump_prim_SH.port_a) annotation (Line(
          points={{-50,-26},{-50,-20},{10,-20}},
          color={0,127,255},
          thickness=1));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-200,-100},
                {200,100}})),                                        Diagram(
            coordinateSystem(preserveAspectRatio=false, extent={{-200,-100},{200,100}})));
    end Primary_Side;

    partial model Direct_DHW
      import Buildings;
      extends IBPSAdestest.Consumer.HeatingSystems.BaseClasses.Primary_Side;

    parameter Modelica.SIunits.Temperature DHW_cold = 10+273.15 "Temperature of DHW that needs to be heated.";
    parameter Modelica.SIunits.Temperature DHW_warm = 50+273.15 "Temperature of DHW that has been heated.";
    parameter Modelica.SIunits.HeatFlowRate QNom_DHW = 1000 "Nominal DHW power.";

    parameter Modelica.SIunits.MassFlowRate mf_DHW_sec = QNom_DHW/cp_nominal/(DHW_warm - DHW_cold) "Nominal DHW mass flow rate at secondary side.";
    parameter Modelica.SIunits.MassFlowRate mf_DHW_prim = QNom_DHW/cp_nominal/(Tsup_prim - Tret_prim) "Nominal DHW mass flow rate at primary side.";

      IDEAS.Fluid.Movers.FlowControlled_m_flow pump_prim_DHW(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        redeclare package Medium = Medium,
        inputType=IDEAS.Fluid.Types.InputType.Continuous,
        addPowerToMedium=false,
        nominalValuesDefineDefaultPressureCurve=true,
        T_start=Tsup_prim,
        m_flow_nominal=mf_DHW_prim,
        m_flow_start=mf_DHW_prim,
        use_inputFilter=true,
        riseTime=30)            annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={82,14})));
     // Buildings.Fluid.HeatExchangers.PlateHeatExchangerEffectivenessNTU heatExchanger_DHW(
      //  redeclare package Medium1 = Medium,
      //  redeclare package Medium2 = Medium,
      //  allowFlowReversal1=false,
      //  allowFlowReversal2=false,
      //  dp1_nominal=0,
      //  dp2_nominal=0,
      //  configuration=Buildings.Fluid.Types.HeatExchangerConfiguration.CounterFlow,
      //  Q_flow_nominal=Q_nominal_DHW,
      //  T_a1_nominal=Tsup_prim,
      //  T_a2_nominal=DHW_cold,
      //  m1_flow_nominal=mf_DHW_prim,
      //  m2_flow_nominal=mf_DHW_sec)
      //                 annotation (Placement(transformation(
      //      extent={{10,-10},{-10,10}},
      //      rotation=90,
      //      origin={98,-36})));

      IDEAS.Fluid.Sources.FixedBoundary bou_DHW1(
        redeclare package Medium = Medium,
        use_T=true,
        T=DHW_warm,
        nPorts=1) annotation (Placement(transformation(
            extent={{-6,-6},{6,6}},
            rotation=180,
            origin={168,62})));
      IDEAS.Fluid.Sources.FixedBoundary bou_DHW(
        redeclare package Medium = Medium,
        use_T=true,
        T=DHW_cold,
        nPorts=1) annotation (Placement(transformation(
            extent={{-6,-6},{6,6}},
            rotation=0,
            origin={38,62})));
      IDEAS.Fluid.Movers.FlowControlled_m_flow pump_sec_DHW(
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        redeclare package Medium = Medium,
        inputType=IDEAS.Fluid.Types.InputType.Continuous,
        addPowerToMedium=false,
        nominalValuesDefineDefaultPressureCurve=true,
        T_start=Tsup_prim,
        m_flow_nominal=mf_DHW_sec,
        use_inputFilter=true,
        riseTime=180)           annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={66,62})));
      Modelica.Fluid.Sensors.TemperatureTwoPort Tsup_sec_DHW(redeclare package
          Medium = Medium) annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={144,62})));
      GenkNET.Buildings.HeatingSystems.HeatExchanger heatExchanger_DHW(
        redeclare package Medium1 = Medium,
        redeclare package Medium2 = Medium,
        m1_flow_nominal=mf_DHW_prim,
        m2_flow_nominal=mf_DHW_sec,
        dp1_nominal=0,
        dp2_nominal=0,
        T1_in=Tsup_prim,
        T2_in=DHW_cold,
        T1_out=Tret_prim,
        T2_out=DHW_warm,
        Q_nominal=QNom_DHW) annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=180,
            origin={104,56})));
    equation
      connect(pump_sec_DHW.port_b, heatExchanger_DHW.port_a2)
        annotation (Line(points={{76,62},{94,62}},   color={0,127,255},
          thickness=1));
      connect(pump_sec_DHW.port_a, bou_DHW.ports[1])
        annotation (Line(points={{56,62},{44,62}},   color={0,127,255},
          thickness=1));
      connect(Tsup_sec_DHW.port_b, bou_DHW1.ports[1])
        annotation (Line(points={{154,62},{162,62}},color={0,127,255},
          thickness=1));
      connect(Tsup_sec_DHW.port_a, heatExchanger_DHW.port_b2)
        annotation (Line(points={{134,62},{114,62}},   color={0,127,255},
          thickness=1));
      connect(heatExchanger_DHW.port_b1, pump_prim_DHW.port_b) annotation (Line(
          points={{94,50},{82,50},{82,24}},
          color={0,127,255},
          thickness=1));
      connect(pump_prim_DHW.port_a, Tsup.port_b) annotation (Line(
          points={{82,4},{82,-52},{120,-52},{120,-66}},
          color={0,127,255},
          thickness=1));
      connect(heatExchanger_DHW.port_a1, Tret.port_a) annotation (Line(
          points={{114,50},{124,50},{124,-20},{160,-20},{160,-66}},
          color={0,127,255},
          thickness=1));
    end Direct_DHW;
  end BaseClasses;
end HeatingSystems;
