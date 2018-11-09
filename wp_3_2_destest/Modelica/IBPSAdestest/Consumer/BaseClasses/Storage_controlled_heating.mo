within IBPSAdestest.Consumer.BaseClasses;
model Storage_controlled_heating
  extends Storage_controlled_base;
equation
  connect(pum_stor.port_b, tan.port_a)
    annotation (Line(points={{-60,40},{-10,40},{-10,0}}, color={0,127,255}));
  connect(pum_demand.port_a, tan.port_a)
    annotation (Line(points={{32,40},{-10,40},{-10,0}}, color={0,127,255}));
  connect(hea.port_b, tan.port_b) annotation (Line(points={{60,-12},{60,-42},{
          10,-42},{10,0}}, color={0,127,255}));
  connect(port_b, tan.port_b)
    annotation (Line(points={{-100,-42},{10,-42},{10,0}}, color={0,127,255}));
end Storage_controlled_heating;
