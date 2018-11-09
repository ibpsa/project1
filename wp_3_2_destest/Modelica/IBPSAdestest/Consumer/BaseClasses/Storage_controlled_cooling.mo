within IBPSAdestest.Consumer.BaseClasses;
model Storage_controlled_cooling
  extends Storage_controlled_base(hea(Q_flow_nominal=1));
equation
  connect(tan.port_b, pum_stor.port_b) annotation (Line(points={{10,0},{10,-40},
          {-20,-40},{-20,40},{-60,40}}, color={0,127,255}));
  connect(port_b, tan.port_a) annotation (Line(points={{-100,-42},{-10,-42},{
          -10,0}}, color={0,127,255}));
  connect(tan.port_b, pum_demand.port_a) annotation (Line(points={{10,0},{18,0},
          {18,40},{32,40}}, color={0,127,255}));
  connect(hea.port_b, tan.port_a) annotation (Line(points={{60,-12},{60,-40},{
          28,-40},{28,12},{-10,12},{-10,0}}, color={0,127,255}));
end Storage_controlled_cooling;
