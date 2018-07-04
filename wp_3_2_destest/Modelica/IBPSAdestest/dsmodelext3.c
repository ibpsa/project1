#include <moutil.c>
PreNonAliasDef(16)
PreNonAliasDef(17)
PreNonAliasDef(18)
PreNonAliasDef(19)
PreNonAliasDef(20)
StartNonAlias(15)
DeclareVariable("plugFlowPipe_IBPSA9.cor.port_b.h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 83680.0, -10000000000.0,10000000000.0,1000000.0,0,520)
DeclareVariable("plugFlowPipe_IBPSA9.cor.dh", "Hydraulic diameter (assuming a round cross section area) [m]",\
 0.06529125875897876, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.v_nominal", "Velocity at m_flow_nominal (used to compute default value for hydraulic diameter dh) [m/s]",\
 1.5, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.length", "Pipe length [m]", 20, 0.0,\
1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.m_flow_nominal", "Nominal mass flow rate [kg/s]",\
 5, 0.0,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.m_flow_small", "Small mass flow rate for regularization of zero flow [kg/s]",\
 0.0005, 0.0,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.roughness", "Average height of surface asperities (default: smooth steel pipe) [m]",\
 2.5E-05, 0.0,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.R", "Thermal resistance per unit length from fluid to boundary temperature [(m.K)/W]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.C", "Thermal capacity per unit length of pipe [J/(K.m)]",\
 13946.666666666666, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.fac", "Factor to take into account flow resistance of bends etc., fac=dp_nominal/dpStraightPipe_nominal",\
 1, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.from_dp", "= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("plugFlowPipe_IBPSA9.cor.thickness", "Pipe wall thickness [m]", \
0.0035, 0.0,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.T_start_in", "Initialization temperature at pipe inlet [K|degC]",\
 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.T_start_out", "Initialization temperature at pipe outlet [K|degC]",\
 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.initDelay", "Initialize delay for a constant mass flow rate if true, otherwise start from 0 [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("plugFlowPipe_IBPSA9.cor.m_flow_start", "[kg/s]", 0.0, 0.0,0.0,\
0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.ReC", "Reynolds number where transition to turbulent starts",\
 4000.0, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.homotopyInitialization", \
"= true, use homotopy method [:#(type=Boolean)]", true, 0.0,0.0,0.0,0,515)
DeclareVariable("plugFlowPipe_IBPSA9.cor.linearized", "= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.allowFlowReversal", \
"= false to simplify equations, assuming, but not enforcing, no flow reversal [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.res.port_a.m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "hea.port_a.m_flow", -1, 5, 12509, 132)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.res.port_a.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "hea.port_a.p", 1, 5, 12510, 4)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.port_a.h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 83680.0, -10000000000.0,10000000000.0,1000000.0,0,520)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.res.port_b.m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "hea.port_a.m_flow", 1, 5, 12509, 132)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.res.port_b.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehi.port_a.p", 1, 5, 4962, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.res.port_b.h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "hea.port_a.h_outflow", 1, 5, 12511, 4)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.m_flow_nominal", "Nominal mass flow rate [kg/s]",\
 5, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.m_flow_small", "Small mass flow rate for regularization of zero flow [kg/s]",\
 0.0005, 0.0,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.show_T", "= true, if actual temperature at port is computed [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.res.m_flow", "Mass flow rate from port_a to port_b (m_flow > 0 is design flow direction) [kg/s]",\
 "hea.port_a.m_flow", -1, 5, 12509, 0)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.dp", "Pressure difference between port_a and port_b [Pa|Pa]",\
 0, 0.0,0.0,4000.0,0,512)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res._m_flow_start", "Start value for m_flow, used to avoid a warning if not set in m_flow, and to avoid m_flow.start in parameter window [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res._dp_start", "Start value for dp, used to avoid a warning if not set in dp, and to avoid dp.start in parameter window [Pa|Pa]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.from_dp", "= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.dp_nominal", "Pressure drop at nominal mass flow rate [Pa|Pa]",\
 6848.969516240033, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.homotopyInitialization", \
"= true, use homotopy method [:#(type=Boolean)]", true, 0.0,0.0,0.0,0,515)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.linearized", "= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.m_flow_turbulent", "Turbulent flow if |m_flow| >= m_flow_turbulent [kg/s]",\
 0.2051185388608379, 0.0,1E+100,0.0,0,513)
DeclareParameter("plugFlowPipe_IBPSA9.cor.res.sta_default.p", "Absolute pressure of medium [Pa|bar]",\
 1618, 300000.0, 0.0,100000000.0,100000.0,0,2608)
DeclareParameter("plugFlowPipe_IBPSA9.cor.res.sta_default.T", "Temperature of medium [K|degC]",\
 1619, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.eta_default", "Dynamic viscosity, used to compute transition to turbulent flow regime [Pa.s]",\
 0.001, 0.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.m_flow_nominal_pos", \
"Absolute value of nominal flow rate [kg/s]", 5, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.dp_nominal_pos", "Absolute value of nominal pressure difference [Pa|Pa]",\
 6848.969516240033, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.deltaM", "Fraction of nominal mass flow rate where transition to turbulent occurs",\
 0.04102370777216758, 0.01,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.k", "Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)",\
 0.060416753918812745, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.computeFlowResistance", \
"Flag to enable/disable computation of flow resistance [:#(type=Boolean)]", true,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.coeff", "Precomputed coefficient to avoid division by parameter",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.dh", "Hydraulic diameter (assuming a round cross section area) [m]",\
 0.06529125875897876, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.length", "Length of the pipe [m]", 20,\
 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.ReC", "Reynolds number where transition to turbulent starts",\
 4000.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.v_nominal", "Velocity at m_flow_nominal (used to compute default value for hydraulic diameter dh) [m/s]",\
 1.5, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.roughness", "Absolute roughness of pipe, with a default for a smooth steel pipe (dummy if use_roughness = false) [m]",\
 2.5E-05, 0.0,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.fac", "Factor to take into account resistance of bends etc., fac=dp_nominal/dpStraightPipe_nominal",\
 1, 1.0,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.dpStraightPipe_nominal", \
"Pressure loss of a straight pipe at m_flow_nominal [Pa|Pa]", 6848.969516240033,\
 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.v", "Flow velocity (assuming a round cross section area) [m/s]",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.ARound", "Cross sectional area (assuming a round cross section area) [m2]",\
 0.003348111899256652, 0.0,0.0,0.0,0,2561)
DeclareParameter("plugFlowPipe_IBPSA9.cor.res.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 1620, 300000.0, 0.0,100000000.0,100000.0,0,2608)
DeclareParameter("plugFlowPipe_IBPSA9.cor.res.state_default.T", "Temperature of medium [K|degC]",\
 1621, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.rho_default", "Density at nominal condition [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.cor.res.mu_default", "Dynamic viscosity at nominal condition [Pa.s]",\
 0.001, 0.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.cor.del.allowFlowReversal", \
"= false to simplify equations, assuming, but not enforcing, no flow reversal [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.del.port_a.m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "hea.port_a.m_flow", -1, 5, 12509, 132)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.del.port_a.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehi.port_a.p", 1, 5, 4962, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.del.port_a.h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA9.cor.res.port_a.h_outflow", 1, 5, 12803, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.del.port_b.m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "hea.port_a.m_flow", 1, 5, 12509, 132)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.del.port_b.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehi.port_a.p", 1, 5, 4962, 4)
DeclareVariable("plugFlowPipe_IBPSA9.cor.del.port_b.h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 83680.0, -10000000000.0,10000000000.0,1000000.0,0,520)
DeclareVariable("plugFlowPipe_IBPSA9.cor.del.dh", "Hydraulic diameter (assuming a round cross section area) [m]",\
 0.06529125875897876, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.del.length", "Pipe length [m]", 20, 0.0,\
1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.del.A", "Cross-sectional area of pipe [m2]",\
 0.003348111899256652, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.del.m_flow_small", "Small mass flow rate for regularization of zero flow [kg/s]",\
 0.0005, -100000.0,100000.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.del.T_start_in", "Initial temperature in pipe at inlet [K|degC]",\
 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.del.T_start_out", "Initial temperature in pipe at outlet [K|degC]",\
 288.15, 0.0,1E+100,300.0,0,513)
DeclareState("plugFlowPipe_IBPSA9.cor.del.x", "Spatial coordinate for spatialDistribution operator [m]",\
 130, 0.0, 0.0,0.0,0.0,0,544)
DeclareDerivative("plugFlowPipe_IBPSA9.cor.del.der(x)", "der(Spatial coordinate for spatialDistribution operator) [m/s]",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.del.v", "Flow velocity of medium in pipe [m/s]",\
 "plugFlowPipe_IBPSA9.cor.del.der(x)", 1, 6, 130, 0)
DeclareVariable("plugFlowPipe_IBPSA9.cor.del.V_flow", "Volume flow rate at inflowing port (positive when flow from port_a to port_b) [m3/s]",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("plugFlowPipe_IBPSA9.cor.del.h_ini_in", "For initialization of spatialDistribution inlet [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.cor.del.h_ini_out", "For initialization of spatialDistribution outlet [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.allowFlowReversal", \
"= false to simplify equations, assuming, but not enforcing, no flow reversal [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_a.port_a.m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "hea.port_a.m_flow", 1, 5, 12509, 132)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_a.port_a.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "hea.port_a.p", 1, 5, 12510, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_a.port_a.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "hea.port_a.h_outflow", 1, 5, 12511, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_a.port_b.m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "hea.port_a.m_flow", -1, 5, 12509, 132)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_a.port_b.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "hea.port_a.p", 1, 5, 12510, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_a.port_b.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA9.port_a.h_outflow", 1, 5, 12762, 4)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.dp_start", "Guess value of dp = port_a.p - port_b.p [Pa|Pa]",\
 0, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.m_flow_start", \
"Guess value of m_flow = port_a.m_flow [kg/s]", 0.0, -100000.0,100000.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 0.0005, -100000.0,\
100000.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.show_T", "= true, if temperatures at port_a and port_b are computed [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.show_V_flow", "= true, if volume flow rate at inflowing port is computed [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_a.m_flow", "Mass flow rate in design flow direction [kg/s]",\
 "hea.port_a.m_flow", 1, 5, 12509, 0)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.dp", "Pressure difference between port_a and port_b (= port_a.p - port_b.p) [Pa|Pa]",\
 0, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.C", "Thermal capacity per unit length of pipe [J/(K.m)]",\
 13946.666666666666, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.R", "Thermal resistance per unit length from fluid to boundary temperature [(m.K)/W]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.m_flow_nominal", \
"Nominal mass flow rate [kg/s]", 5, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.T_start", "Initial output temperature [K|degC]",\
 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.tau_char", "Characteristic delay time [s]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.tau", "Time delay at pipe level [s]",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_a.heatPort.T", "Port temperature [K|degC]",\
 "plugFlowPipe_IBPSA9.heatPort.T", 1, 5, 12780, 4)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.heatPort.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,776)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.T_a_inflow", "Temperature at port_a for inflowing fluid [K|degC]",\
 0.0, 0.0,1E+100,300.0,0,512)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.T_b_outflow", "Temperature at port_b for outflowing fluid [K|degC]",\
 0.0, 0.0,1E+100,300.0,0,512)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_a.TAmb", "Environment temperature [K|degC]",\
 "plugFlowPipe_IBPSA9.heatPort.T", 1, 5, 12780, 0)
DeclareParameter("plugFlowPipe_IBPSA9.cor.heaLos_a.sta_default.p", \
"Absolute pressure of medium [Pa|bar]", 1622, 300000.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("plugFlowPipe_IBPSA9.cor.heaLos_a.sta_default.T", \
"Temperature of medium [K|degC]", 1623, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_a.cp_default", "Heat capacity of medium [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.allowFlowReversal", \
"= false to simplify equations, assuming, but not enforcing, no flow reversal [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_b.port_a.m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "hea.port_a.m_flow", -1, 5, 12509, 132)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_b.port_a.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehi.port_a.p", 1, 5, 4962, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_b.port_a.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA9.ports_b[1].h_outflow", 1, 5, 12763, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_b.port_b.m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "hea.port_a.m_flow", 1, 5, 12509, 132)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_b.port_b.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehi.port_a.p", 1, 5, 4962, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_b.port_b.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA9.cor.port_b.h_outflow", 1, 5, 12783, 4)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.dp_start", "Guess value of dp = port_a.p - port_b.p [Pa|Pa]",\
 0, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.m_flow_start", \
"Guess value of m_flow = port_a.m_flow [kg/s]", 0.0, -100000.0,100000.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 0.0005, -100000.0,\
100000.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.show_T", "= true, if temperatures at port_a and port_b are computed [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.show_V_flow", "= true, if volume flow rate at inflowing port is computed [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_b.m_flow", "Mass flow rate in design flow direction [kg/s]",\
 "hea.port_a.m_flow", -1, 5, 12509, 0)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.dp", "Pressure difference between port_a and port_b (= port_a.p - port_b.p) [Pa|Pa]",\
 0, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.C", "Thermal capacity per unit length of pipe [J/(K.m)]",\
 13946.666666666666, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.R", "Thermal resistance per unit length from fluid to boundary temperature [(m.K)/W]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.m_flow_nominal", \
"Nominal mass flow rate [kg/s]", 5, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.T_start", "Initial output temperature [K|degC]",\
 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.tau_char", "Characteristic delay time [s]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.tau", "Time delay at pipe level [s]",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_b.heatPort.T", "Port temperature [K|degC]",\
 "plugFlowPipe_IBPSA9.heatPort.T", 1, 5, 12780, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_b.heatPort.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"plugFlowPipe_IBPSA9.cor.heaLos_a.heatPort.Q_flow", -1, 5, 12857, 132)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.T_a_inflow", "Temperature at port_a for inflowing fluid [K|degC]",\
 0.0, 0.0,1E+100,300.0,0,512)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.T_b_outflow", "Temperature at port_b for outflowing fluid [K|degC]",\
 0.0, 0.0,1E+100,300.0,0,512)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heaLos_b.TAmb", "Environment temperature [K|degC]",\
 "plugFlowPipe_IBPSA9.heatPort.T", 1, 5, 12780, 0)
DeclareParameter("plugFlowPipe_IBPSA9.cor.heaLos_b.sta_default.p", \
"Absolute pressure of medium [Pa|bar]", 1624, 300000.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("plugFlowPipe_IBPSA9.cor.heaLos_b.sta_default.T", \
"Temperature of medium [K|degC]", 1625, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heaLos_b.cp_default", "Heat capacity of medium [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.cor.senMasFlo.allowFlowReversal", \
"= false to simplify equations, assuming, but not enforcing, no flow reversal [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.senMasFlo.port_a.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"hea.port_a.m_flow", -1, 5, 12509, 132)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.senMasFlo.port_a.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "hea.port_a.p", 1, 5, 12510, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.senMasFlo.port_a.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA9.cor.res.port_a.h_outflow", 1, 5, 12803, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.senMasFlo.port_b.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"hea.port_a.m_flow", 1, 5, 12509, 132)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.senMasFlo.port_b.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "hea.port_a.p", 1, 5, 12510, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.senMasFlo.port_b.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "hea.port_a.h_outflow", 1, 5, 12511, 4)
DeclareVariable("plugFlowPipe_IBPSA9.cor.senMasFlo.m_flow_nominal", \
"Nominal mass flow rate, used for regularization near zero flow [kg/s]", 0, 0.0,\
1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.senMasFlo.m_flow_small", \
"For bi-directional flow, temperature is regularized in the region |m_flow| < m_flow_small (m_flow_small > 0 required) [kg/s]",\
 0, 0.0,1E+100,0.0,0,513)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.senMasFlo.m_flow", "Mass flow rate from port_a to port_b [kg/s]",\
 "hea.port_a.m_flow", -1, 5, 12509, 0)
DeclareVariable("plugFlowPipe_IBPSA9.cor.timDel.length", "Pipe length [m]", 20, \
0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.timDel.dh", "Hydraulic diameter (assuming a round cross section area) [m]",\
 0.06529125875897876, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.timDel.rho", "Standard density of fluid [kg/m3|g/cm3]",\
 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.timDel.initDelay", "Initialize delay for a constant m_flow_start if true, otherwise start from 0 [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("plugFlowPipe_IBPSA9.cor.timDel.m_flow_start", "Initialization of mass flow rate to calculate initial time delay [kg/s]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.timDel.m_flow_nominal", \
"Nominal mass flow rate [kg/s]", 5, 0.0,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.timDel.t_in_start", "Initial value of input time at inlet [s]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.timDel.t_out_start", "Initial value of input time at outlet [s]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.cor.timDel.time_out_rev", "Reverse flow direction output time [s]",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("plugFlowPipe_IBPSA9.cor.timDel.time_out_des", "Design flow direction output time [s]",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareState("plugFlowPipe_IBPSA9.cor.timDel.x", "Spatial coordinate for spatialDistribution operator",\
 131, 0, 0.0,0.0,0.0,0,544)
DeclareDerivative("plugFlowPipe_IBPSA9.cor.timDel.der(x)", "der(Spatial coordinate for spatialDistribution operator)",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.timDel.u", "Normalized fluid velocity (1/s) [Hz]",\
 "plugFlowPipe_IBPSA9.cor.timDel.der(x)", 1, 6, 131, 0)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.timDel.m_flow", "Mass flow of fluid", \
"hea.port_a.m_flow", -1, 5, 12509, 0)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.timDel.tau", "Time delay for design flow direction",\
 "plugFlowPipe_IBPSA9.cor.heaLos_b.tau", 1, 5, 12873, 0)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.timDel.tauRev", "Time delay for reverse flow",\
 "plugFlowPipe_IBPSA9.cor.heaLos_a.tau", 1, 5, 12856, 0)
DeclareAlias2("plugFlowPipe_IBPSA9.cor.heatPort.T", "Port temperature [K|degC]",\
 "plugFlowPipe_IBPSA9.heatPort.T", 1, 5, 12780, 4)
DeclareVariable("plugFlowPipe_IBPSA9.cor.heatPort.Q_flow", "Heat flow rate (positive if flowing from outside into the component) [W]",\
 0.0, 0.0,0.0,0.0,0,777)
DeclareParameter("plugFlowPipe_IBPSA9.cor.rho_default", "Default density (e.g., rho_liquidWater = 995, rho_air = 1.2) [kg/m3|g/cm3]",\
 1626, 995.586, 0.0,1E+100,0.0,0,2608)
DeclareVariable("plugFlowPipe_IBPSA9.vol.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,517)
DeclareVariable("plugFlowPipe_IBPSA9.vol.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,517)
DeclareVariable("plugFlowPipe_IBPSA9.vol.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,517)
DeclareVariable("plugFlowPipe_IBPSA9.vol.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,517)
DeclareParameter("plugFlowPipe_IBPSA9.vol.p_start", "Start value of pressure [Pa|bar]",\
 1627, 300000, 0.0,100000000.0,100000.0,0,560)
DeclareVariable("plugFlowPipe_IBPSA9.vol.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,513)
DeclareParameter("plugFlowPipe_IBPSA9.vol.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 1628, 1, 0.0,1.0,0.1,0,560)
DeclareVariable("plugFlowPipe_IBPSA9.vol.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1, 1.0,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.vol.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("plugFlowPipe_IBPSA9.vol.prescribedHeatFlowRate", \
"Set to true if the model has a prescribed heat flow at its heatPort. If the heat flow rate at the heatPort is only based on temperature difference, then set to false [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("plugFlowPipe_IBPSA9.vol.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("plugFlowPipe_IBPSA9.vol.m_flow_nominal", "Nominal mass flow rate [kg/s]",\
 5, 0.0,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.vol.nPorts", "Number of ports [:#(type=Integer)]",\
 3, 0.0,0.0,0.0,0,517)
DeclareVariable("plugFlowPipe_IBPSA9.vol.m_flow_small", "Small mass flow rate for regularization of zero flow [kg/s]",\
 0.0005, 0.0,1E+100,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.vol.allowFlowReversal", "= false to simplify equations, assuming, but not enforcing, no flow reversal. Used only if model has two ports. [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("plugFlowPipe_IBPSA9.vol.V", "Volume [m3]", 0.007768219648514749,\
 0.0,0.0,0.0,0,513)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "hea.port_a.m_flow", -1, 5, 12509, 132)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehi.port_a.p", 1, 5, 4962, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA9.ports_b[1].h_outflow", 1, 5, 12763, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipehi.port_a.m_flow", -1, 5, 4961, 132)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehi.port_a.p", 1, 5, 4962, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA9.ports_b[1].h_outflow", 1, 5, 12763, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipedi.port_a.m_flow", -1, 5, 5130, 132)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehi.port_a.p", 1, 5, 4962, 4)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA9.ports_b[1].h_outflow", 1, 5, 12763, 4)
DeclareVariable("plugFlowPipe_IBPSA9.vol.T", "Temperature of the fluid [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,512)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.U", "Internal energy of the component [J]",\
 "plugFlowPipe_IBPSA9.vol.dynBal.U", 1, 1, 214, 0)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.p", "Pressure of the fluid [Pa|bar]", \
"pipehi.port_a.p", 1, 5, 4962, 0)
DeclareVariable("plugFlowPipe_IBPSA9.vol.m", "Mass of the component [kg]", \
7.7339307269862045, 0.0,0.0,0.0,0,513)
DeclareVariable("plugFlowPipe_IBPSA9.vol.rho_start", "Density, used to compute start and guess values [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.state_start.p", "Absolute pressure of medium [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.state_start.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.useSteadyStateTwoPort", \
"Flag, true if the model has two ports only and uses a steady state balance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.hOut_internal", "Internal connector for leaving temperature of the component [J/kg]",\
 "plugFlowPipe_IBPSA9.ports_b[1].h_outflow", 1, 5, 12763, 1024)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.preTem.port.T", "Port temperature [K|degC]",\
 "plugFlowPipe_IBPSA9.vol.T", 1, 5, 12905, 1028)
DeclareVariable("plugFlowPipe_IBPSA9.vol.preTem.port.Q_flow", "Heat flow rate (positive if flowing from outside into the component) [W]",\
 0.0, 0.0,0.0,0.0,0,2825)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.preTem.T", "[K]", "plugFlowPipe_IBPSA9.vol.T", 1,\
 5, 12905, 1024)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.portT.y", "Value of Real output", \
"plugFlowPipe_IBPSA9.vol.T", 1, 5, 12905, 1024)
DeclareVariable("plugFlowPipe_IBPSA9.vol.heaFloSen.Q_flow", "Heat flow from port_a to port_b as output signal [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.heaFloSen.port_a.T", "Port temperature [K|degC]",\
 "plugFlowPipe_IBPSA9.vol.T", 1, 5, 12905, 1028)
DeclareVariable("plugFlowPipe_IBPSA9.vol.heaFloSen.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,2825)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.heaFloSen.port_b.T", "Port temperature [K|degC]",\
 "plugFlowPipe_IBPSA9.vol.T", 1, 5, 12905, 1028)
DeclareVariable("plugFlowPipe_IBPSA9.vol.heaFloSen.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,2825)
DeclareVariable("plugFlowPipe_IBPSA9.vol.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.heatPort.T", "Port temperature [K|degC]",\
 "plugFlowPipe_IBPSA9.vol.T", 1, 5, 12905, 4)
DeclareVariable("plugFlowPipe_IBPSA9.vol.heatPort.Q_flow", "Heat flow rate (positive if flowing from outside into the component) [W]",\
 0.0, 0.0,0.0,0.0,0,777)
DeclareVariable("plugFlowPipe_IBPSA9.CPip", "Heat capacity of pipe wall [J/K]", \
32358.76616171028, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.VEqu", "Equivalent water volume to represent pipe wall thermal inertia [m3]",\
 0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareParameter("plugFlowPipe_IBPSA9.sta_default.p", "Absolute pressure of medium [Pa|bar]",\
 1629, 300000.0, 0.0,100000000.0,100000.0,0,2608)
DeclareParameter("plugFlowPipe_IBPSA9.sta_default.T", "Temperature of medium [K|degC]",\
 1630, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("plugFlowPipe_IBPSA9.cp_default", "Heat capacity of medium [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.C", "Thermal capacity per unit length of water in pipe [J/(K.m)]",\
 13946.666666666666, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.rho_default", "Default density (e.g., rho_liquidWater = 995, rho_air = 1.2) [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareOutput("y1[1]", "Connector of Real output signals", 0, 0.0, 0.0,0.0,0.0,0,2560)
DeclareOutput("y1[2]", "Connector of Real output signals", 1, 0.0, 0.0,0.0,0.0,0,2560)
DeclareOutput("y1[3]", "Connector of Real output signals", 2, 0.0, 0.0,0.0,0.0,0,2560)
DeclareOutput("y1[4]", "Connector of Real output signals", 3, 0.0, 0.0,0.0,0.0,0,2560)
DeclareOutput("y1[5]", "Connector of Real output signals", 4, 0.0, 0.0,0.0,0.0,0,2560)
DeclareOutput("y1[6]", "Connector of Real output signals", 5, 0.0, 0.0,0.0,0.0,0,2560)
DeclareOutput("y1[7]", "Connector of Real output signals", 6, 0.0, 0.0,0.0,0.0,0,2560)
DeclareOutput("y1[8]", "Connector of Real output signals", 7, 0.0, 0.0,0.0,0.0,0,2560)
DeclareOutput("y1[9]", "Connector of Real output signals", 8, 0.0, 0.0,0.0,0.0,0,2560)
DeclareOutput("y1[10]", "Connector of Real output signals", 9, 0.0, 0.0,0.0,0.0,\
0,2560)
DeclareOutput("y1[11]", "Connector of Real output signals", 10, 0.0, 0.0,0.0,0.0,\
0,2560)
DeclareOutput("y1[12]", "Connector of Real output signals", 11, 0.0, 0.0,0.0,0.0,\
0,2560)
DeclareOutput("y1[13]", "Connector of Real output signals", 12, 0.0, 0.0,0.0,0.0,\
0,2560)
DeclareOutput("y1[14]", "Connector of Real output signals", 13, 0.0, 0.0,0.0,0.0,\
0,2560)
DeclareOutput("y1[15]", "Connector of Real output signals", 14, 0.0, 0.0,0.0,0.0,\
0,2560)
DeclareOutput("y1[16]", "Connector of Real output signals", 15, 0.0, 0.0,0.0,0.0,\
0,2560)
DeclareOutput("y1[17]", "Connector of Real output signals", 16, 0.0, 0.0,0.0,0.0,\
0,2560)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_2.pum.vol.heatPort.Q_flow", 1, 5, 84, 1024)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_2.port_a.h_outflow", 1, 5, 4, 1024)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_2.pum.vol.dynBal.U", 1, 1, 132, 1024)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_2.port_a.m_flow", 1, 5, 2, 1156)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_2.port_a.p", 1, 5, 3, 1028)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_2.port_a.h_outflow", 1, 5, 4, 1028)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_2.port_a.m_flow", -1, 5, 2, 1156)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_2.port_a.p", 1, 5, 3, 1028)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_2.port_a.h_outflow", 1, 5, 4, 1028)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_2.port_a.p", 1, 5, 3, 1024)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_2.port_a.h_outflow", 1, 5, 4, 1024)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_2.port_a.h_outflow", 1, 5, 4, 1024)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_2.port_a.p", 1, 5, 3, 1024)
DeclareAlias2("SimpleDistrict_2.pum.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_2.pum.vol.dynBal.medium.T", 1, 5, 12939, 1024)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_2.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 132, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_2.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_2.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_2.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_2.pum.senRelPre.p_rel", 1, 5, 131, 1024)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_2.hea.Q_flow", 1, 5, 273, 1024)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_2.port_b.h_outflow", 1, 5, 6, 1024)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_2.hea.vol.dynBal.U", 1, 1, 133, 1024)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_2.port_a.m_flow", 1, 5, 2, 1156)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_2.port_b.p", 1, 5, 5, 1028)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_2.port_b.h_outflow", 1, 5, 6, 1028)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_2.port_a.m_flow", -1, 5, 2, 1156)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_2.port_b.p", 1, 5, 5, 1028)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_2.port_b.h_outflow", 1, 5, 6, 1028)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_2.port_b.p", 1, 5, 5, 1024)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_2.port_b.h_outflow", 1, 5, 6, 1024)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_2.port_b.h_outflow", 1, 5, 6, 1024)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_2.port_b.p", 1, 5, 5, 1024)
DeclareAlias2("SimpleDistrict_2.hea.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_2.hea.vol.dynBal.medium.T", 1, 5, 12979, 1024)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_2.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 133, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_2.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.m", "Mass of fluid [kg]", 150.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_2.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_3.pum.vol.heatPort.Q_flow", 1, 5, 363, 1024)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_3.port_a.h_outflow", 1, 5, 284, 1024)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_3.pum.vol.dynBal.U", 1, 1, 134, 1024)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_3.port_a.m_flow", 1, 5, 282, 1156)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_3.port_a.p", 1, 5, 283, 1028)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_3.port_a.h_outflow", 1, 5, 284, 1028)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_3.port_a.m_flow", -1, 5, 282, 1156)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_3.port_a.p", 1, 5, 283, 1028)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_3.port_a.h_outflow", 1, 5, 284, 1028)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_3.port_a.p", 1, 5, 283, 1024)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_3.port_a.h_outflow", 1, 5, 284, 1024)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_3.port_a.h_outflow", 1, 5, 284, 1024)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_3.port_a.p", 1, 5, 283, 1024)
DeclareAlias2("SimpleDistrict_3.pum.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_3.pum.vol.dynBal.medium.T", 1, 5, 13019, 1024)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_3.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 134, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_3.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_3.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_3.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_3.pum.senRelPre.p_rel", 1, 5, 409, 1024)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_3.hea.Q_flow", 1, 5, 551, 1024)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_3.port_b.h_outflow", 1, 5, 286, 1024)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_3.hea.vol.dynBal.U", 1, 1, 135, 1024)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_3.port_a.m_flow", 1, 5, 282, 1156)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_3.port_b.p", 1, 5, 285, 1028)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_3.port_b.h_outflow", 1, 5, 286, 1028)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_3.port_a.m_flow", -1, 5, 282, 1156)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_3.port_b.p", 1, 5, 285, 1028)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_3.port_b.h_outflow", 1, 5, 286, 1028)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_3.port_b.p", 1, 5, 285, 1024)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_3.port_b.h_outflow", 1, 5, 286, 1024)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_3.port_b.h_outflow", 1, 5, 286, 1024)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_3.port_b.p", 1, 5, 285, 1024)
DeclareAlias2("SimpleDistrict_3.hea.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_3.hea.vol.dynBal.medium.T", 1, 5, 13059, 1024)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_3.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 135, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_3.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.m", "Mass of fluid [kg]", 150.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_3.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_5.pum.vol.heatPort.Q_flow", 1, 5, 641, 1024)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_5.port_a.h_outflow", 1, 5, 562, 1024)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_5.pum.vol.dynBal.U", 1, 1, 136, 1024)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_5.port_a.m_flow", 1, 5, 560, 1156)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_5.port_a.p", 1, 5, 561, 1028)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_5.port_a.h_outflow", 1, 5, 562, 1028)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_5.port_a.m_flow", -1, 5, 560, 1156)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_5.port_a.p", 1, 5, 561, 1028)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_5.port_a.h_outflow", 1, 5, 562, 1028)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_5.port_a.p", 1, 5, 561, 1024)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_5.port_a.h_outflow", 1, 5, 562, 1024)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_5.port_a.h_outflow", 1, 5, 562, 1024)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_5.port_a.p", 1, 5, 561, 1024)
DeclareAlias2("SimpleDistrict_5.pum.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_5.pum.vol.dynBal.medium.T", 1, 5, 13099, 1024)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_5.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 136, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_5.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_5.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_5.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_5.pum.senRelPre.p_rel", 1, 5, 687, 1024)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_5.hea.Q_flow", 1, 5, 829, 1024)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_5.port_b.h_outflow", 1, 5, 564, 1024)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_5.hea.vol.dynBal.U", 1, 1, 137, 1024)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_5.port_a.m_flow", 1, 5, 560, 1156)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_5.port_b.p", 1, 5, 563, 1028)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_5.port_b.h_outflow", 1, 5, 564, 1028)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_5.port_a.m_flow", -1, 5, 560, 1156)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_5.port_b.p", 1, 5, 563, 1028)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_5.port_b.h_outflow", 1, 5, 564, 1028)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_5.port_b.p", 1, 5, 563, 1024)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_5.port_b.h_outflow", 1, 5, 564, 1024)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_5.port_b.h_outflow", 1, 5, 564, 1024)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_5.port_b.p", 1, 5, 563, 1024)
DeclareAlias2("SimpleDistrict_5.hea.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_5.hea.vol.dynBal.medium.T", 1, 5, 13139, 1024)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_5.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 137, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_5.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.m", "Mass of fluid [kg]", 150.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_5.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_6.pum.vol.heatPort.Q_flow", 1, 5, 919, 1024)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_6.port_a.h_outflow", 1, 5, 840, 1024)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_6.pum.vol.dynBal.U", 1, 1, 138, 1024)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_6.port_a.m_flow", 1, 5, 838, 1156)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_6.port_a.p", 1, 5, 839, 1028)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_6.port_a.h_outflow", 1, 5, 840, 1028)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_6.port_a.m_flow", -1, 5, 838, 1156)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_6.port_a.p", 1, 5, 839, 1028)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_6.port_a.h_outflow", 1, 5, 840, 1028)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_6.port_a.p", 1, 5, 839, 1024)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_6.port_a.h_outflow", 1, 5, 840, 1024)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_6.port_a.h_outflow", 1, 5, 840, 1024)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_6.port_a.p", 1, 5, 839, 1024)
DeclareAlias2("SimpleDistrict_6.pum.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_6.pum.vol.dynBal.medium.T", 1, 5, 13179, 1024)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_6.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 138, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_6.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_6.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_6.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_6.pum.senRelPre.p_rel", 1, 5, 965, 1024)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_6.hea.Q_flow", 1, 5, 1107, 1024)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_6.port_b.h_outflow", 1, 5, 842, 1024)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_6.hea.vol.dynBal.U", 1, 1, 139, 1024)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_6.port_a.m_flow", 1, 5, 838, 1156)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_6.port_b.p", 1, 5, 841, 1028)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_6.port_b.h_outflow", 1, 5, 842, 1028)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_6.port_a.m_flow", -1, 5, 838, 1156)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_6.port_b.p", 1, 5, 841, 1028)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_6.port_b.h_outflow", 1, 5, 842, 1028)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_6.port_b.p", 1, 5, 841, 1024)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_6.port_b.h_outflow", 1, 5, 842, 1024)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_6.port_b.h_outflow", 1, 5, 842, 1024)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_6.port_b.p", 1, 5, 841, 1024)
DeclareAlias2("SimpleDistrict_6.hea.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_6.hea.vol.dynBal.medium.T", 1, 5, 13219, 1024)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_6.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 139, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_6.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.m", "Mass of fluid [kg]", 150.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_6.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_10.pum.vol.heatPort.Q_flow", 1, 5, 1197, 1024)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_10.port_a.h_outflow", 1, 5, 1118, 1024)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_10.pum.vol.dynBal.U", 1, 1, 140, 1024)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_10.port_a.m_flow", 1, 5, 1116, 1156)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_10.port_a.p", 1, 5, 1117, 1028)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_10.port_a.h_outflow", 1, 5, 1118, 1028)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_10.port_a.m_flow", -1, 5, 1116, 1156)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_10.port_a.p", 1, 5, 1117, 1028)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_10.port_a.h_outflow", 1, 5, 1118, 1028)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_10.port_a.p", 1, 5, 1117, 1024)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_10.port_a.h_outflow", 1, 5, 1118, 1024)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_10.port_a.h_outflow", 1, 5, 1118, 1024)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_10.port_a.p", 1, 5, 1117,\
 1024)
DeclareAlias2("SimpleDistrict_10.pum.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_10.pum.vol.dynBal.medium.T", 1,\
 5, 13259, 1024)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_10.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 140, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_10.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_10.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_10.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_10.pum.senRelPre.p_rel", 1, 5, 1243, 1024)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_10.hea.Q_flow", 1, 5, 1385, 1024)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_10.port_b.h_outflow", 1, 5, 1120, 1024)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_10.hea.vol.dynBal.U", 1, 1, 141, 1024)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_10.port_a.m_flow", 1, 5, 1116, 1156)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_10.port_b.p", 1, 5, 1119, 1028)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_10.port_b.h_outflow", 1, 5, 1120, 1028)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_10.port_a.m_flow", -1, 5, 1116, 1156)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_10.port_b.p", 1, 5, 1119, 1028)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_10.port_b.h_outflow", 1, 5, 1120, 1028)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_10.port_b.p", 1, 5, 1119, 1024)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_10.port_b.h_outflow", 1, 5, 1120, 1024)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_10.port_b.h_outflow", 1, 5, 1120, 1024)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_10.port_b.p", 1, 5, 1119,\
 1024)
DeclareAlias2("SimpleDistrict_10.hea.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_10.hea.vol.dynBal.medium.T", 1,\
 5, 13299, 1024)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_10.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 141, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_10.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.m", "Mass of fluid [kg]", \
150.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_10.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_16.pum.vol.heatPort.Q_flow", 1, 5, 1475, 1024)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_16.port_a.h_outflow", 1, 5, 1396, 1024)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_16.pum.vol.dynBal.U", 1, 1, 142, 1024)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_16.port_a.m_flow", 1, 5, 1394, 1156)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_16.port_a.p", 1, 5, 1395, 1028)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_16.port_a.h_outflow", 1, 5, 1396, 1028)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_16.port_a.m_flow", -1, 5, 1394, 1156)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_16.port_a.p", 1, 5, 1395, 1028)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_16.port_a.h_outflow", 1, 5, 1396, 1028)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_16.port_a.p", 1, 5, 1395, 1024)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_16.port_a.h_outflow", 1, 5, 1396, 1024)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_16.port_a.h_outflow", 1, 5, 1396, 1024)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_16.port_a.p", 1, 5, 1395,\
 1024)
DeclareAlias2("SimpleDistrict_16.pum.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_16.pum.vol.dynBal.medium.T", 1,\
 5, 13339, 1024)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_16.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 142, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_16.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_16.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_16.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_16.pum.senRelPre.p_rel", 1, 5, 1521, 1024)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_16.hea.Q_flow", 1, 5, 1663, 1024)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_16.port_b.h_outflow", 1, 5, 1398, 1024)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_16.hea.vol.dynBal.U", 1, 1, 143, 1024)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_16.port_a.m_flow", 1, 5, 1394, 1156)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_16.port_b.p", 1, 5, 1397, 1028)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_16.port_b.h_outflow", 1, 5, 1398, 1028)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_16.port_a.m_flow", -1, 5, 1394, 1156)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_16.port_b.p", 1, 5, 1397, 1028)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_16.port_b.h_outflow", 1, 5, 1398, 1028)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_16.port_b.p", 1, 5, 1397, 1024)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_16.port_b.h_outflow", 1, 5, 1398, 1024)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_16.port_b.h_outflow", 1, 5, 1398, 1024)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_16.port_b.p", 1, 5, 1397,\
 1024)
DeclareAlias2("SimpleDistrict_16.hea.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_16.hea.vol.dynBal.medium.T", 1,\
 5, 13379, 1024)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_16.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 143, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_16.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.m", "Mass of fluid [kg]", \
150.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_16.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_15.pum.vol.heatPort.Q_flow", 1, 5, 1753, 1024)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_15.port_a.h_outflow", 1, 5, 1674, 1024)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_15.pum.vol.dynBal.U", 1, 1, 144, 1024)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_15.port_a.m_flow", 1, 5, 1672, 1156)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_15.port_a.p", 1, 5, 1673, 1028)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_15.port_a.h_outflow", 1, 5, 1674, 1028)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_15.port_a.m_flow", -1, 5, 1672, 1156)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_15.port_a.p", 1, 5, 1673, 1028)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_15.port_a.h_outflow", 1, 5, 1674, 1028)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_15.port_a.p", 1, 5, 1673, 1024)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_15.port_a.h_outflow", 1, 5, 1674, 1024)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_15.port_a.h_outflow", 1, 5, 1674, 1024)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_15.port_a.p", 1, 5, 1673,\
 1024)
DeclareAlias2("SimpleDistrict_15.pum.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_15.pum.vol.dynBal.medium.T", 1,\
 5, 13419, 1024)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_15.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 144, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_15.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_15.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_15.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_15.pum.senRelPre.p_rel", 1, 5, 1799, 1024)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_15.hea.Q_flow", 1, 5, 1941, 1024)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_15.port_b.h_outflow", 1, 5, 1676, 1024)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_15.hea.vol.dynBal.U", 1, 1, 145, 1024)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_15.port_a.m_flow", 1, 5, 1672, 1156)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_15.port_b.p", 1, 5, 1675, 1028)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_15.port_b.h_outflow", 1, 5, 1676, 1028)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_15.port_a.m_flow", -1, 5, 1672, 1156)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_15.port_b.p", 1, 5, 1675, 1028)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_15.port_b.h_outflow", 1, 5, 1676, 1028)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_15.port_b.p", 1, 5, 1675, 1024)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_15.port_b.h_outflow", 1, 5, 1676, 1024)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_15.port_b.h_outflow", 1, 5, 1676, 1024)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_15.port_b.p", 1, 5, 1675,\
 1024)
DeclareAlias2("SimpleDistrict_15.hea.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_15.hea.vol.dynBal.medium.T", 1,\
 5, 13459, 1024)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_15.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 145, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_15.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.m", "Mass of fluid [kg]", \
150.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_15.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_11.pum.vol.heatPort.Q_flow", 1, 5, 2031, 1024)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_11.port_a.h_outflow", 1, 5, 1952, 1024)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_11.pum.vol.dynBal.U", 1, 1, 146, 1024)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_11.port_a.m_flow", 1, 5, 1950, 1156)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_11.port_a.p", 1, 5, 1951, 1028)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_11.port_a.h_outflow", 1, 5, 1952, 1028)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_11.port_a.m_flow", -1, 5, 1950, 1156)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_11.port_a.p", 1, 5, 1951, 1028)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_11.port_a.h_outflow", 1, 5, 1952, 1028)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_11.port_a.p", 1, 5, 1951, 1024)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_11.port_a.h_outflow", 1, 5, 1952, 1024)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_11.port_a.h_outflow", 1, 5, 1952, 1024)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_11.port_a.p", 1, 5, 1951,\
 1024)
DeclareAlias2("SimpleDistrict_11.pum.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_11.pum.vol.dynBal.medium.T", 1,\
 5, 13499, 1024)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_11.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 146, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_11.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_11.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_11.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_11.pum.senRelPre.p_rel", 1, 5, 2077, 1024)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_11.hea.Q_flow", 1, 5, 2219, 1024)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_11.port_b.h_outflow", 1, 5, 1954, 1024)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_11.hea.vol.dynBal.U", 1, 1, 147, 1024)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_11.port_a.m_flow", 1, 5, 1950, 1156)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_11.port_b.p", 1, 5, 1953, 1028)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_11.port_b.h_outflow", 1, 5, 1954, 1028)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_11.port_a.m_flow", -1, 5, 1950, 1156)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_11.port_b.p", 1, 5, 1953, 1028)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_11.port_b.h_outflow", 1, 5, 1954, 1028)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_11.port_b.p", 1, 5, 1953, 1024)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_11.port_b.h_outflow", 1, 5, 1954, 1024)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_11.port_b.h_outflow", 1, 5, 1954, 1024)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_11.port_b.p", 1, 5, 1953,\
 1024)
DeclareAlias2("SimpleDistrict_11.hea.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_11.hea.vol.dynBal.medium.T", 1,\
 5, 13539, 1024)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_11.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 147, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_11.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.m", "Mass of fluid [kg]", \
150.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_11.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_1.pum.vol.heatPort.Q_flow", 1, 5, 2309, 1024)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_1.port_a.h_outflow", 1, 5, 2230, 1024)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_1.pum.vol.dynBal.U", 1, 1, 148, 1024)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_1.port_a.m_flow", 1, 5, 2228, 1156)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_1.port_a.p", 1, 5, 2229, 1028)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_1.port_a.h_outflow", 1, 5, 2230, 1028)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_1.port_a.m_flow", -1, 5, 2228, 1156)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_1.port_a.p", 1, 5, 2229, 1028)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_1.port_a.h_outflow", 1, 5, 2230, 1028)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_1.port_a.p", 1, 5, 2229, 1024)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_1.port_a.h_outflow", 1, 5, 2230, 1024)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_1.port_a.h_outflow", 1, 5, 2230, 1024)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_1.port_a.p", 1, 5, 2229, 1024)
DeclareAlias2("SimpleDistrict_1.pum.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_1.pum.vol.dynBal.medium.T", 1, 5, 13579, 1024)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_1.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 148, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_1.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_1.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_1.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_1.pum.senRelPre.p_rel", 1, 5, 2355, 1024)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_1.hea.Q_flow", 1, 5, 2497, 1024)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_1.port_b.h_outflow", 1, 5, 2232, 1024)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_1.hea.vol.dynBal.U", 1, 1, 149, 1024)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_1.port_a.m_flow", 1, 5, 2228, 1156)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_1.port_b.p", 1, 5, 2231, 1028)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_1.port_b.h_outflow", 1, 5, 2232, 1028)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_1.port_a.m_flow", -1, 5, 2228, 1156)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_1.port_b.p", 1, 5, 2231, 1028)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_1.port_b.h_outflow", 1, 5, 2232, 1028)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_1.port_b.p", 1, 5, 2231, 1024)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_1.port_b.h_outflow", 1, 5, 2232, 1024)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_1.port_b.h_outflow", 1, 5, 2232, 1024)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_1.port_b.p", 1, 5, 2231, 1024)
DeclareAlias2("SimpleDistrict_1.hea.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_1.hea.vol.dynBal.medium.T", 1, 5, 13619, 1024)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_1.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 149, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_1.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.m", "Mass of fluid [kg]", 150.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_1.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_4.pum.vol.heatPort.Q_flow", 1, 5, 2587, 1024)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_4.port_a.h_outflow", 1, 5, 2508, 1024)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_4.pum.vol.dynBal.U", 1, 1, 150, 1024)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_4.port_a.m_flow", 1, 5, 2506, 1156)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_4.port_a.p", 1, 5, 2507, 1028)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_4.port_a.h_outflow", 1, 5, 2508, 1028)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_4.port_a.m_flow", -1, 5, 2506, 1156)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_4.port_a.p", 1, 5, 2507, 1028)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_4.port_a.h_outflow", 1, 5, 2508, 1028)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_4.port_a.p", 1, 5, 2507, 1024)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_4.port_a.h_outflow", 1, 5, 2508, 1024)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_4.port_a.h_outflow", 1, 5, 2508, 1024)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_4.port_a.p", 1, 5, 2507, 1024)
DeclareAlias2("SimpleDistrict_4.pum.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_4.pum.vol.dynBal.medium.T", 1, 5, 13659, 1024)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_4.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 150, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_4.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_4.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_4.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_4.pum.senRelPre.p_rel", 1, 5, 2633, 1024)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_4.hea.Q_flow", 1, 5, 2775, 1024)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_4.port_b.h_outflow", 1, 5, 2510, 1024)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_4.hea.vol.dynBal.U", 1, 1, 151, 1024)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_4.port_a.m_flow", 1, 5, 2506, 1156)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_4.port_b.p", 1, 5, 2509, 1028)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_4.port_b.h_outflow", 1, 5, 2510, 1028)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_4.port_a.m_flow", -1, 5, 2506, 1156)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_4.port_b.p", 1, 5, 2509, 1028)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_4.port_b.h_outflow", 1, 5, 2510, 1028)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_4.port_b.p", 1, 5, 2509, 1024)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_4.port_b.h_outflow", 1, 5, 2510, 1024)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_4.port_b.h_outflow", 1, 5, 2510, 1024)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_4.port_b.p", 1, 5, 2509, 1024)
DeclareAlias2("SimpleDistrict_4.hea.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_4.hea.vol.dynBal.medium.T", 1, 5, 13699, 1024)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_4.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 151, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_4.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.m", "Mass of fluid [kg]", 150.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_4.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_7.pum.vol.heatPort.Q_flow", 1, 5, 2865, 1024)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_7.port_a.h_outflow", 1, 5, 2786, 1024)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_7.pum.vol.dynBal.U", 1, 1, 152, 1024)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_7.port_a.m_flow", 1, 5, 2784, 1156)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_7.port_a.p", 1, 5, 2785, 1028)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_7.port_a.h_outflow", 1, 5, 2786, 1028)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_7.port_a.m_flow", -1, 5, 2784, 1156)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_7.port_a.p", 1, 5, 2785, 1028)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_7.port_a.h_outflow", 1, 5, 2786, 1028)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_7.port_a.p", 1, 5, 2785, 1024)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_7.port_a.h_outflow", 1, 5, 2786, 1024)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_7.port_a.h_outflow", 1, 5, 2786, 1024)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_7.port_a.p", 1, 5, 2785, 1024)
DeclareAlias2("SimpleDistrict_7.pum.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_7.pum.vol.dynBal.medium.T", 1, 5, 13739, 1024)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_7.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 152, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_7.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_7.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_7.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_7.pum.senRelPre.p_rel", 1, 5, 2911, 1024)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_7.hea.Q_flow", 1, 5, 3053, 1024)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_7.port_b.h_outflow", 1, 5, 2788, 1024)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_7.hea.vol.dynBal.U", 1, 1, 153, 1024)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_7.port_a.m_flow", 1, 5, 2784, 1156)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_7.port_b.p", 1, 5, 2787, 1028)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_7.port_b.h_outflow", 1, 5, 2788, 1028)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_7.port_a.m_flow", -1, 5, 2784, 1156)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_7.port_b.p", 1, 5, 2787, 1028)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_7.port_b.h_outflow", 1, 5, 2788, 1028)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_7.port_b.p", 1, 5, 2787, 1024)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_7.port_b.h_outflow", 1, 5, 2788, 1024)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_7.port_b.h_outflow", 1, 5, 2788, 1024)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_7.port_b.p", 1, 5, 2787, 1024)
DeclareAlias2("SimpleDistrict_7.hea.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_7.hea.vol.dynBal.medium.T", 1, 5, 13779, 1024)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_7.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 153, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_7.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.m", "Mass of fluid [kg]", 150.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_7.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_8.pum.vol.heatPort.Q_flow", 1, 5, 3143, 1024)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_8.port_a.h_outflow", 1, 5, 3064, 1024)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_8.pum.vol.dynBal.U", 1, 1, 154, 1024)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_8.port_a.m_flow", 1, 5, 3062, 1156)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_8.port_a.p", 1, 5, 3063, 1028)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_8.port_a.h_outflow", 1, 5, 3064, 1028)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_8.port_a.m_flow", -1, 5, 3062, 1156)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_8.port_a.p", 1, 5, 3063, 1028)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_8.port_a.h_outflow", 1, 5, 3064, 1028)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_8.port_a.p", 1, 5, 3063, 1024)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_8.port_a.h_outflow", 1, 5, 3064, 1024)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_8.port_a.h_outflow", 1, 5, 3064, 1024)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_8.port_a.p", 1, 5, 3063, 1024)
DeclareAlias2("SimpleDistrict_8.pum.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_8.pum.vol.dynBal.medium.T", 1, 5, 13819, 1024)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_8.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 154, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_8.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_8.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_8.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_8.pum.senRelPre.p_rel", 1, 5, 3189, 1024)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_8.hea.Q_flow", 1, 5, 3331, 1024)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_8.port_b.h_outflow", 1, 5, 3066, 1024)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_8.hea.vol.dynBal.U", 1, 1, 155, 1024)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_8.port_a.m_flow", 1, 5, 3062, 1156)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_8.port_b.p", 1, 5, 3065, 1028)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_8.port_b.h_outflow", 1, 5, 3066, 1028)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_8.port_a.m_flow", -1, 5, 3062, 1156)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_8.port_b.p", 1, 5, 3065, 1028)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_8.port_b.h_outflow", 1, 5, 3066, 1028)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_8.port_b.p", 1, 5, 3065, 1024)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_8.port_b.h_outflow", 1, 5, 3066, 1024)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_8.port_b.h_outflow", 1, 5, 3066, 1024)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_8.port_b.p", 1, 5, 3065, 1024)
DeclareAlias2("SimpleDistrict_8.hea.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_8.hea.vol.dynBal.medium.T", 1, 5, 13859, 1024)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_8.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 155, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_8.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.m", "Mass of fluid [kg]", 150.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_8.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_9.pum.vol.heatPort.Q_flow", 1, 5, 3421, 1024)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_9.port_a.h_outflow", 1, 5, 3342, 1024)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_9.pum.vol.dynBal.U", 1, 1, 156, 1024)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_9.port_a.m_flow", 1, 5, 3340, 1156)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_9.port_a.p", 1, 5, 3341, 1028)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_9.port_a.h_outflow", 1, 5, 3342, 1028)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_9.port_a.m_flow", -1, 5, 3340, 1156)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_9.port_a.p", 1, 5, 3341, 1028)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_9.port_a.h_outflow", 1, 5, 3342, 1028)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_9.port_a.p", 1, 5, 3341, 1024)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_9.port_a.h_outflow", 1, 5, 3342, 1024)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_9.port_a.h_outflow", 1, 5, 3342, 1024)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_9.port_a.p", 1, 5, 3341, 1024)
DeclareAlias2("SimpleDistrict_9.pum.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_9.pum.vol.dynBal.medium.T", 1, 5, 13899, 1024)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_9.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 156, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_9.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_9.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_9.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_9.pum.senRelPre.p_rel", 1, 5, 3467, 1024)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_9.hea.Q_flow", 1, 5, 3609, 1024)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_9.port_b.h_outflow", 1, 5, 3344, 1024)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_9.hea.vol.dynBal.U", 1, 1, 157, 1024)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_9.port_a.m_flow", 1, 5, 3340, 1156)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_9.port_b.p", 1, 5, 3343, 1028)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_9.port_b.h_outflow", 1, 5, 3344, 1028)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_9.port_a.m_flow", -1, 5, 3340, 1156)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_9.port_b.p", 1, 5, 3343, 1028)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_9.port_b.h_outflow", 1, 5, 3344, 1028)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_9.port_b.p", 1, 5, 3343, 1024)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_9.port_b.h_outflow", 1, 5, 3344, 1024)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_9.port_b.h_outflow", 1, 5, 3344, 1024)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_9.port_b.p", 1, 5, 3343, 1024)
DeclareAlias2("SimpleDistrict_9.hea.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "SimpleDistrict_9.hea.vol.dynBal.medium.T", 1, 5, 13939, 1024)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_9.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 157, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_9.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.m", "Mass of fluid [kg]", 150.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_9.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_12.pum.vol.heatPort.Q_flow", 1, 5, 3699, 1024)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_12.port_a.h_outflow", 1, 5, 3620, 1024)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_12.pum.vol.dynBal.U", 1, 1, 158, 1024)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_12.port_a.m_flow", 1, 5, 3618, 1156)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_12.port_a.p", 1, 5, 3619, 1028)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_12.port_a.h_outflow", 1, 5, 3620, 1028)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_12.port_a.m_flow", -1, 5, 3618, 1156)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_12.port_a.p", 1, 5, 3619, 1028)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_12.port_a.h_outflow", 1, 5, 3620, 1028)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_12.port_a.p", 1, 5, 3619, 1024)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_12.port_a.h_outflow", 1, 5, 3620, 1024)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_12.port_a.h_outflow", 1, 5, 3620, 1024)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_12.port_a.p", 1, 5, 3619,\
 1024)
DeclareAlias2("SimpleDistrict_12.pum.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_12.pum.vol.dynBal.medium.T", 1,\
 5, 13979, 1024)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_12.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 158, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_12.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_12.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_12.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_12.pum.senRelPre.p_rel", 1, 5, 3745, 1024)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_12.hea.Q_flow", 1, 5, 3887, 1024)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_12.port_b.h_outflow", 1, 5, 3622, 1024)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_12.hea.vol.dynBal.U", 1, 1, 159, 1024)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_12.port_a.m_flow", 1, 5, 3618, 1156)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_12.port_b.p", 1, 5, 3621, 1028)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_12.port_b.h_outflow", 1, 5, 3622, 1028)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_12.port_a.m_flow", -1, 5, 3618, 1156)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_12.port_b.p", 1, 5, 3621, 1028)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_12.port_b.h_outflow", 1, 5, 3622, 1028)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_12.port_b.p", 1, 5, 3621, 1024)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_12.port_b.h_outflow", 1, 5, 3622, 1024)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_12.port_b.h_outflow", 1, 5, 3622, 1024)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_12.port_b.p", 1, 5, 3621,\
 1024)
DeclareAlias2("SimpleDistrict_12.hea.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_12.hea.vol.dynBal.medium.T", 1,\
 5, 14019, 1024)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_12.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 159, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_12.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.m", "Mass of fluid [kg]", \
150.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_12.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_13.pum.vol.heatPort.Q_flow", 1, 5, 3977, 1024)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_13.port_a.h_outflow", 1, 5, 3898, 1024)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_13.pum.vol.dynBal.U", 1, 1, 160, 1024)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_13.port_a.m_flow", 1, 5, 3896, 1156)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_13.port_a.p", 1, 5, 3897, 1028)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_13.port_a.h_outflow", 1, 5, 3898, 1028)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_13.port_a.m_flow", -1, 5, 3896, 1156)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_13.port_a.p", 1, 5, 3897, 1028)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_13.port_a.h_outflow", 1, 5, 3898, 1028)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_13.port_a.p", 1, 5, 3897, 1024)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_13.port_a.h_outflow", 1, 5, 3898, 1024)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_13.port_a.h_outflow", 1, 5, 3898, 1024)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_13.port_a.p", 1, 5, 3897,\
 1024)
DeclareAlias2("SimpleDistrict_13.pum.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_13.pum.vol.dynBal.medium.T", 1,\
 5, 14059, 1024)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_13.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 160, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_13.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_13.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_13.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_13.pum.senRelPre.p_rel", 1, 5, 4023, 1024)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_13.hea.Q_flow", 1, 5, 4165, 1024)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_13.port_b.h_outflow", 1, 5, 3900, 1024)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_13.hea.vol.dynBal.U", 1, 1, 161, 1024)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_13.port_a.m_flow", 1, 5, 3896, 1156)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_13.port_b.p", 1, 5, 3899, 1028)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_13.port_b.h_outflow", 1, 5, 3900, 1028)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_13.port_a.m_flow", -1, 5, 3896, 1156)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_13.port_b.p", 1, 5, 3899, 1028)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_13.port_b.h_outflow", 1, 5, 3900, 1028)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_13.port_b.p", 1, 5, 3899, 1024)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_13.port_b.h_outflow", 1, 5, 3900, 1024)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_13.port_b.h_outflow", 1, 5, 3900, 1024)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_13.port_b.p", 1, 5, 3899,\
 1024)
DeclareAlias2("SimpleDistrict_13.hea.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_13.hea.vol.dynBal.medium.T", 1,\
 5, 14099, 1024)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_13.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 161, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_13.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.m", "Mass of fluid [kg]", \
150.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_13.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_14.pum.vol.heatPort.Q_flow", 1, 5, 4255, 1024)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_14.port_a.h_outflow", 1, 5, 4176, 1024)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_14.pum.vol.dynBal.U", 1, 1, 162, 1024)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.mOut", "Mass of the component [kg]",\
 5.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_14.port_a.m_flow", 1, 5, 4174, 1156)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_14.port_a.p", 1, 5, 4175, 1028)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_14.port_a.h_outflow", 1, 5, 4176, 1028)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_14.port_a.m_flow", -1, 5, 4174, 1156)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_14.port_a.p", 1, 5, 4175, 1028)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_14.port_a.h_outflow", 1, 5, 4176, 1028)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_14.port_a.p", 1, 5, 4175, 1024)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_14.port_a.h_outflow", 1, 5, 4176, 1024)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_14.port_a.h_outflow", 1, 5, 4176, 1024)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_14.port_a.p", 1, 5, 4175,\
 1024)
DeclareAlias2("SimpleDistrict_14.pum.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_14.pum.vol.dynBal.medium.T", 1,\
 5, 14139, 1024)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_14.pum.vol.dynBal.U", "Internal energy of fluid [J]",\
 162, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_14.pum.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.m", "Mass of fluid [kg]", 5.0,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.fluidVolume", "Volume [m3]", \
0.005022167848884978, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_14.pum.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("SimpleDistrict_14.pum.eff.dp_in", "Prescribed pressure increase [Pa]",\
 "SimpleDistrict_14.pum.senRelPre.p_rel", 1, 5, 4301, 1024)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.use_mWat_flow", \
"Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
EndNonAlias(15)
PreNonAliasNew(16)
StartNonAlias(16)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "SimpleDistrict_14.hea.Q_flow", 1, 5, 4443, 1024)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "SimpleDistrict_14.port_b.h_outflow", 1, 5, 4178, 1024)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "SimpleDistrict_14.hea.vol.dynBal.U", 1, 1, 163, 1024)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.mOut", "Mass of the component [kg]",\
 150.0, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_14.port_a.m_flow", 1, 5, 4174, 1156)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_14.port_b.p", 1, 5, 4177, 1028)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_14.port_b.h_outflow", 1, 5, 4178, 1028)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"SimpleDistrict_14.port_a.m_flow", -1, 5, 4174, 1156)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_14.port_b.p", 1, 5, 4177, 1028)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "SimpleDistrict_14.port_b.h_outflow", 1, 5, 4178, 1028)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_14.port_b.p", 1, 5, 4177, 1024)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "SimpleDistrict_14.port_b.h_outflow", 1, 5, 4178, 1024)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "SimpleDistrict_14.port_b.h_outflow", 1, 5, 4178, 1024)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "SimpleDistrict_14.port_b.p", 1, 5, 4177,\
 1024)
DeclareAlias2("SimpleDistrict_14.hea.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "SimpleDistrict_14.hea.vol.dynBal.medium.T", 1,\
 5, 14179, 1024)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("SimpleDistrict_14.hea.vol.dynBal.U", "Internal energy of fluid [J]",\
 163, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("SimpleDistrict_14.hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.m", "Mass of fluid [kg]", \
150.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.fluidVolume", "Volume [m3]", \
0.15066503546654936, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("SimpleDistrict_14.hea.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeef.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeef.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeef.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeef.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeef.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeef.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeef.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 3, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeef.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeef.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeef.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeef.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeef.ports_b[1].h_outflow", 1, 5, 4457, 1024)
DeclareAlias2("pipeef.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipeef.vol.dynBal.U", 1, 1, 164, 1024)
DeclareVariable("pipeef.vol.dynBal.mOut", "Mass of the component [kg]", \
9.280716872383445, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeef.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipeef.port_a.m_flow", 1, 5, 4453, 1156)
DeclareAlias2("pipeef.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeef.ports_b[1].p", 1, 5, 4456, 1028)
DeclareAlias2("pipeef.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeef.ports_b[1].h_outflow", 1, 5, 4457, 1028)
DeclareAlias2("pipeef.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_4.port_a.m_flow", 1, 5, 2506, 1156)
DeclareAlias2("pipeef.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeef.ports_b[1].p", 1, 5, 4456, 1028)
DeclareAlias2("pipeef.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeef.ports_b[1].h_outflow", 1, 5, 4457, 1028)
DeclareAlias2("pipeef.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_1.port_a.m_flow", 1, 5, 2228, 1156)
DeclareAlias2("pipeef.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeef.ports_b[1].p", 1, 5, 4456, 1028)
DeclareAlias2("pipeef.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeef.ports_b[1].h_outflow", 1, 5, 4457, 1028)
DeclareVariable("pipeef.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeef.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipeef.ports_b[1].p", 1, 5, 4456, 1024)
DeclareAlias2("pipeef.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeef.ports_b[1].h_outflow", 1, 5, 4457, 1024)
DeclareAlias2("pipeef.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeef.ports_b[1].h_outflow", 1, 5, 4457, 1024)
DeclareVariable("pipeef.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeef.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipeef.ports_b[1].p", 1, 5, 4456, 1024)
DeclareAlias2("pipeef.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeef.vol.dynBal.medium.T", 1, 5, 14220, 1024)
DeclareVariable("pipeef.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeef.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeef.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeef.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeef.vol.dynBal.U", "Internal energy of fluid [J]", 164, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeef.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeef.vol.dynBal.m", "Mass of fluid [kg]", 9.280716872383445, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeef.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeef.vol.dynBal.der(U)", 1, 6, 164, 1024)
DeclareVariable("pipeef.vol.dynBal.fluidVolume", "Volume [m3]", 0.009321863578217699,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeef.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeef.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeef.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeef.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeef.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeef.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeef.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefg.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefg.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefg.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefg.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipefg.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipefg.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefg.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 4, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipefg.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefg.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefg.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipefg.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipefg.ports_b[1].h_outflow", 1, 5, 4626, 1024)
DeclareAlias2("pipefg.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipefg.vol.dynBal.U", 1, 1, 165, 1024)
DeclareVariable("pipefg.vol.dynBal.mOut", "Mass of the component [kg]", \
9.280716872383445, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipefg.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipefg.port_a.m_flow", 1, 5, 4623, 1156)
DeclareAlias2("pipefg.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeef.port_a.p", 1, 5, 4454, 1028)
DeclareAlias2("pipefg.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipefg.ports_b[1].h_outflow", 1, 5, 4626, 1028)
DeclareAlias2("pipefg.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipeef.port_a.m_flow", -1, 5, 4453, 1156)
DeclareAlias2("pipefg.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeef.port_a.p", 1, 5, 4454, 1028)
DeclareAlias2("pipefg.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipefg.ports_b[1].h_outflow", 1, 5, 4626, 1028)
DeclareAlias2("pipefg.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_7.port_a.m_flow", 1, 5, 2784, 1156)
DeclareAlias2("pipefg.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeef.port_a.p", 1, 5, 4454, 1028)
DeclareAlias2("pipefg.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipefg.ports_b[1].h_outflow", 1, 5, 4626, 1028)
DeclareAlias2("pipefg.vol.dynBal.ports[4].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_8.port_a.m_flow", 1, 5, 3062, 1156)
DeclareAlias2("pipefg.vol.dynBal.ports[4].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeef.port_a.p", 1, 5, 4454, 1028)
DeclareAlias2("pipefg.vol.dynBal.ports[4].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipefg.ports_b[1].h_outflow", 1, 5, 4626, 1028)
DeclareVariable("pipefg.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipefg.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipeef.port_a.p", 1, 5, 4454, 1024)
DeclareAlias2("pipefg.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipefg.ports_b[1].h_outflow", 1, 5, 4626, 1024)
DeclareAlias2("pipefg.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipefg.ports_b[1].h_outflow", 1, 5, 4626, 1024)
DeclareVariable("pipefg.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipefg.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipeef.port_a.p", 1, 5, 4454, 1024)
DeclareAlias2("pipefg.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipefg.vol.dynBal.medium.T", 1, 5, 14261, 1024)
DeclareVariable("pipefg.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefg.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefg.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipefg.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipefg.vol.dynBal.U", "Internal energy of fluid [J]", 165, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipefg.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipefg.vol.dynBal.m", "Mass of fluid [kg]", 9.280716872383445, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipefg.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipefg.vol.dynBal.der(U)", 1, 6, 165, 1024)
DeclareVariable("pipefg.vol.dynBal.fluidVolume", "Volume [m3]", 0.009321863578217699,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipefg.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipefg.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipefg.vol.dynBal.ports_H_flow[4]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipefg.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipefg.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefg.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefg.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefg.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegh.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegh.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegh.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegh.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipegh.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipegh.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegh.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 4, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipegh.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegh.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegh.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipegh.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipegh.ports_b[1].h_outflow", 1, 5, 4795, 1024)
DeclareAlias2("pipegh.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipegh.vol.dynBal.U", 1, 1, 166, 1024)
DeclareVariable("pipegh.vol.dynBal.mOut", "Mass of the component [kg]", \
9.280716872383445, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipegh.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipegh.port_a.m_flow", 1, 5, 4792, 1156)
DeclareAlias2("pipegh.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipefg.port_a.p", 1, 5, 4624, 1028)
DeclareAlias2("pipegh.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipegh.ports_b[1].h_outflow", 1, 5, 4795, 1028)
DeclareAlias2("pipegh.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipefg.port_a.m_flow", -1, 5, 4623, 1156)
DeclareAlias2("pipegh.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipefg.port_a.p", 1, 5, 4624, 1028)
DeclareAlias2("pipegh.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipegh.ports_b[1].h_outflow", 1, 5, 4795, 1028)
DeclareAlias2("pipegh.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_12.port_a.m_flow", 1, 5, 3618, 1156)
DeclareAlias2("pipegh.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipefg.port_a.p", 1, 5, 4624, 1028)
DeclareAlias2("pipegh.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipegh.ports_b[1].h_outflow", 1, 5, 4795, 1028)
DeclareAlias2("pipegh.vol.dynBal.ports[4].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_9.port_a.m_flow", 1, 5, 3340, 1156)
DeclareAlias2("pipegh.vol.dynBal.ports[4].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipefg.port_a.p", 1, 5, 4624, 1028)
DeclareAlias2("pipegh.vol.dynBal.ports[4].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipegh.ports_b[1].h_outflow", 1, 5, 4795, 1028)
DeclareVariable("pipegh.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipegh.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipefg.port_a.p", 1, 5, 4624, 1024)
DeclareAlias2("pipegh.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipegh.ports_b[1].h_outflow", 1, 5, 4795, 1024)
DeclareAlias2("pipegh.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipegh.ports_b[1].h_outflow", 1, 5, 4795, 1024)
DeclareVariable("pipegh.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipegh.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipefg.port_a.p", 1, 5, 4624, 1024)
DeclareAlias2("pipegh.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipegh.vol.dynBal.medium.T", 1, 5, 14303, 1024)
DeclareVariable("pipegh.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegh.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegh.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipegh.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipegh.vol.dynBal.U", "Internal energy of fluid [J]", 166, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipegh.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipegh.vol.dynBal.m", "Mass of fluid [kg]", 9.280716872383445, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipegh.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipegh.vol.dynBal.der(U)", 1, 6, 166, 1024)
DeclareVariable("pipegh.vol.dynBal.fluidVolume", "Volume [m3]", 0.009321863578217699,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipegh.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipegh.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipegh.vol.dynBal.ports_H_flow[4]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipegh.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipegh.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegh.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegh.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegh.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehi.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehi.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehi.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehi.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipehi.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipehi.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehi.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 4, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipehi.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehi.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehi.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipehi.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipehi.ports_b[1].h_outflow", 1, 5, 4964, 1024)
DeclareAlias2("pipehi.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipehi.vol.dynBal.U", 1, 1, 167, 1024)
DeclareVariable("pipehi.vol.dynBal.mOut", "Mass of the component [kg]", \
13.921075308575167, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipehi.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipehi.port_a.m_flow", 1, 5, 4961, 1156)
DeclareAlias2("pipehi.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipegh.port_a.p", 1, 5, 4793, 1028)
DeclareAlias2("pipehi.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipehi.ports_b[1].h_outflow", 1, 5, 4964, 1028)
DeclareAlias2("pipehi.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipegh.port_a.m_flow", -1, 5, 4792, 1156)
DeclareAlias2("pipehi.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipegh.port_a.p", 1, 5, 4793, 1028)
DeclareAlias2("pipehi.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipehi.ports_b[1].h_outflow", 1, 5, 4964, 1028)
DeclareAlias2("pipehi.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_13.port_a.m_flow", 1, 5, 3896, 1156)
DeclareAlias2("pipehi.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipegh.port_a.p", 1, 5, 4793, 1028)
DeclareAlias2("pipehi.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipehi.ports_b[1].h_outflow", 1, 5, 4964, 1028)
DeclareAlias2("pipehi.vol.dynBal.ports[4].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_14.port_a.m_flow", 1, 5, 4174, 1156)
DeclareAlias2("pipehi.vol.dynBal.ports[4].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipegh.port_a.p", 1, 5, 4793, 1028)
DeclareAlias2("pipehi.vol.dynBal.ports[4].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipehi.ports_b[1].h_outflow", 1, 5, 4964, 1028)
DeclareVariable("pipehi.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipehi.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipegh.port_a.p", 1, 5, 4793, 1024)
DeclareAlias2("pipehi.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipehi.ports_b[1].h_outflow", 1, 5, 4964, 1024)
DeclareAlias2("pipehi.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipehi.ports_b[1].h_outflow", 1, 5, 4964, 1024)
DeclareVariable("pipehi.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipehi.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipegh.port_a.p", 1, 5, 4793, 1024)
DeclareAlias2("pipehi.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipehi.vol.dynBal.medium.T", 1, 5, 14345, 1024)
DeclareVariable("pipehi.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehi.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehi.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipehi.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipehi.vol.dynBal.U", "Internal energy of fluid [J]", 167, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipehi.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipehi.vol.dynBal.m", "Mass of fluid [kg]", 13.921075308575167,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipehi.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipehi.vol.dynBal.der(U)", 1, 6, 167, 1024)
DeclareVariable("pipehi.vol.dynBal.fluidVolume", "Volume [m3]", 0.013982795367326547,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipehi.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipehi.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipehi.vol.dynBal.ports_H_flow[4]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipehi.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipehi.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehi.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehi.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehi.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedi.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedi.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedi.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedi.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipedi.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipedi.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedi.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 4, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipedi.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedi.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedi.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipedi.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipedi.ports_b[1].h_outflow", 1, 5, 5134, 1024)
DeclareAlias2("pipedi.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipedi.vol.dynBal.U", 1, 1, 168, 1024)
DeclareVariable("pipedi.vol.dynBal.mOut", "Mass of the component [kg]", \
13.921075308575167, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipedi.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipedi.port_a.m_flow", 1, 5, 5130, 1156)
DeclareAlias2("pipedi.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipedi.ports_b[1].p", 1, 5, 5133, 1028)
DeclareAlias2("pipedi.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipedi.ports_b[1].h_outflow", 1, 5, 5134, 1028)
DeclareAlias2("pipedi.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipedi.ports_b[1].m_flow", 1, 5, 5132, 1156)
DeclareAlias2("pipedi.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipedi.ports_b[1].p", 1, 5, 5133, 1028)
DeclareAlias2("pipedi.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipedi.ports_b[1].h_outflow", 1, 5, 5134, 1028)
DeclareAlias2("pipedi.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_15.port_a.m_flow", 1, 5, 1672, 1156)
DeclareAlias2("pipedi.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipedi.ports_b[1].p", 1, 5, 5133, 1028)
DeclareAlias2("pipedi.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipedi.ports_b[1].h_outflow", 1, 5, 5134, 1028)
DeclareAlias2("pipedi.vol.dynBal.ports[4].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_16.port_a.m_flow", 1, 5, 1394, 1156)
DeclareAlias2("pipedi.vol.dynBal.ports[4].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipedi.ports_b[1].p", 1, 5, 5133, 1028)
DeclareAlias2("pipedi.vol.dynBal.ports[4].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipedi.ports_b[1].h_outflow", 1, 5, 5134, 1028)
DeclareVariable("pipedi.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipedi.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipedi.ports_b[1].p", 1, 5, 5133, 1024)
DeclareAlias2("pipedi.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipedi.ports_b[1].h_outflow", 1, 5, 5134, 1024)
DeclareAlias2("pipedi.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipedi.ports_b[1].h_outflow", 1, 5, 5134, 1024)
DeclareVariable("pipedi.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipedi.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipedi.ports_b[1].p", 1, 5, 5133, 1024)
DeclareAlias2("pipedi.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipedi.vol.dynBal.medium.T", 1, 5, 14387, 1024)
DeclareVariable("pipedi.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedi.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedi.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipedi.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipedi.vol.dynBal.U", "Internal energy of fluid [J]", 168, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipedi.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipedi.vol.dynBal.m", "Mass of fluid [kg]", 13.921075308575167,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipedi.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipedi.vol.dynBal.der(U)", 1, 6, 168, 1024)
DeclareVariable("pipedi.vol.dynBal.fluidVolume", "Volume [m3]", 0.013982795367326547,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipedi.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipedi.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipedi.vol.dynBal.ports_H_flow[4]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipedi.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipedi.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedi.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedi.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedi.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecd.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecd.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecd.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecd.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipecd.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipecd.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecd.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 4, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipecd.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecd.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecd.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipecd.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipecd.ports_b[1].h_outflow", 1, 5, 5303, 1024)
DeclareAlias2("pipecd.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipecd.vol.dynBal.U", 1, 1, 169, 1024)
DeclareVariable("pipecd.vol.dynBal.mOut", "Mass of the component [kg]", \
9.280716872383445, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipecd.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipedi.ports_b[1].m_flow", -1, 5, 5132, 1156)
DeclareAlias2("pipecd.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipecd.ports_b[1].p", 1, 5, 5302, 1028)
DeclareAlias2("pipecd.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipecd.ports_b[1].h_outflow", 1, 5, 5303, 1028)
DeclareAlias2("pipecd.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipecd.ports_b[1].m_flow", 1, 5, 5301, 1156)
DeclareAlias2("pipecd.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipecd.ports_b[1].p", 1, 5, 5302, 1028)
DeclareAlias2("pipecd.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipecd.ports_b[1].h_outflow", 1, 5, 5303, 1028)
DeclareAlias2("pipecd.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_11.port_a.m_flow", 1, 5, 1950, 1156)
DeclareAlias2("pipecd.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipecd.ports_b[1].p", 1, 5, 5302, 1028)
DeclareAlias2("pipecd.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipecd.ports_b[1].h_outflow", 1, 5, 5303, 1028)
DeclareAlias2("pipecd.vol.dynBal.ports[4].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_10.port_a.m_flow", 1, 5, 1116, 1156)
DeclareAlias2("pipecd.vol.dynBal.ports[4].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipecd.ports_b[1].p", 1, 5, 5302, 1028)
DeclareAlias2("pipecd.vol.dynBal.ports[4].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipecd.ports_b[1].h_outflow", 1, 5, 5303, 1028)
DeclareVariable("pipecd.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipecd.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipecd.ports_b[1].p", 1, 5, 5302, 1024)
DeclareAlias2("pipecd.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipecd.ports_b[1].h_outflow", 1, 5, 5303, 1024)
DeclareAlias2("pipecd.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipecd.ports_b[1].h_outflow", 1, 5, 5303, 1024)
DeclareVariable("pipecd.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipecd.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipecd.ports_b[1].p", 1, 5, 5302, 1024)
DeclareAlias2("pipecd.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipecd.vol.dynBal.medium.T", 1, 5, 14429, 1024)
DeclareVariable("pipecd.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecd.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecd.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipecd.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipecd.vol.dynBal.U", "Internal energy of fluid [J]", 169, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipecd.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipecd.vol.dynBal.m", "Mass of fluid [kg]", 9.280716872383445, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipecd.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipecd.vol.dynBal.der(U)", 1, 6, 169, 1024)
DeclareVariable("pipecd.vol.dynBal.fluidVolume", "Volume [m3]", 0.009321863578217699,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipecd.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipecd.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipecd.vol.dynBal.ports_H_flow[4]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipecd.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipecd.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecd.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecd.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecd.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipebc.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipebc.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipebc.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipebc.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipebc.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipebc.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebc.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 4, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipebc.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebc.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebc.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipebc.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipebc.ports_b[1].h_outflow", 1, 5, 5472, 1024)
DeclareAlias2("pipebc.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipebc.vol.dynBal.U", 1, 1, 170, 1024)
DeclareVariable("pipebc.vol.dynBal.mOut", "Mass of the component [kg]", \
9.280716872383445, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipebc.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipecd.ports_b[1].m_flow", -1, 5, 5301, 1156)
DeclareAlias2("pipebc.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipebc.ports_b[1].p", 1, 5, 5471, 1028)
DeclareAlias2("pipebc.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipebc.ports_b[1].h_outflow", 1, 5, 5472, 1028)
DeclareAlias2("pipebc.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipebc.ports_b[1].m_flow", 1, 5, 5470, 1156)
DeclareAlias2("pipebc.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipebc.ports_b[1].p", 1, 5, 5471, 1028)
DeclareAlias2("pipebc.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipebc.ports_b[1].h_outflow", 1, 5, 5472, 1028)
DeclareAlias2("pipebc.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_6.port_a.m_flow", 1, 5, 838, 1156)
DeclareAlias2("pipebc.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipebc.ports_b[1].p", 1, 5, 5471, 1028)
DeclareAlias2("pipebc.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipebc.ports_b[1].h_outflow", 1, 5, 5472, 1028)
DeclareAlias2("pipebc.vol.dynBal.ports[4].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_5.port_a.m_flow", 1, 5, 560, 1156)
DeclareAlias2("pipebc.vol.dynBal.ports[4].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipebc.ports_b[1].p", 1, 5, 5471, 1028)
DeclareAlias2("pipebc.vol.dynBal.ports[4].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipebc.ports_b[1].h_outflow", 1, 5, 5472, 1028)
DeclareVariable("pipebc.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipebc.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipebc.ports_b[1].p", 1, 5, 5471, 1024)
DeclareAlias2("pipebc.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipebc.ports_b[1].h_outflow", 1, 5, 5472, 1024)
DeclareAlias2("pipebc.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipebc.ports_b[1].h_outflow", 1, 5, 5472, 1024)
DeclareVariable("pipebc.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipebc.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipebc.ports_b[1].p", 1, 5, 5471, 1024)
DeclareAlias2("pipebc.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipebc.vol.dynBal.medium.T", 1, 5, 14471, 1024)
DeclareVariable("pipebc.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebc.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebc.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipebc.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipebc.vol.dynBal.U", "Internal energy of fluid [J]", 170, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipebc.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipebc.vol.dynBal.m", "Mass of fluid [kg]", 9.280716872383445, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipebc.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipebc.vol.dynBal.der(U)", 1, 6, 170, 1024)
DeclareVariable("pipebc.vol.dynBal.fluidVolume", "Volume [m3]", 0.009321863578217699,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipebc.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipebc.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipebc.vol.dynBal.ports_H_flow[4]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipebc.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipebc.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipebc.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebc.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebc.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeab.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeab.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeab.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeab.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeab.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeab.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeab.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 3, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeab.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeab.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeab.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeab.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeab.ports_b[1].h_outflow", 1, 5, 5640, 1024)
DeclareAlias2("pipeab.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipeab.vol.dynBal.U", 1, 1, 171, 1024)
DeclareVariable("pipeab.vol.dynBal.mOut", "Mass of the component [kg]", \
9.280716872383445, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeab.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipebc.ports_b[1].m_flow", -1, 5, 5470, 1156)
DeclareAlias2("pipeab.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeab.ports_b[1].p", 1, 5, 5639, 1028)
DeclareAlias2("pipeab.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeab.ports_b[1].h_outflow", 1, 5, 5640, 1028)
DeclareAlias2("pipeab.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_3.port_a.m_flow", 1, 5, 282, 1156)
DeclareAlias2("pipeab.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeab.ports_b[1].p", 1, 5, 5639, 1028)
DeclareAlias2("pipeab.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeab.ports_b[1].h_outflow", 1, 5, 5640, 1028)
DeclareAlias2("pipeab.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_2.port_a.m_flow", 1, 5, 2, 1156)
DeclareAlias2("pipeab.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeab.ports_b[1].p", 1, 5, 5639, 1028)
DeclareAlias2("pipeab.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeab.ports_b[1].h_outflow", 1, 5, 5640, 1028)
DeclareVariable("pipeab.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeab.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipeab.ports_b[1].p", 1, 5, 5639, 1024)
DeclareAlias2("pipeab.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeab.ports_b[1].h_outflow", 1, 5, 5640, 1024)
DeclareAlias2("pipeab.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeab.ports_b[1].h_outflow", 1, 5, 5640, 1024)
DeclareVariable("pipeab.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeab.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipeab.ports_b[1].p", 1, 5, 5639, 1024)
DeclareAlias2("pipeab.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeab.vol.dynBal.medium.T", 1, 5, 14513, 1024)
DeclareVariable("pipeab.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeab.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeab.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeab.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeab.vol.dynBal.U", "Internal energy of fluid [J]", 171, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeab.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeab.vol.dynBal.m", "Mass of fluid [kg]", 9.280716872383445, \
0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeab.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeab.vol.dynBal.der(U)", 1, 6, 171, 1024)
DeclareVariable("pipeab.vol.dynBal.fluidVolume", "Volume [m3]", 0.009321863578217699,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeab.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeab.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeab.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeab.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeab.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeab.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeab.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD16d.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD16d.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD16d.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD16d.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD16d.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD16d.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD16d.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD16d.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD16d.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD16d.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD16d.ports_b[1].h_outflow", 1, 5, 5807, 1024)
DeclareAlias2("pipeSD16d.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD16d.vol.dynBal.U", 1, 1, 172, 1024)
DeclareVariable("pipeSD16d.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD16d.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_16.port_a.m_flow", -1, 5, 1394, 1156)
DeclareAlias2("pipeSD16d.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_16.port_b.p", 1, 5, 1397, 1028)
DeclareAlias2("pipeSD16d.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD16d.ports_b[1].h_outflow", 1, 5, 5807, 1028)
DeclareAlias2("pipeSD16d.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_16.port_a.m_flow", 1, 5, 1394, 1156)
DeclareAlias2("pipeSD16d.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_16.port_b.p", 1, 5, 1397, 1028)
DeclareAlias2("pipeSD16d.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD16d.ports_b[1].h_outflow", 1, 5, 5807, 1028)
DeclareVariable("pipeSD16d.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD16d.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_16.port_b.p", 1, 5, 1397, 1024)
DeclareAlias2("pipeSD16d.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD16d.ports_b[1].h_outflow", 1, 5, 5807, 1024)
DeclareAlias2("pipeSD16d.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD16d.ports_b[1].h_outflow", 1, 5, 5807, 1024)
DeclareVariable("pipeSD16d.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD16d.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_16.port_b.p", 1, 5, 1397, 1024)
DeclareAlias2("pipeSD16d.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD16d.vol.dynBal.medium.T", 1, 5, 14554, 1024)
DeclareVariable("pipeSD16d.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD16d.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD16d.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD16d.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD16d.vol.dynBal.U", "Internal energy of fluid [J]", 172, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD16d.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD16d.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD16d.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD16d.vol.dynBal.der(U)", 1, 6, 172, 1024)
DeclareVariable("pipeSD16d.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD16d.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD16d.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD16d.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD16d.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD16d.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD1e.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD1e.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD1e.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD1e.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD1e.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD1e.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD1e.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD1e.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD1e.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD1e.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD1e.ports_b[1].h_outflow", 1, 5, 5974, 1024)
DeclareAlias2("pipeSD1e.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD1e.vol.dynBal.U", 1, 1, 173, 1024)
DeclareVariable("pipeSD1e.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD1e.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_1.port_a.m_flow", -1, 5, 2228, 1156)
DeclareAlias2("pipeSD1e.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_1.port_b.p", 1, 5, 2231, 1028)
DeclareAlias2("pipeSD1e.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD1e.ports_b[1].h_outflow", 1, 5, 5974, 1028)
DeclareAlias2("pipeSD1e.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_1.port_a.m_flow", 1, 5, 2228, 1156)
DeclareAlias2("pipeSD1e.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_1.port_b.p", 1, 5, 2231, 1028)
DeclareAlias2("pipeSD1e.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD1e.ports_b[1].h_outflow", 1, 5, 5974, 1028)
DeclareVariable("pipeSD1e.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD1e.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_1.port_b.p", 1, 5, 2231, 1024)
DeclareAlias2("pipeSD1e.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD1e.ports_b[1].h_outflow", 1, 5, 5974, 1024)
DeclareAlias2("pipeSD1e.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD1e.ports_b[1].h_outflow", 1, 5, 5974, 1024)
DeclareVariable("pipeSD1e.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD1e.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_1.port_b.p", 1, 5, 2231, 1024)
DeclareAlias2("pipeSD1e.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD1e.vol.dynBal.medium.T", 1, 5, 14594, 1024)
DeclareVariable("pipeSD1e.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD1e.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD1e.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD1e.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD1e.vol.dynBal.U", "Internal energy of fluid [J]", 173, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD1e.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD1e.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD1e.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD1e.vol.dynBal.der(U)", 1, 6, 173, 1024)
DeclareVariable("pipeSD1e.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD1e.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD1e.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD1e.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD1e.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD1e.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD8f.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD8f.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD8f.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD8f.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD8f.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD8f.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD8f.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD8f.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD8f.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD8f.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD8f.ports_b[1].h_outflow", 1, 5, 6141, 1024)
DeclareAlias2("pipeSD8f.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD8f.vol.dynBal.U", 1, 1, 174, 1024)
DeclareVariable("pipeSD8f.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD8f.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_8.port_a.m_flow", -1, 5, 3062, 1156)
DeclareAlias2("pipeSD8f.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_8.port_b.p", 1, 5, 3065, 1028)
DeclareAlias2("pipeSD8f.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD8f.ports_b[1].h_outflow", 1, 5, 6141, 1028)
DeclareAlias2("pipeSD8f.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_8.port_a.m_flow", 1, 5, 3062, 1156)
DeclareAlias2("pipeSD8f.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_8.port_b.p", 1, 5, 3065, 1028)
DeclareAlias2("pipeSD8f.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD8f.ports_b[1].h_outflow", 1, 5, 6141, 1028)
DeclareVariable("pipeSD8f.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD8f.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_8.port_b.p", 1, 5, 3065, 1024)
DeclareAlias2("pipeSD8f.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD8f.ports_b[1].h_outflow", 1, 5, 6141, 1024)
DeclareAlias2("pipeSD8f.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD8f.ports_b[1].h_outflow", 1, 5, 6141, 1024)
DeclareVariable("pipeSD8f.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD8f.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_8.port_b.p", 1, 5, 3065, 1024)
DeclareAlias2("pipeSD8f.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD8f.vol.dynBal.medium.T", 1, 5, 14634, 1024)
DeclareVariable("pipeSD8f.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD8f.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD8f.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD8f.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD8f.vol.dynBal.U", "Internal energy of fluid [J]", 174, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD8f.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD8f.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD8f.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD8f.vol.dynBal.der(U)", 1, 6, 174, 1024)
DeclareVariable("pipeSD8f.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD8f.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD8f.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD8f.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD8f.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD8f.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD9g.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD9g.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD9g.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD9g.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD9g.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD9g.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD9g.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD9g.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD9g.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD9g.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD9g.ports_b[1].h_outflow", 1, 5, 6308, 1024)
DeclareAlias2("pipeSD9g.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD9g.vol.dynBal.U", 1, 1, 175, 1024)
DeclareVariable("pipeSD9g.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD9g.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_9.port_a.m_flow", -1, 5, 3340, 1156)
DeclareAlias2("pipeSD9g.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_9.port_b.p", 1, 5, 3343, 1028)
DeclareAlias2("pipeSD9g.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD9g.ports_b[1].h_outflow", 1, 5, 6308, 1028)
DeclareAlias2("pipeSD9g.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_9.port_a.m_flow", 1, 5, 3340, 1156)
DeclareAlias2("pipeSD9g.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_9.port_b.p", 1, 5, 3343, 1028)
DeclareAlias2("pipeSD9g.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD9g.ports_b[1].h_outflow", 1, 5, 6308, 1028)
DeclareVariable("pipeSD9g.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD9g.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_9.port_b.p", 1, 5, 3343, 1024)
DeclareAlias2("pipeSD9g.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD9g.ports_b[1].h_outflow", 1, 5, 6308, 1024)
DeclareAlias2("pipeSD9g.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD9g.ports_b[1].h_outflow", 1, 5, 6308, 1024)
DeclareVariable("pipeSD9g.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD9g.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_9.port_b.p", 1, 5, 3343, 1024)
DeclareAlias2("pipeSD9g.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD9g.vol.dynBal.medium.T", 1, 5, 14674, 1024)
DeclareVariable("pipeSD9g.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD9g.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD9g.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD9g.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD9g.vol.dynBal.U", "Internal energy of fluid [J]", 175, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD9g.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD9g.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD9g.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD9g.vol.dynBal.der(U)", 1, 6, 175, 1024)
DeclareVariable("pipeSD9g.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD9g.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD9g.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD9g.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD9g.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD9g.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD14h.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD14h.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD14h.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD14h.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD14h.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD14h.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD14h.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD14h.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD14h.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD14h.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD14h.ports_b[1].h_outflow", 1, 5, 6475, 1024)
DeclareAlias2("pipeSD14h.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD14h.vol.dynBal.U", 1, 1, 176, 1024)
DeclareVariable("pipeSD14h.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD14h.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_14.port_a.m_flow", -1, 5, 4174, 1156)
DeclareAlias2("pipeSD14h.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_14.port_b.p", 1, 5, 4177, 1028)
DeclareAlias2("pipeSD14h.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD14h.ports_b[1].h_outflow", 1, 5, 6475, 1028)
DeclareAlias2("pipeSD14h.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_14.port_a.m_flow", 1, 5, 4174, 1156)
DeclareAlias2("pipeSD14h.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_14.port_b.p", 1, 5, 4177, 1028)
DeclareAlias2("pipeSD14h.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD14h.ports_b[1].h_outflow", 1, 5, 6475, 1028)
DeclareVariable("pipeSD14h.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD14h.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_14.port_b.p", 1, 5, 4177, 1024)
DeclareAlias2("pipeSD14h.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD14h.ports_b[1].h_outflow", 1, 5, 6475, 1024)
DeclareAlias2("pipeSD14h.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD14h.ports_b[1].h_outflow", 1, 5, 6475, 1024)
DeclareVariable("pipeSD14h.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD14h.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_14.port_b.p", 1, 5, 4177, 1024)
DeclareAlias2("pipeSD14h.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD14h.vol.dynBal.medium.T", 1, 5, 14714, 1024)
DeclareVariable("pipeSD14h.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD14h.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD14h.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD14h.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD14h.vol.dynBal.U", "Internal energy of fluid [J]", 176, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD14h.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD14h.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD14h.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD14h.vol.dynBal.der(U)", 1, 6, 176, 1024)
DeclareVariable("pipeSD14h.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD14h.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD14h.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD14h.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD14h.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD14h.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD4e.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD4e.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD4e.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD4e.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD4e.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD4e.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD4e.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD4e.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD4e.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD4e.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD4e.ports_b[1].h_outflow", 1, 5, 6642, 1024)
DeclareAlias2("pipeSD4e.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD4e.vol.dynBal.U", 1, 1, 177, 1024)
DeclareVariable("pipeSD4e.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD4e.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_4.port_a.m_flow", -1, 5, 2506, 1156)
DeclareAlias2("pipeSD4e.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_4.port_b.p", 1, 5, 2509, 1028)
DeclareAlias2("pipeSD4e.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD4e.ports_b[1].h_outflow", 1, 5, 6642, 1028)
DeclareAlias2("pipeSD4e.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_4.port_a.m_flow", 1, 5, 2506, 1156)
DeclareAlias2("pipeSD4e.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_4.port_b.p", 1, 5, 2509, 1028)
DeclareAlias2("pipeSD4e.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD4e.ports_b[1].h_outflow", 1, 5, 6642, 1028)
DeclareVariable("pipeSD4e.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD4e.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_4.port_b.p", 1, 5, 2509, 1024)
DeclareAlias2("pipeSD4e.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD4e.ports_b[1].h_outflow", 1, 5, 6642, 1024)
DeclareAlias2("pipeSD4e.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD4e.ports_b[1].h_outflow", 1, 5, 6642, 1024)
DeclareVariable("pipeSD4e.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD4e.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_4.port_b.p", 1, 5, 2509, 1024)
DeclareAlias2("pipeSD4e.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD4e.vol.dynBal.medium.T", 1, 5, 14754, 1024)
DeclareVariable("pipeSD4e.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD4e.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD4e.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD4e.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD4e.vol.dynBal.U", "Internal energy of fluid [J]", 177, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD4e.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD4e.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD4e.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD4e.vol.dynBal.der(U)", 1, 6, 177, 1024)
DeclareVariable("pipeSD4e.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD4e.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD4e.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD4e.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD4e.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD4e.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD7f.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD7f.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD7f.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD7f.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD7f.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD7f.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD7f.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD7f.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD7f.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD7f.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD7f.ports_b[1].h_outflow", 1, 5, 6809, 1024)
DeclareAlias2("pipeSD7f.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD7f.vol.dynBal.U", 1, 1, 178, 1024)
DeclareVariable("pipeSD7f.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD7f.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_7.port_a.m_flow", -1, 5, 2784, 1156)
DeclareAlias2("pipeSD7f.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_7.port_b.p", 1, 5, 2787, 1028)
DeclareAlias2("pipeSD7f.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD7f.ports_b[1].h_outflow", 1, 5, 6809, 1028)
DeclareAlias2("pipeSD7f.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_7.port_a.m_flow", 1, 5, 2784, 1156)
DeclareAlias2("pipeSD7f.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_7.port_b.p", 1, 5, 2787, 1028)
DeclareAlias2("pipeSD7f.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD7f.ports_b[1].h_outflow", 1, 5, 6809, 1028)
DeclareVariable("pipeSD7f.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD7f.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_7.port_b.p", 1, 5, 2787, 1024)
DeclareAlias2("pipeSD7f.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD7f.ports_b[1].h_outflow", 1, 5, 6809, 1024)
DeclareAlias2("pipeSD7f.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD7f.ports_b[1].h_outflow", 1, 5, 6809, 1024)
DeclareVariable("pipeSD7f.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD7f.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_7.port_b.p", 1, 5, 2787, 1024)
DeclareAlias2("pipeSD7f.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD7f.vol.dynBal.medium.T", 1, 5, 14794, 1024)
DeclareVariable("pipeSD7f.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD7f.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD7f.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD7f.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD7f.vol.dynBal.U", "Internal energy of fluid [J]", 178, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD7f.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD7f.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD7f.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD7f.vol.dynBal.der(U)", 1, 6, 178, 1024)
DeclareVariable("pipeSD7f.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD7f.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD7f.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD7f.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD7f.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD7f.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD12g.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD12g.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD12g.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD12g.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD12g.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD12g.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD12g.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD12g.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD12g.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD12g.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD12g.ports_b[1].h_outflow", 1, 5, 6976, 1024)
DeclareAlias2("pipeSD12g.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD12g.vol.dynBal.U", 1, 1, 179, 1024)
DeclareVariable("pipeSD12g.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD12g.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_12.port_a.m_flow", -1, 5, 3618, 1156)
DeclareAlias2("pipeSD12g.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_12.port_b.p", 1, 5, 3621, 1028)
DeclareAlias2("pipeSD12g.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD12g.ports_b[1].h_outflow", 1, 5, 6976, 1028)
DeclareAlias2("pipeSD12g.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_12.port_a.m_flow", 1, 5, 3618, 1156)
DeclareAlias2("pipeSD12g.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_12.port_b.p", 1, 5, 3621, 1028)
DeclareAlias2("pipeSD12g.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD12g.ports_b[1].h_outflow", 1, 5, 6976, 1028)
DeclareVariable("pipeSD12g.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD12g.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_12.port_b.p", 1, 5, 3621, 1024)
DeclareAlias2("pipeSD12g.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD12g.ports_b[1].h_outflow", 1, 5, 6976, 1024)
DeclareAlias2("pipeSD12g.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD12g.ports_b[1].h_outflow", 1, 5, 6976, 1024)
DeclareVariable("pipeSD12g.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD12g.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_12.port_b.p", 1, 5, 3621, 1024)
DeclareAlias2("pipeSD12g.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD12g.vol.dynBal.medium.T", 1, 5, 14834, 1024)
DeclareVariable("pipeSD12g.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD12g.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD12g.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD12g.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD12g.vol.dynBal.U", "Internal energy of fluid [J]", 179, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD12g.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD12g.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD12g.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD12g.vol.dynBal.der(U)", 1, 6, 179, 1024)
DeclareVariable("pipeSD12g.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD12g.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD12g.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD12g.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD12g.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD12g.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD13h.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD13h.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD13h.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD13h.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD13h.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD13h.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD13h.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD13h.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD13h.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD13h.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD13h.ports_b[1].h_outflow", 1, 5, 7143, 1024)
DeclareAlias2("pipeSD13h.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD13h.vol.dynBal.U", 1, 1, 180, 1024)
DeclareVariable("pipeSD13h.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD13h.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_13.port_a.m_flow", -1, 5, 3896, 1156)
DeclareAlias2("pipeSD13h.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_13.port_b.p", 1, 5, 3899, 1028)
DeclareAlias2("pipeSD13h.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD13h.ports_b[1].h_outflow", 1, 5, 7143, 1028)
DeclareAlias2("pipeSD13h.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_13.port_a.m_flow", 1, 5, 3896, 1156)
DeclareAlias2("pipeSD13h.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_13.port_b.p", 1, 5, 3899, 1028)
DeclareAlias2("pipeSD13h.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD13h.ports_b[1].h_outflow", 1, 5, 7143, 1028)
DeclareVariable("pipeSD13h.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD13h.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_13.port_b.p", 1, 5, 3899, 1024)
DeclareAlias2("pipeSD13h.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD13h.ports_b[1].h_outflow", 1, 5, 7143, 1024)
DeclareAlias2("pipeSD13h.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD13h.ports_b[1].h_outflow", 1, 5, 7143, 1024)
DeclareVariable("pipeSD13h.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD13h.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_13.port_b.p", 1, 5, 3899, 1024)
DeclareAlias2("pipeSD13h.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD13h.vol.dynBal.medium.T", 1, 5, 14874, 1024)
DeclareVariable("pipeSD13h.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD13h.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD13h.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD13h.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD13h.vol.dynBal.U", "Internal energy of fluid [J]", 180, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD13h.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD13h.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD13h.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD13h.vol.dynBal.der(U)", 1, 6, 180, 1024)
DeclareVariable("pipeSD13h.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD13h.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD13h.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD13h.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD13h.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD13h.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD10c.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD10c.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD10c.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD10c.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD10c.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD10c.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD10c.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD10c.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD10c.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD10c.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD10c.ports_b[1].h_outflow", 1, 5, 7310, 1024)
DeclareAlias2("pipeSD10c.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD10c.vol.dynBal.U", 1, 1, 181, 1024)
DeclareVariable("pipeSD10c.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD10c.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_10.port_a.m_flow", -1, 5, 1116, 1156)
DeclareAlias2("pipeSD10c.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_10.port_b.p", 1, 5, 1119, 1028)
DeclareAlias2("pipeSD10c.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD10c.ports_b[1].h_outflow", 1, 5, 7310, 1028)
DeclareAlias2("pipeSD10c.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_10.port_a.m_flow", 1, 5, 1116, 1156)
DeclareAlias2("pipeSD10c.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_10.port_b.p", 1, 5, 1119, 1028)
DeclareAlias2("pipeSD10c.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD10c.ports_b[1].h_outflow", 1, 5, 7310, 1028)
DeclareVariable("pipeSD10c.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD10c.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_10.port_b.p", 1, 5, 1119, 1024)
DeclareAlias2("pipeSD10c.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD10c.ports_b[1].h_outflow", 1, 5, 7310, 1024)
DeclareAlias2("pipeSD10c.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD10c.ports_b[1].h_outflow", 1, 5, 7310, 1024)
DeclareVariable("pipeSD10c.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD10c.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_10.port_b.p", 1, 5, 1119, 1024)
DeclareAlias2("pipeSD10c.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD10c.vol.dynBal.medium.T", 1, 5, 14914, 1024)
DeclareVariable("pipeSD10c.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD10c.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD10c.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD10c.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD10c.vol.dynBal.U", "Internal energy of fluid [J]", 181, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD10c.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD10c.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD10c.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD10c.vol.dynBal.der(U)", 1, 6, 181, 1024)
DeclareVariable("pipeSD10c.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD10c.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD10c.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD10c.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD10c.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD10c.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD5b.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD5b.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD5b.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD5b.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD5b.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD5b.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD5b.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD5b.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD5b.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD5b.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD5b.ports_b[1].h_outflow", 1, 5, 7477, 1024)
DeclareAlias2("pipeSD5b.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD5b.vol.dynBal.U", 1, 1, 182, 1024)
DeclareVariable("pipeSD5b.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD5b.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_5.port_a.m_flow", -1, 5, 560, 1156)
DeclareAlias2("pipeSD5b.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_5.port_b.p", 1, 5, 563, 1028)
DeclareAlias2("pipeSD5b.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD5b.ports_b[1].h_outflow", 1, 5, 7477, 1028)
DeclareAlias2("pipeSD5b.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_5.port_a.m_flow", 1, 5, 560, 1156)
DeclareAlias2("pipeSD5b.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_5.port_b.p", 1, 5, 563, 1028)
DeclareAlias2("pipeSD5b.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD5b.ports_b[1].h_outflow", 1, 5, 7477, 1028)
DeclareVariable("pipeSD5b.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD5b.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_5.port_b.p", 1, 5, 563, 1024)
DeclareAlias2("pipeSD5b.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD5b.ports_b[1].h_outflow", 1, 5, 7477, 1024)
DeclareAlias2("pipeSD5b.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD5b.ports_b[1].h_outflow", 1, 5, 7477, 1024)
DeclareVariable("pipeSD5b.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD5b.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_5.port_b.p", 1, 5, 563, 1024)
DeclareAlias2("pipeSD5b.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD5b.vol.dynBal.medium.T", 1, 5, 14954, 1024)
DeclareVariable("pipeSD5b.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD5b.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD5b.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD5b.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD5b.vol.dynBal.U", "Internal energy of fluid [J]", 182, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD5b.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD5b.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD5b.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD5b.vol.dynBal.der(U)", 1, 6, 182, 1024)
DeclareVariable("pipeSD5b.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD5b.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD5b.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD5b.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD5b.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD5b.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD2a.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD2a.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD2a.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD2a.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD2a.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD2a.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD2a.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD2a.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD2a.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD2a.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD2a.ports_b[1].h_outflow", 1, 5, 7644, 1024)
DeclareAlias2("pipeSD2a.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD2a.vol.dynBal.U", 1, 1, 183, 1024)
DeclareVariable("pipeSD2a.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD2a.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_2.port_a.m_flow", -1, 5, 2, 1156)
DeclareAlias2("pipeSD2a.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_2.port_b.p", 1, 5, 5, 1028)
DeclareAlias2("pipeSD2a.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD2a.ports_b[1].h_outflow", 1, 5, 7644, 1028)
DeclareAlias2("pipeSD2a.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_2.port_a.m_flow", 1, 5, 2, 1156)
DeclareAlias2("pipeSD2a.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_2.port_b.p", 1, 5, 5, 1028)
DeclareAlias2("pipeSD2a.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD2a.ports_b[1].h_outflow", 1, 5, 7644, 1028)
DeclareVariable("pipeSD2a.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD2a.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_2.port_b.p", 1, 5, 5, 1024)
DeclareAlias2("pipeSD2a.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD2a.ports_b[1].h_outflow", 1, 5, 7644, 1024)
DeclareAlias2("pipeSD2a.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD2a.ports_b[1].h_outflow", 1, 5, 7644, 1024)
DeclareVariable("pipeSD2a.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD2a.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_2.port_b.p", 1, 5, 5, 1024)
DeclareAlias2("pipeSD2a.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD2a.vol.dynBal.medium.T", 1, 5, 14994, 1024)
DeclareVariable("pipeSD2a.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD2a.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD2a.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD2a.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD2a.vol.dynBal.U", "Internal energy of fluid [J]", 183, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD2a.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD2a.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD2a.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD2a.vol.dynBal.der(U)", 1, 6, 183, 1024)
DeclareVariable("pipeSD2a.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD2a.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD2a.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD2a.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD2a.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD2a.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD3a.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD3a.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD3a.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD3a.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD3a.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD3a.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD3a.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD3a.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD3a.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD3a.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD3a.ports_b[1].h_outflow", 1, 5, 7811, 1024)
DeclareAlias2("pipeSD3a.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD3a.vol.dynBal.U", 1, 1, 184, 1024)
DeclareVariable("pipeSD3a.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD3a.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_3.port_a.m_flow", -1, 5, 282, 1156)
DeclareAlias2("pipeSD3a.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_3.port_b.p", 1, 5, 285, 1028)
DeclareAlias2("pipeSD3a.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD3a.ports_b[1].h_outflow", 1, 5, 7811, 1028)
DeclareAlias2("pipeSD3a.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_3.port_a.m_flow", 1, 5, 282, 1156)
DeclareAlias2("pipeSD3a.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_3.port_b.p", 1, 5, 285, 1028)
DeclareAlias2("pipeSD3a.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD3a.ports_b[1].h_outflow", 1, 5, 7811, 1028)
DeclareVariable("pipeSD3a.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD3a.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_3.port_b.p", 1, 5, 285, 1024)
DeclareAlias2("pipeSD3a.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD3a.ports_b[1].h_outflow", 1, 5, 7811, 1024)
DeclareAlias2("pipeSD3a.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD3a.ports_b[1].h_outflow", 1, 5, 7811, 1024)
DeclareVariable("pipeSD3a.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD3a.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_3.port_b.p", 1, 5, 285, 1024)
DeclareAlias2("pipeSD3a.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD3a.vol.dynBal.medium.T", 1, 5, 15034, 1024)
DeclareVariable("pipeSD3a.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD3a.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD3a.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD3a.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD3a.vol.dynBal.U", "Internal energy of fluid [J]", 184, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD3a.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD3a.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD3a.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD3a.vol.dynBal.der(U)", 1, 6, 184, 1024)
DeclareVariable("pipeSD3a.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD3a.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD3a.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD3a.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD3a.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD3a.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD6b.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD6b.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD6b.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD6b.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD6b.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD6b.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD6b.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD6b.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD6b.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD6b.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD6b.ports_b[1].h_outflow", 1, 5, 7978, 1024)
DeclareAlias2("pipeSD6b.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD6b.vol.dynBal.U", 1, 1, 185, 1024)
DeclareVariable("pipeSD6b.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD6b.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_6.port_a.m_flow", -1, 5, 838, 1156)
DeclareAlias2("pipeSD6b.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_6.port_b.p", 1, 5, 841, 1028)
DeclareAlias2("pipeSD6b.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD6b.ports_b[1].h_outflow", 1, 5, 7978, 1028)
DeclareAlias2("pipeSD6b.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_6.port_a.m_flow", 1, 5, 838, 1156)
DeclareAlias2("pipeSD6b.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_6.port_b.p", 1, 5, 841, 1028)
DeclareAlias2("pipeSD6b.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD6b.ports_b[1].h_outflow", 1, 5, 7978, 1028)
DeclareVariable("pipeSD6b.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD6b.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_6.port_b.p", 1, 5, 841, 1024)
DeclareAlias2("pipeSD6b.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD6b.ports_b[1].h_outflow", 1, 5, 7978, 1024)
DeclareAlias2("pipeSD6b.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD6b.ports_b[1].h_outflow", 1, 5, 7978, 1024)
DeclareVariable("pipeSD6b.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD6b.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_6.port_b.p", 1, 5, 841, 1024)
DeclareAlias2("pipeSD6b.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD6b.vol.dynBal.medium.T", 1, 5, 15074, 1024)
DeclareVariable("pipeSD6b.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD6b.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD6b.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD6b.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD6b.vol.dynBal.U", "Internal energy of fluid [J]", 185, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD6b.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD6b.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD6b.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD6b.vol.dynBal.der(U)", 1, 6, 185, 1024)
DeclareVariable("pipeSD6b.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD6b.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD6b.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD6b.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD6b.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD6b.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD11c.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD11c.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD11c.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD11c.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD11c.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD11c.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD11c.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD11c.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD11c.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD11c.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD11c.ports_b[1].h_outflow", 1, 5, 8145, 1024)
DeclareAlias2("pipeSD11c.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD11c.vol.dynBal.U", 1, 1, 186, 1024)
DeclareVariable("pipeSD11c.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD11c.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_11.port_a.m_flow", -1, 5, 1950, 1156)
DeclareAlias2("pipeSD11c.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_11.port_b.p", 1, 5, 1953, 1028)
DeclareAlias2("pipeSD11c.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD11c.ports_b[1].h_outflow", 1, 5, 8145, 1028)
DeclareAlias2("pipeSD11c.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_11.port_a.m_flow", 1, 5, 1950, 1156)
DeclareAlias2("pipeSD11c.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_11.port_b.p", 1, 5, 1953, 1028)
DeclareAlias2("pipeSD11c.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD11c.ports_b[1].h_outflow", 1, 5, 8145, 1028)
DeclareVariable("pipeSD11c.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD11c.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_11.port_b.p", 1, 5, 1953, 1024)
DeclareAlias2("pipeSD11c.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD11c.ports_b[1].h_outflow", 1, 5, 8145, 1024)
DeclareAlias2("pipeSD11c.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD11c.ports_b[1].h_outflow", 1, 5, 8145, 1024)
DeclareVariable("pipeSD11c.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD11c.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_11.port_b.p", 1, 5, 1953, 1024)
DeclareAlias2("pipeSD11c.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD11c.vol.dynBal.medium.T", 1, 5, 15114, 1024)
DeclareVariable("pipeSD11c.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD11c.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD11c.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD11c.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD11c.vol.dynBal.U", "Internal energy of fluid [J]", 186, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD11c.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD11c.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD11c.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD11c.vol.dynBal.der(U)", 1, 6, 186, 1024)
DeclareVariable("pipeSD11c.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD11c.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD11c.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD11c.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD11c.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD11c.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD15d.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD15d.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD15d.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeSD15d.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeSD15d.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD15d.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeSD15d.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD15d.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD15d.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD15d.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeSD15d.ports_b[1].h_outflow", 1, 5, 8312, 1024)
DeclareAlias2("pipeSD15d.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeSD15d.vol.dynBal.U", 1, 1, 187, 1024)
DeclareVariable("pipeSD15d.vol.dynBal.mOut", "Mass of the component [kg]", \
4.640358436191723, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD15d.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_15.port_a.m_flow", -1, 5, 1672, 1156)
DeclareAlias2("pipeSD15d.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_15.port_b.p", 1, 5, 1675, 1028)
DeclareAlias2("pipeSD15d.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD15d.ports_b[1].h_outflow", 1, 5, 8312, 1028)
DeclareAlias2("pipeSD15d.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_15.port_a.m_flow", 1, 5, 1672, 1156)
DeclareAlias2("pipeSD15d.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_15.port_b.p", 1, 5, 1675, 1028)
DeclareAlias2("pipeSD15d.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeSD15d.ports_b[1].h_outflow", 1, 5, 8312, 1028)
DeclareVariable("pipeSD15d.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeSD15d.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_15.port_b.p", 1, 5, 1675, 1024)
DeclareAlias2("pipeSD15d.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeSD15d.ports_b[1].h_outflow", 1, 5, 8312, 1024)
DeclareAlias2("pipeSD15d.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeSD15d.ports_b[1].h_outflow", 1, 5, 8312, 1024)
DeclareVariable("pipeSD15d.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeSD15d.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_15.port_b.p", 1, 5, 1675, 1024)
DeclareAlias2("pipeSD15d.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeSD15d.vol.dynBal.medium.T", 1, 5, 15154, 1024)
DeclareVariable("pipeSD15d.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD15d.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD15d.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD15d.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeSD15d.vol.dynBal.U", "Internal energy of fluid [J]", 187, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeSD15d.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeSD15d.vol.dynBal.m", "Mass of fluid [kg]", 4.640358436191723,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeSD15d.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeSD15d.vol.dynBal.der(U)", 1, 6, 187, 1024)
DeclareVariable("pipeSD15d.vol.dynBal.fluidVolume", "Volume [m3]", \
0.0046609317891088495, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD15d.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeSD15d.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD15d.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeSD15d.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeSD15d.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeba.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeba.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeba.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeba.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeba.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeba.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeba.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 3, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeba.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeba.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeba.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeba.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeba.ports_b[1].h_outflow", 1, 5, 8506, 1024)
DeclareAlias2("pipeba.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipeba.vol.dynBal.U", 1, 1, 188, 1024)
DeclareVariable("pipeba.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeba.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipeba.port_a.m_flow", 1, 5, 8502, 1156)
DeclareAlias2("pipeba.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeba.ports_b[1].p", 1, 5, 8505, 1028)
DeclareAlias2("pipeba.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeba.ports_b[1].h_outflow", 1, 5, 8506, 1028)
DeclareAlias2("pipeba.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_3.port_a.m_flow", -1, 5, 282, 1156)
DeclareAlias2("pipeba.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeba.ports_b[1].p", 1, 5, 8505, 1028)
DeclareAlias2("pipeba.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeba.ports_b[1].h_outflow", 1, 5, 8506, 1028)
DeclareAlias2("pipeba.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_2.port_a.m_flow", -1, 5, 2, 1156)
DeclareAlias2("pipeba.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeba.ports_b[1].p", 1, 5, 8505, 1028)
DeclareAlias2("pipeba.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeba.ports_b[1].h_outflow", 1, 5, 8506, 1028)
DeclareVariable("pipeba.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeba.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipeba.ports_b[1].p", 1, 5, 8505, 1024)
DeclareAlias2("pipeba.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeba.ports_b[1].h_outflow", 1, 5, 8506, 1024)
DeclareAlias2("pipeba.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeba.ports_b[1].h_outflow", 1, 5, 8506, 1024)
DeclareVariable("pipeba.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeba.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipeba.ports_b[1].p", 1, 5, 8505, 1024)
DeclareAlias2("pipeba.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeba.vol.dynBal.medium.T", 1, 5, 15194, 1024)
DeclareVariable("pipeba.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeba.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeba.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeba.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeba.vol.dynBal.U", "Internal energy of fluid [J]", 188, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeba.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeba.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeba.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeba.vol.dynBal.der(U)", 1, 6, 188, 1024)
DeclareVariable("pipeba.vol.dynBal.fluidVolume", "Volume [m3]", 0.007768219648514749,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeba.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeba.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeba.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeba.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeba.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeba.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeba.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecb.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecb.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecb.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecb.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipecb.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipecb.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecb.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 4, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipecb.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecb.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecb.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipecb.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipecb.ports_b[1].h_outflow", 1, 5, 8673, 1024)
DeclareAlias2("pipecb.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipecb.vol.dynBal.U", 1, 1, 189, 1024)
DeclareVariable("pipecb.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipecb.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipecb.port_a.m_flow", 1, 5, 8670, 1156)
DeclareAlias2("pipecb.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeba.port_a.p", 1, 5, 8503, 1028)
DeclareAlias2("pipecb.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipecb.ports_b[1].h_outflow", 1, 5, 8673, 1028)
DeclareAlias2("pipecb.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipeba.port_a.m_flow", -1, 5, 8502, 1156)
DeclareAlias2("pipecb.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeba.port_a.p", 1, 5, 8503, 1028)
DeclareAlias2("pipecb.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipecb.ports_b[1].h_outflow", 1, 5, 8673, 1028)
DeclareAlias2("pipecb.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_6.port_a.m_flow", -1, 5, 838, 1156)
DeclareAlias2("pipecb.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeba.port_a.p", 1, 5, 8503, 1028)
DeclareAlias2("pipecb.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipecb.ports_b[1].h_outflow", 1, 5, 8673, 1028)
DeclareAlias2("pipecb.vol.dynBal.ports[4].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_5.port_a.m_flow", -1, 5, 560, 1156)
DeclareAlias2("pipecb.vol.dynBal.ports[4].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipeba.port_a.p", 1, 5, 8503, 1028)
DeclareAlias2("pipecb.vol.dynBal.ports[4].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipecb.ports_b[1].h_outflow", 1, 5, 8673, 1028)
DeclareVariable("pipecb.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipecb.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipeba.port_a.p", 1, 5, 8503, 1024)
DeclareAlias2("pipecb.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipecb.ports_b[1].h_outflow", 1, 5, 8673, 1024)
DeclareAlias2("pipecb.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipecb.ports_b[1].h_outflow", 1, 5, 8673, 1024)
DeclareVariable("pipecb.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipecb.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipeba.port_a.p", 1, 5, 8503, 1024)
DeclareAlias2("pipecb.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipecb.vol.dynBal.medium.T", 1, 5, 15235, 1024)
DeclareVariable("pipecb.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecb.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecb.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipecb.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipecb.vol.dynBal.U", "Internal energy of fluid [J]", 189, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipecb.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipecb.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipecb.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipecb.vol.dynBal.der(U)", 1, 6, 189, 1024)
DeclareVariable("pipecb.vol.dynBal.fluidVolume", "Volume [m3]", 0.007768219648514749,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipecb.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipecb.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipecb.vol.dynBal.ports_H_flow[4]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipecb.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipecb.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecb.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecb.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecb.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedc.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedc.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedc.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedc.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipedc.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipedc.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedc.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 4, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipedc.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedc.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedc.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipedc.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipedc.ports_b[1].h_outflow", 1, 5, 8840, 1024)
DeclareAlias2("pipedc.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipedc.vol.dynBal.U", 1, 1, 190, 1024)
DeclareVariable("pipedc.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipedc.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipedc.port_a.m_flow", 1, 5, 8837, 1156)
DeclareAlias2("pipedc.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipecb.port_a.p", 1, 5, 8671, 1028)
DeclareAlias2("pipedc.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipedc.ports_b[1].h_outflow", 1, 5, 8840, 1028)
DeclareAlias2("pipedc.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipecb.port_a.m_flow", -1, 5, 8670, 1156)
DeclareAlias2("pipedc.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipecb.port_a.p", 1, 5, 8671, 1028)
DeclareAlias2("pipedc.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipedc.ports_b[1].h_outflow", 1, 5, 8840, 1028)
DeclareAlias2("pipedc.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_11.port_a.m_flow", -1, 5, 1950, 1156)
DeclareAlias2("pipedc.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipecb.port_a.p", 1, 5, 8671, 1028)
DeclareAlias2("pipedc.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipedc.ports_b[1].h_outflow", 1, 5, 8840, 1028)
DeclareAlias2("pipedc.vol.dynBal.ports[4].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_10.port_a.m_flow", -1, 5, 1116, 1156)
DeclareAlias2("pipedc.vol.dynBal.ports[4].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipecb.port_a.p", 1, 5, 8671, 1028)
DeclareAlias2("pipedc.vol.dynBal.ports[4].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipedc.ports_b[1].h_outflow", 1, 5, 8840, 1028)
DeclareVariable("pipedc.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipedc.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipecb.port_a.p", 1, 5, 8671, 1024)
DeclareAlias2("pipedc.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipedc.ports_b[1].h_outflow", 1, 5, 8840, 1024)
DeclareAlias2("pipedc.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipedc.ports_b[1].h_outflow", 1, 5, 8840, 1024)
DeclareVariable("pipedc.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipedc.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipecb.port_a.p", 1, 5, 8671, 1024)
DeclareAlias2("pipedc.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipedc.vol.dynBal.medium.T", 1, 5, 15277, 1024)
DeclareVariable("pipedc.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedc.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedc.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipedc.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipedc.vol.dynBal.U", "Internal energy of fluid [J]", 190, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipedc.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipedc.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipedc.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipedc.vol.dynBal.der(U)", 1, 6, 190, 1024)
DeclareVariable("pipedc.vol.dynBal.fluidVolume", "Volume [m3]", 0.007768219648514749,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipedc.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipedc.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipedc.vol.dynBal.ports_H_flow[4]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipedc.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipedc.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedc.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedc.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedc.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeid.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeid.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeid.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeid.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeid.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeid.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeid.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 4, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeid.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeid.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeid.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeid.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeid.ports_b[1].h_outflow", 1, 5, 9006, 1024)
DeclareAlias2("pipeid.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipeid.vol.dynBal.U", 1, 1, 191, 1024)
DeclareVariable("pipeid.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeid.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipeid.port_a.m_flow", 1, 5, 9004, 1156)
DeclareAlias2("pipeid.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipedc.port_a.p", 1, 5, 8838, 1028)
DeclareAlias2("pipeid.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeid.ports_b[1].h_outflow", 1, 5, 9006, 1028)
DeclareAlias2("pipeid.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipedc.port_a.m_flow", -1, 5, 8837, 1156)
DeclareAlias2("pipeid.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipedc.port_a.p", 1, 5, 8838, 1028)
DeclareAlias2("pipeid.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeid.ports_b[1].h_outflow", 1, 5, 9006, 1028)
DeclareAlias2("pipeid.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_15.port_a.m_flow", -1, 5, 1672, 1156)
DeclareAlias2("pipeid.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipedc.port_a.p", 1, 5, 8838, 1028)
DeclareAlias2("pipeid.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeid.ports_b[1].h_outflow", 1, 5, 9006, 1028)
DeclareAlias2("pipeid.vol.dynBal.ports[4].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_16.port_a.m_flow", -1, 5, 1394, 1156)
DeclareAlias2("pipeid.vol.dynBal.ports[4].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipedc.port_a.p", 1, 5, 8838, 1028)
DeclareAlias2("pipeid.vol.dynBal.ports[4].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeid.ports_b[1].h_outflow", 1, 5, 9006, 1028)
DeclareVariable("pipeid.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeid.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipedc.port_a.p", 1, 5, 8838, 1024)
DeclareAlias2("pipeid.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeid.ports_b[1].h_outflow", 1, 5, 9006, 1024)
DeclareAlias2("pipeid.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeid.ports_b[1].h_outflow", 1, 5, 9006, 1024)
DeclareVariable("pipeid.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeid.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipedc.port_a.p", 1, 5, 8838, 1024)
DeclareAlias2("pipeid.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeid.vol.dynBal.medium.T", 1, 5, 15319, 1024)
DeclareVariable("pipeid.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeid.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeid.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeid.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeid.vol.dynBal.U", "Internal energy of fluid [J]", 191, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeid.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeid.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeid.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeid.vol.dynBal.der(U)", 1, 6, 191, 1024)
DeclareVariable("pipeid.vol.dynBal.fluidVolume", "Volume [m3]", 0.007768219648514749,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeid.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeid.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeid.vol.dynBal.ports_H_flow[4]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeid.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeid.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeid.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeid.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeid.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefe.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefe.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefe.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefe.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipefe.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipefe.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefe.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 3, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipefe.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefe.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefe.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipefe.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipefe.ports_b[1].h_outflow", 1, 5, 9174, 1024)
DeclareAlias2("pipefe.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipefe.vol.dynBal.U", 1, 1, 192, 1024)
DeclareVariable("pipefe.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipefe.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipefe.port_a.m_flow", 1, 5, 9170, 1156)
DeclareAlias2("pipefe.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipefe.ports_b[1].p", 1, 5, 9173, 1028)
DeclareAlias2("pipefe.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipefe.ports_b[1].h_outflow", 1, 5, 9174, 1028)
DeclareAlias2("pipefe.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_4.port_a.m_flow", -1, 5, 2506, 1156)
DeclareAlias2("pipefe.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipefe.ports_b[1].p", 1, 5, 9173, 1028)
DeclareAlias2("pipefe.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipefe.ports_b[1].h_outflow", 1, 5, 9174, 1028)
DeclareAlias2("pipefe.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_1.port_a.m_flow", -1, 5, 2228, 1156)
DeclareAlias2("pipefe.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipefe.ports_b[1].p", 1, 5, 9173, 1028)
DeclareAlias2("pipefe.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipefe.ports_b[1].h_outflow", 1, 5, 9174, 1028)
DeclareVariable("pipefe.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipefe.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipefe.ports_b[1].p", 1, 5, 9173, 1024)
DeclareAlias2("pipefe.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipefe.ports_b[1].h_outflow", 1, 5, 9174, 1024)
DeclareAlias2("pipefe.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipefe.ports_b[1].h_outflow", 1, 5, 9174, 1024)
DeclareVariable("pipefe.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipefe.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipefe.ports_b[1].p", 1, 5, 9173, 1024)
DeclareAlias2("pipefe.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipefe.vol.dynBal.medium.T", 1, 5, 15361, 1024)
DeclareVariable("pipefe.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefe.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefe.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipefe.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipefe.vol.dynBal.U", "Internal energy of fluid [J]", 192, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipefe.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipefe.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipefe.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipefe.vol.dynBal.der(U)", 1, 6, 192, 1024)
DeclareVariable("pipefe.vol.dynBal.fluidVolume", "Volume [m3]", 0.007768219648514749,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipefe.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipefe.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipefe.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipefe.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefe.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefe.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefe.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegf.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegf.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegf.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegf.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipegf.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipegf.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegf.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 4, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipegf.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegf.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegf.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipegf.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipegf.ports_b[1].h_outflow", 1, 5, 9341, 1024)
DeclareAlias2("pipegf.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipegf.vol.dynBal.U", 1, 1, 193, 1024)
DeclareVariable("pipegf.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipegf.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipegf.port_a.m_flow", 1, 5, 9338, 1156)
DeclareAlias2("pipegf.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipefe.port_a.p", 1, 5, 9171, 1028)
DeclareAlias2("pipegf.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipegf.ports_b[1].h_outflow", 1, 5, 9341, 1028)
DeclareAlias2("pipegf.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipefe.port_a.m_flow", -1, 5, 9170, 1156)
DeclareAlias2("pipegf.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipefe.port_a.p", 1, 5, 9171, 1028)
DeclareAlias2("pipegf.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipegf.ports_b[1].h_outflow", 1, 5, 9341, 1028)
DeclareAlias2("pipegf.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_7.port_a.m_flow", -1, 5, 2784, 1156)
DeclareAlias2("pipegf.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipefe.port_a.p", 1, 5, 9171, 1028)
DeclareAlias2("pipegf.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipegf.ports_b[1].h_outflow", 1, 5, 9341, 1028)
DeclareAlias2("pipegf.vol.dynBal.ports[4].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_8.port_a.m_flow", -1, 5, 3062, 1156)
DeclareAlias2("pipegf.vol.dynBal.ports[4].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipefe.port_a.p", 1, 5, 9171, 1028)
DeclareAlias2("pipegf.vol.dynBal.ports[4].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipegf.ports_b[1].h_outflow", 1, 5, 9341, 1028)
DeclareVariable("pipegf.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipegf.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipefe.port_a.p", 1, 5, 9171, 1024)
DeclareAlias2("pipegf.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipegf.ports_b[1].h_outflow", 1, 5, 9341, 1024)
DeclareAlias2("pipegf.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipegf.ports_b[1].h_outflow", 1, 5, 9341, 1024)
DeclareVariable("pipegf.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipegf.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipefe.port_a.p", 1, 5, 9171, 1024)
DeclareAlias2("pipegf.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipegf.vol.dynBal.medium.T", 1, 5, 15402, 1024)
DeclareVariable("pipegf.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegf.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegf.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipegf.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipegf.vol.dynBal.U", "Internal energy of fluid [J]", 193, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipegf.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipegf.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipegf.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipegf.vol.dynBal.der(U)", 1, 6, 193, 1024)
DeclareVariable("pipegf.vol.dynBal.fluidVolume", "Volume [m3]", 0.007768219648514749,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipegf.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipegf.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipegf.vol.dynBal.ports_H_flow[4]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipegf.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipegf.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegf.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegf.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegf.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehg.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehg.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehg.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehg.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipehg.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipehg.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehg.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 4, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipehg.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehg.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehg.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipehg.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipehg.ports_b[1].h_outflow", 1, 5, 9508, 1024)
DeclareAlias2("pipehg.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipehg.vol.dynBal.U", 1, 1, 194, 1024)
DeclareVariable("pipehg.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipehg.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipehg.port_a.m_flow", 1, 5, 9505, 1156)
DeclareAlias2("pipehg.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipegf.port_a.p", 1, 5, 9339, 1028)
DeclareAlias2("pipehg.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipehg.ports_b[1].h_outflow", 1, 5, 9508, 1028)
DeclareAlias2("pipehg.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipegf.port_a.m_flow", -1, 5, 9338, 1156)
DeclareAlias2("pipehg.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipegf.port_a.p", 1, 5, 9339, 1028)
DeclareAlias2("pipehg.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipehg.ports_b[1].h_outflow", 1, 5, 9508, 1028)
DeclareAlias2("pipehg.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_12.port_a.m_flow", -1, 5, 3618, 1156)
DeclareAlias2("pipehg.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipegf.port_a.p", 1, 5, 9339, 1028)
DeclareAlias2("pipehg.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipehg.ports_b[1].h_outflow", 1, 5, 9508, 1028)
DeclareAlias2("pipehg.vol.dynBal.ports[4].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_9.port_a.m_flow", -1, 5, 3340, 1156)
DeclareAlias2("pipehg.vol.dynBal.ports[4].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipegf.port_a.p", 1, 5, 9339, 1028)
DeclareAlias2("pipehg.vol.dynBal.ports[4].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipehg.ports_b[1].h_outflow", 1, 5, 9508, 1028)
DeclareVariable("pipehg.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipehg.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipegf.port_a.p", 1, 5, 9339, 1024)
DeclareAlias2("pipehg.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipehg.ports_b[1].h_outflow", 1, 5, 9508, 1024)
DeclareAlias2("pipehg.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipehg.ports_b[1].h_outflow", 1, 5, 9508, 1024)
DeclareVariable("pipehg.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipehg.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipegf.port_a.p", 1, 5, 9339, 1024)
DeclareAlias2("pipehg.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipehg.vol.dynBal.medium.T", 1, 5, 15444, 1024)
DeclareVariable("pipehg.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehg.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehg.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipehg.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipehg.vol.dynBal.U", "Internal energy of fluid [J]", 194, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipehg.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipehg.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipehg.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipehg.vol.dynBal.der(U)", 1, 6, 194, 1024)
DeclareVariable("pipehg.vol.dynBal.fluidVolume", "Volume [m3]", 0.007768219648514749,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipehg.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipehg.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipehg.vol.dynBal.ports_H_flow[4]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipehg.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipehg.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehg.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehg.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehg.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeih.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeih.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeih.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeih.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeih.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeih.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeih.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 4, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeih.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeih.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeih.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeih.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeih.ports_b[1].h_outflow", 1, 5, 9674, 1024)
DeclareAlias2("pipeih.vol.dynBal.UOut", "Internal energy of the component [J]", \
"pipeih.vol.dynBal.U", 1, 1, 195, 1024)
DeclareVariable("pipeih.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeih.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipeih.port_a.m_flow", 1, 5, 9672, 1156)
DeclareAlias2("pipeih.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehg.port_a.p", 1, 5, 9506, 1028)
DeclareAlias2("pipeih.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeih.ports_b[1].h_outflow", 1, 5, 9674, 1028)
DeclareAlias2("pipeih.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipehg.port_a.m_flow", -1, 5, 9505, 1156)
DeclareAlias2("pipeih.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehg.port_a.p", 1, 5, 9506, 1028)
DeclareAlias2("pipeih.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeih.ports_b[1].h_outflow", 1, 5, 9674, 1028)
DeclareAlias2("pipeih.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_13.port_a.m_flow", -1, 5, 3896, 1156)
DeclareAlias2("pipeih.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehg.port_a.p", 1, 5, 9506, 1028)
DeclareAlias2("pipeih.vol.dynBal.ports[3].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeih.ports_b[1].h_outflow", 1, 5, 9674, 1028)
DeclareAlias2("pipeih.vol.dynBal.ports[4].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_14.port_a.m_flow", -1, 5, 4174, 1156)
DeclareAlias2("pipeih.vol.dynBal.ports[4].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehg.port_a.p", 1, 5, 9506, 1028)
DeclareAlias2("pipeih.vol.dynBal.ports[4].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeih.ports_b[1].h_outflow", 1, 5, 9674, 1028)
DeclareVariable("pipeih.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeih.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipehg.port_a.p", 1, 5, 9506, 1024)
DeclareAlias2("pipeih.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeih.ports_b[1].h_outflow", 1, 5, 9674, 1024)
DeclareAlias2("pipeih.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeih.ports_b[1].h_outflow", 1, 5, 9674, 1024)
DeclareVariable("pipeih.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeih.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipehg.port_a.p", 1, 5, 9506, 1024)
DeclareAlias2("pipeih.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeih.vol.dynBal.medium.T", 1, 5, 15486, 1024)
DeclareVariable("pipeih.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeih.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeih.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeih.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeih.vol.dynBal.U", "Internal energy of fluid [J]", 195, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeih.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeih.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeih.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeih.vol.dynBal.der(U)", 1, 6, 195, 1024)
DeclareVariable("pipeih.vol.dynBal.fluidVolume", "Volume [m3]", 0.007768219648514749,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeih.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeih.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeih.vol.dynBal.ports_H_flow[4]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeih.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeih.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeih.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeih.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeih.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeaSD2.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeaSD2.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeaSD2.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeaSD2.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeaSD2.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD2.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeaSD2.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD2.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD2.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeaSD2.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeaSD2.ports_b[1].h_outflow", 1, 5, 9840, 1024)
DeclareAlias2("pipeaSD2.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeaSD2.vol.dynBal.U", 1, 1, 196, 1024)
DeclareVariable("pipeaSD2.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeaSD2.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_2.port_a.m_flow", 1, 5, 2, 1156)
DeclareAlias2("pipeaSD2.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_2.port_a.p", 1, 5, 3, 1028)
DeclareAlias2("pipeaSD2.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeaSD2.ports_b[1].h_outflow", 1, 5, 9840, 1028)
DeclareAlias2("pipeaSD2.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_2.port_a.m_flow", -1, 5, 2, 1156)
DeclareAlias2("pipeaSD2.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_2.port_a.p", 1, 5, 3, 1028)
DeclareAlias2("pipeaSD2.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeaSD2.ports_b[1].h_outflow", 1, 5, 9840, 1028)
DeclareVariable("pipeaSD2.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeaSD2.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_2.port_a.p", 1, 5, 3, 1024)
DeclareAlias2("pipeaSD2.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeaSD2.ports_b[1].h_outflow", 1, 5, 9840, 1024)
DeclareAlias2("pipeaSD2.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeaSD2.ports_b[1].h_outflow", 1, 5, 9840, 1024)
DeclareVariable("pipeaSD2.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeaSD2.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_2.port_a.p", 1, 5, 3, 1024)
DeclareAlias2("pipeaSD2.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeaSD2.vol.dynBal.medium.T", 1, 5, 15528, 1024)
DeclareVariable("pipeaSD2.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD2.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD2.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeaSD2.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeaSD2.vol.dynBal.U", "Internal energy of fluid [J]", 196, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeaSD2.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeaSD2.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeaSD2.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeaSD2.vol.dynBal.der(U)", 1, 6, 196, 1024)
DeclareVariable("pipeaSD2.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeaSD2.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeaSD2.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD2.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
EndNonAlias(16)
PreNonAliasNew(17)
StartNonAlias(17)
DeclareVariable("pipeaSD2.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD2.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD2.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipebSD5.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipebSD5.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipebSD5.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipebSD5.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipebSD5.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD5.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipebSD5.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD5.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD5.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipebSD5.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipebSD5.ports_b[1].h_outflow", 1, 5, 10005, 1024)
DeclareAlias2("pipebSD5.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipebSD5.vol.dynBal.U", 1, 1, 197, 1024)
DeclareVariable("pipebSD5.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipebSD5.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_5.port_a.m_flow", 1, 5, 560, 1156)
DeclareAlias2("pipebSD5.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_5.port_a.p", 1, 5, 561, 1028)
DeclareAlias2("pipebSD5.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipebSD5.ports_b[1].h_outflow", 1, 5, 10005, 1028)
DeclareAlias2("pipebSD5.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_5.port_a.m_flow", -1, 5, 560, 1156)
DeclareAlias2("pipebSD5.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_5.port_a.p", 1, 5, 561, 1028)
DeclareAlias2("pipebSD5.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipebSD5.ports_b[1].h_outflow", 1, 5, 10005, 1028)
DeclareVariable("pipebSD5.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipebSD5.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_5.port_a.p", 1, 5, 561, 1024)
DeclareAlias2("pipebSD5.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipebSD5.ports_b[1].h_outflow", 1, 5, 10005, 1024)
DeclareAlias2("pipebSD5.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipebSD5.ports_b[1].h_outflow", 1, 5, 10005, 1024)
DeclareVariable("pipebSD5.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipebSD5.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_5.port_a.p", 1, 5, 561, 1024)
DeclareAlias2("pipebSD5.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipebSD5.vol.dynBal.medium.T", 1, 5, 15568, 1024)
DeclareVariable("pipebSD5.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD5.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD5.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipebSD5.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipebSD5.vol.dynBal.U", "Internal energy of fluid [J]", 197, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipebSD5.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipebSD5.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipebSD5.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipebSD5.vol.dynBal.der(U)", 1, 6, 197, 1024)
DeclareVariable("pipebSD5.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipebSD5.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipebSD5.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD5.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD5.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD5.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecSD10.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecSD10.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecSD10.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecSD10.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipecSD10.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD10.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipecSD10.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD10.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD10.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipecSD10.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipecSD10.ports_b[1].h_outflow", 1, 5, 10170, 1024)
DeclareAlias2("pipecSD10.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipecSD10.vol.dynBal.U", 1, 1, 198, 1024)
DeclareVariable("pipecSD10.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipecSD10.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_10.port_a.m_flow", 1, 5, 1116, 1156)
DeclareAlias2("pipecSD10.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_10.port_a.p", 1, 5, 1117, 1028)
DeclareAlias2("pipecSD10.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipecSD10.ports_b[1].h_outflow", 1, 5, 10170, 1028)
DeclareAlias2("pipecSD10.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_10.port_a.m_flow", -1, 5, 1116, 1156)
DeclareAlias2("pipecSD10.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_10.port_a.p", 1, 5, 1117, 1028)
DeclareAlias2("pipecSD10.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipecSD10.ports_b[1].h_outflow", 1, 5, 10170, 1028)
DeclareVariable("pipecSD10.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipecSD10.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_10.port_a.p", 1, 5, 1117, 1024)
DeclareAlias2("pipecSD10.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipecSD10.ports_b[1].h_outflow", 1, 5, 10170, 1024)
DeclareAlias2("pipecSD10.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipecSD10.ports_b[1].h_outflow", 1, 5, 10170, 1024)
DeclareVariable("pipecSD10.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipecSD10.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_10.port_a.p", 1, 5, 1117, 1024)
DeclareAlias2("pipecSD10.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipecSD10.vol.dynBal.medium.T", 1, 5, 15608, 1024)
DeclareVariable("pipecSD10.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD10.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD10.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipecSD10.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipecSD10.vol.dynBal.U", "Internal energy of fluid [J]", 198, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipecSD10.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipecSD10.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipecSD10.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipecSD10.vol.dynBal.der(U)", 1, 6, 198, 1024)
DeclareVariable("pipecSD10.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipecSD10.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipecSD10.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD10.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD10.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD10.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedSD16.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedSD16.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedSD16.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedSD16.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipedSD16.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD16.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipedSD16.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD16.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD16.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipedSD16.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipedSD16.ports_b[1].h_outflow", 1, 5, 10335, 1024)
DeclareAlias2("pipedSD16.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipedSD16.vol.dynBal.U", 1, 1, 199, 1024)
DeclareVariable("pipedSD16.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipedSD16.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_16.port_a.m_flow", 1, 5, 1394, 1156)
DeclareAlias2("pipedSD16.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_16.port_a.p", 1, 5, 1395, 1028)
DeclareAlias2("pipedSD16.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipedSD16.ports_b[1].h_outflow", 1, 5, 10335, 1028)
DeclareAlias2("pipedSD16.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_16.port_a.m_flow", -1, 5, 1394, 1156)
DeclareAlias2("pipedSD16.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_16.port_a.p", 1, 5, 1395, 1028)
DeclareAlias2("pipedSD16.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipedSD16.ports_b[1].h_outflow", 1, 5, 10335, 1028)
DeclareVariable("pipedSD16.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipedSD16.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_16.port_a.p", 1, 5, 1395, 1024)
DeclareAlias2("pipedSD16.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipedSD16.ports_b[1].h_outflow", 1, 5, 10335, 1024)
DeclareAlias2("pipedSD16.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipedSD16.ports_b[1].h_outflow", 1, 5, 10335, 1024)
DeclareVariable("pipedSD16.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipedSD16.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_16.port_a.p", 1, 5, 1395, 1024)
DeclareAlias2("pipedSD16.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipedSD16.vol.dynBal.medium.T", 1, 5, 15648, 1024)
DeclareVariable("pipedSD16.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD16.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD16.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipedSD16.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipedSD16.vol.dynBal.U", "Internal energy of fluid [J]", 199, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipedSD16.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipedSD16.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipedSD16.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipedSD16.vol.dynBal.der(U)", 1, 6, 199, 1024)
DeclareVariable("pipedSD16.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipedSD16.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipedSD16.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD16.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD16.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD16.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeeSD1.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeeSD1.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeeSD1.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeeSD1.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeeSD1.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD1.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeeSD1.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD1.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD1.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeeSD1.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeeSD1.ports_b[1].h_outflow", 1, 5, 10500, 1024)
DeclareAlias2("pipeeSD1.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeeSD1.vol.dynBal.U", 1, 1, 200, 1024)
DeclareVariable("pipeeSD1.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeeSD1.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_1.port_a.m_flow", 1, 5, 2228, 1156)
DeclareAlias2("pipeeSD1.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_1.port_a.p", 1, 5, 2229, 1028)
DeclareAlias2("pipeeSD1.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeeSD1.ports_b[1].h_outflow", 1, 5, 10500, 1028)
DeclareAlias2("pipeeSD1.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_1.port_a.m_flow", -1, 5, 2228, 1156)
DeclareAlias2("pipeeSD1.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_1.port_a.p", 1, 5, 2229, 1028)
DeclareAlias2("pipeeSD1.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeeSD1.ports_b[1].h_outflow", 1, 5, 10500, 1028)
DeclareVariable("pipeeSD1.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeeSD1.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_1.port_a.p", 1, 5, 2229, 1024)
DeclareAlias2("pipeeSD1.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeeSD1.ports_b[1].h_outflow", 1, 5, 10500, 1024)
DeclareAlias2("pipeeSD1.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeeSD1.ports_b[1].h_outflow", 1, 5, 10500, 1024)
DeclareVariable("pipeeSD1.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeeSD1.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_1.port_a.p", 1, 5, 2229, 1024)
DeclareAlias2("pipeeSD1.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeeSD1.vol.dynBal.medium.T", 1, 5, 15688, 1024)
DeclareVariable("pipeeSD1.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD1.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD1.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeeSD1.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeeSD1.vol.dynBal.U", "Internal energy of fluid [J]", 200, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeeSD1.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeeSD1.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeeSD1.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeeSD1.vol.dynBal.der(U)", 1, 6, 200, 1024)
DeclareVariable("pipeeSD1.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeeSD1.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeeSD1.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD1.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD1.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD1.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefSD8.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefSD8.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefSD8.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefSD8.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipefSD8.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD8.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipefSD8.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD8.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD8.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipefSD8.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipefSD8.ports_b[1].h_outflow", 1, 5, 10665, 1024)
DeclareAlias2("pipefSD8.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipefSD8.vol.dynBal.U", 1, 1, 201, 1024)
DeclareVariable("pipefSD8.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipefSD8.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_8.port_a.m_flow", 1, 5, 3062, 1156)
DeclareAlias2("pipefSD8.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_8.port_a.p", 1, 5, 3063, 1028)
DeclareAlias2("pipefSD8.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipefSD8.ports_b[1].h_outflow", 1, 5, 10665, 1028)
DeclareAlias2("pipefSD8.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_8.port_a.m_flow", -1, 5, 3062, 1156)
DeclareAlias2("pipefSD8.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_8.port_a.p", 1, 5, 3063, 1028)
DeclareAlias2("pipefSD8.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipefSD8.ports_b[1].h_outflow", 1, 5, 10665, 1028)
DeclareVariable("pipefSD8.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipefSD8.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_8.port_a.p", 1, 5, 3063, 1024)
DeclareAlias2("pipefSD8.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipefSD8.ports_b[1].h_outflow", 1, 5, 10665, 1024)
DeclareAlias2("pipefSD8.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipefSD8.ports_b[1].h_outflow", 1, 5, 10665, 1024)
DeclareVariable("pipefSD8.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipefSD8.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_8.port_a.p", 1, 5, 3063, 1024)
DeclareAlias2("pipefSD8.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipefSD8.vol.dynBal.medium.T", 1, 5, 15728, 1024)
DeclareVariable("pipefSD8.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD8.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD8.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipefSD8.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipefSD8.vol.dynBal.U", "Internal energy of fluid [J]", 201, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipefSD8.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipefSD8.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipefSD8.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipefSD8.vol.dynBal.der(U)", 1, 6, 201, 1024)
DeclareVariable("pipefSD8.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipefSD8.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipefSD8.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD8.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD8.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD8.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegSD9.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegSD9.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegSD9.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegSD9.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipegSD9.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD9.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipegSD9.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD9.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD9.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipegSD9.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipegSD9.ports_b[1].h_outflow", 1, 5, 10830, 1024)
DeclareAlias2("pipegSD9.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipegSD9.vol.dynBal.U", 1, 1, 202, 1024)
DeclareVariable("pipegSD9.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipegSD9.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_9.port_a.m_flow", 1, 5, 3340, 1156)
DeclareAlias2("pipegSD9.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_9.port_a.p", 1, 5, 3341, 1028)
DeclareAlias2("pipegSD9.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipegSD9.ports_b[1].h_outflow", 1, 5, 10830, 1028)
DeclareAlias2("pipegSD9.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_9.port_a.m_flow", -1, 5, 3340, 1156)
DeclareAlias2("pipegSD9.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_9.port_a.p", 1, 5, 3341, 1028)
DeclareAlias2("pipegSD9.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipegSD9.ports_b[1].h_outflow", 1, 5, 10830, 1028)
DeclareVariable("pipegSD9.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipegSD9.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_9.port_a.p", 1, 5, 3341, 1024)
DeclareAlias2("pipegSD9.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipegSD9.ports_b[1].h_outflow", 1, 5, 10830, 1024)
DeclareAlias2("pipegSD9.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipegSD9.ports_b[1].h_outflow", 1, 5, 10830, 1024)
DeclareVariable("pipegSD9.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipegSD9.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_9.port_a.p", 1, 5, 3341, 1024)
DeclareAlias2("pipegSD9.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipegSD9.vol.dynBal.medium.T", 1, 5, 15768, 1024)
DeclareVariable("pipegSD9.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD9.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD9.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipegSD9.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipegSD9.vol.dynBal.U", "Internal energy of fluid [J]", 202, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipegSD9.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipegSD9.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipegSD9.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipegSD9.vol.dynBal.der(U)", 1, 6, 202, 1024)
DeclareVariable("pipegSD9.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipegSD9.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipegSD9.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD9.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD9.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD9.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehSD14.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehSD14.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehSD14.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehSD14.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipehSD14.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD14.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipehSD14.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD14.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD14.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipehSD14.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipehSD14.ports_b[1].h_outflow", 1, 5, 10995, 1024)
DeclareAlias2("pipehSD14.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipehSD14.vol.dynBal.U", 1, 1, 203, 1024)
DeclareVariable("pipehSD14.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipehSD14.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_14.port_a.m_flow", 1, 5, 4174, 1156)
DeclareAlias2("pipehSD14.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_14.port_a.p", 1, 5, 4175, 1028)
DeclareAlias2("pipehSD14.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipehSD14.ports_b[1].h_outflow", 1, 5, 10995, 1028)
DeclareAlias2("pipehSD14.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_14.port_a.m_flow", -1, 5, 4174, 1156)
DeclareAlias2("pipehSD14.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_14.port_a.p", 1, 5, 4175, 1028)
DeclareAlias2("pipehSD14.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipehSD14.ports_b[1].h_outflow", 1, 5, 10995, 1028)
DeclareVariable("pipehSD14.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipehSD14.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_14.port_a.p", 1, 5, 4175, 1024)
DeclareAlias2("pipehSD14.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipehSD14.ports_b[1].h_outflow", 1, 5, 10995, 1024)
DeclareAlias2("pipehSD14.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipehSD14.ports_b[1].h_outflow", 1, 5, 10995, 1024)
DeclareVariable("pipehSD14.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipehSD14.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_14.port_a.p", 1, 5, 4175, 1024)
DeclareAlias2("pipehSD14.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipehSD14.vol.dynBal.medium.T", 1, 5, 15808, 1024)
DeclareVariable("pipehSD14.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD14.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD14.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipehSD14.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipehSD14.vol.dynBal.U", "Internal energy of fluid [J]", 203, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipehSD14.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipehSD14.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipehSD14.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipehSD14.vol.dynBal.der(U)", 1, 6, 203, 1024)
DeclareVariable("pipehSD14.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipehSD14.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipehSD14.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD14.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD14.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD14.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedSD15.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedSD15.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedSD15.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipedSD15.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipedSD15.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD15.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipedSD15.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD15.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD15.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipedSD15.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipedSD15.ports_b[1].h_outflow", 1, 5, 11160, 1024)
DeclareAlias2("pipedSD15.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipedSD15.vol.dynBal.U", 1, 1, 204, 1024)
DeclareVariable("pipedSD15.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipedSD15.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_15.port_a.m_flow", 1, 5, 1672, 1156)
DeclareAlias2("pipedSD15.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_15.port_a.p", 1, 5, 1673, 1028)
DeclareAlias2("pipedSD15.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipedSD15.ports_b[1].h_outflow", 1, 5, 11160, 1028)
DeclareAlias2("pipedSD15.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_15.port_a.m_flow", -1, 5, 1672, 1156)
DeclareAlias2("pipedSD15.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_15.port_a.p", 1, 5, 1673, 1028)
DeclareAlias2("pipedSD15.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipedSD15.ports_b[1].h_outflow", 1, 5, 11160, 1028)
DeclareVariable("pipedSD15.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipedSD15.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_15.port_a.p", 1, 5, 1673, 1024)
DeclareAlias2("pipedSD15.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipedSD15.ports_b[1].h_outflow", 1, 5, 11160, 1024)
DeclareAlias2("pipedSD15.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipedSD15.ports_b[1].h_outflow", 1, 5, 11160, 1024)
DeclareVariable("pipedSD15.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipedSD15.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_15.port_a.p", 1, 5, 1673, 1024)
DeclareAlias2("pipedSD15.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipedSD15.vol.dynBal.medium.T", 1, 5, 15848, 1024)
DeclareVariable("pipedSD15.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD15.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD15.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipedSD15.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipedSD15.vol.dynBal.U", "Internal energy of fluid [J]", 204, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipedSD15.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipedSD15.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipedSD15.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipedSD15.vol.dynBal.der(U)", 1, 6, 204, 1024)
DeclareVariable("pipedSD15.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipedSD15.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipedSD15.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD15.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipedSD15.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipedSD15.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecSD11.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecSD11.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecSD11.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipecSD11.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipecSD11.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD11.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipecSD11.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD11.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD11.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipecSD11.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipecSD11.ports_b[1].h_outflow", 1, 5, 11325, 1024)
DeclareAlias2("pipecSD11.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipecSD11.vol.dynBal.U", 1, 1, 205, 1024)
DeclareVariable("pipecSD11.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipecSD11.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_11.port_a.m_flow", 1, 5, 1950, 1156)
DeclareAlias2("pipecSD11.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_11.port_a.p", 1, 5, 1951, 1028)
DeclareAlias2("pipecSD11.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipecSD11.ports_b[1].h_outflow", 1, 5, 11325, 1028)
DeclareAlias2("pipecSD11.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_11.port_a.m_flow", -1, 5, 1950, 1156)
DeclareAlias2("pipecSD11.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_11.port_a.p", 1, 5, 1951, 1028)
DeclareAlias2("pipecSD11.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipecSD11.ports_b[1].h_outflow", 1, 5, 11325, 1028)
DeclareVariable("pipecSD11.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipecSD11.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_11.port_a.p", 1, 5, 1951, 1024)
DeclareAlias2("pipecSD11.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipecSD11.ports_b[1].h_outflow", 1, 5, 11325, 1024)
DeclareAlias2("pipecSD11.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipecSD11.ports_b[1].h_outflow", 1, 5, 11325, 1024)
DeclareVariable("pipecSD11.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipecSD11.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_11.port_a.p", 1, 5, 1951, 1024)
DeclareAlias2("pipecSD11.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipecSD11.vol.dynBal.medium.T", 1, 5, 15888, 1024)
DeclareVariable("pipecSD11.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD11.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD11.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipecSD11.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipecSD11.vol.dynBal.U", "Internal energy of fluid [J]", 205, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipecSD11.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipecSD11.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipecSD11.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipecSD11.vol.dynBal.der(U)", 1, 6, 205, 1024)
DeclareVariable("pipecSD11.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipecSD11.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipecSD11.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD11.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipecSD11.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipecSD11.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipebSD6.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipebSD6.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipebSD6.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipebSD6.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipebSD6.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD6.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipebSD6.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD6.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD6.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipebSD6.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipebSD6.ports_b[1].h_outflow", 1, 5, 11490, 1024)
DeclareAlias2("pipebSD6.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipebSD6.vol.dynBal.U", 1, 1, 206, 1024)
DeclareVariable("pipebSD6.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipebSD6.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_6.port_a.m_flow", 1, 5, 838, 1156)
DeclareAlias2("pipebSD6.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_6.port_a.p", 1, 5, 839, 1028)
DeclareAlias2("pipebSD6.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipebSD6.ports_b[1].h_outflow", 1, 5, 11490, 1028)
DeclareAlias2("pipebSD6.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_6.port_a.m_flow", -1, 5, 838, 1156)
DeclareAlias2("pipebSD6.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_6.port_a.p", 1, 5, 839, 1028)
DeclareAlias2("pipebSD6.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipebSD6.ports_b[1].h_outflow", 1, 5, 11490, 1028)
DeclareVariable("pipebSD6.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipebSD6.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_6.port_a.p", 1, 5, 839, 1024)
DeclareAlias2("pipebSD6.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipebSD6.ports_b[1].h_outflow", 1, 5, 11490, 1024)
DeclareAlias2("pipebSD6.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipebSD6.ports_b[1].h_outflow", 1, 5, 11490, 1024)
DeclareVariable("pipebSD6.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipebSD6.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_6.port_a.p", 1, 5, 839, 1024)
DeclareAlias2("pipebSD6.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipebSD6.vol.dynBal.medium.T", 1, 5, 15928, 1024)
DeclareVariable("pipebSD6.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD6.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD6.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipebSD6.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipebSD6.vol.dynBal.U", "Internal energy of fluid [J]", 206, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipebSD6.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipebSD6.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipebSD6.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipebSD6.vol.dynBal.der(U)", 1, 6, 206, 1024)
DeclareVariable("pipebSD6.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipebSD6.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipebSD6.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD6.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipebSD6.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipebSD6.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeaSD3.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeaSD3.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeaSD3.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeaSD3.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeaSD3.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD3.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeaSD3.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD3.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD3.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeaSD3.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeaSD3.ports_b[1].h_outflow", 1, 5, 11655, 1024)
DeclareAlias2("pipeaSD3.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeaSD3.vol.dynBal.U", 1, 1, 207, 1024)
DeclareVariable("pipeaSD3.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeaSD3.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_3.port_a.m_flow", 1, 5, 282, 1156)
DeclareAlias2("pipeaSD3.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_3.port_a.p", 1, 5, 283, 1028)
DeclareAlias2("pipeaSD3.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeaSD3.ports_b[1].h_outflow", 1, 5, 11655, 1028)
DeclareAlias2("pipeaSD3.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_3.port_a.m_flow", -1, 5, 282, 1156)
DeclareAlias2("pipeaSD3.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_3.port_a.p", 1, 5, 283, 1028)
DeclareAlias2("pipeaSD3.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeaSD3.ports_b[1].h_outflow", 1, 5, 11655, 1028)
DeclareVariable("pipeaSD3.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeaSD3.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_3.port_a.p", 1, 5, 283, 1024)
DeclareAlias2("pipeaSD3.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeaSD3.ports_b[1].h_outflow", 1, 5, 11655, 1024)
DeclareAlias2("pipeaSD3.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeaSD3.ports_b[1].h_outflow", 1, 5, 11655, 1024)
DeclareVariable("pipeaSD3.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeaSD3.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_3.port_a.p", 1, 5, 283, 1024)
DeclareAlias2("pipeaSD3.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeaSD3.vol.dynBal.medium.T", 1, 5, 15968, 1024)
DeclareVariable("pipeaSD3.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD3.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD3.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeaSD3.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeaSD3.vol.dynBal.U", "Internal energy of fluid [J]", 207, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeaSD3.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeaSD3.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeaSD3.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeaSD3.vol.dynBal.der(U)", 1, 6, 207, 1024)
DeclareVariable("pipeaSD3.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeaSD3.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeaSD3.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD3.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeaSD3.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeaSD3.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeeSD4.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeeSD4.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeeSD4.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipeeSD4.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipeeSD4.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD4.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipeeSD4.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD4.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD4.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeeSD4.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipeeSD4.ports_b[1].h_outflow", 1, 5, 11820, 1024)
DeclareAlias2("pipeeSD4.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipeeSD4.vol.dynBal.U", 1, 1, 208, 1024)
DeclareVariable("pipeeSD4.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeeSD4.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_4.port_a.m_flow", 1, 5, 2506, 1156)
DeclareAlias2("pipeeSD4.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_4.port_a.p", 1, 5, 2507, 1028)
DeclareAlias2("pipeeSD4.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeeSD4.ports_b[1].h_outflow", 1, 5, 11820, 1028)
DeclareAlias2("pipeeSD4.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_4.port_a.m_flow", -1, 5, 2506, 1156)
DeclareAlias2("pipeeSD4.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_4.port_a.p", 1, 5, 2507, 1028)
DeclareAlias2("pipeeSD4.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipeeSD4.ports_b[1].h_outflow", 1, 5, 11820, 1028)
DeclareVariable("pipeeSD4.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipeeSD4.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_4.port_a.p", 1, 5, 2507, 1024)
DeclareAlias2("pipeeSD4.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipeeSD4.ports_b[1].h_outflow", 1, 5, 11820, 1024)
DeclareAlias2("pipeeSD4.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipeeSD4.ports_b[1].h_outflow", 1, 5, 11820, 1024)
DeclareVariable("pipeeSD4.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipeeSD4.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_4.port_a.p", 1, 5, 2507, 1024)
DeclareAlias2("pipeeSD4.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipeeSD4.vol.dynBal.medium.T", 1, 5, 16008, 1024)
DeclareVariable("pipeeSD4.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD4.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD4.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeeSD4.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipeeSD4.vol.dynBal.U", "Internal energy of fluid [J]", 208, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipeeSD4.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipeeSD4.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipeeSD4.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipeeSD4.vol.dynBal.der(U)", 1, 6, 208, 1024)
DeclareVariable("pipeeSD4.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeeSD4.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipeeSD4.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD4.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipeeSD4.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipeeSD4.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefSD7.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefSD7.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefSD7.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipefSD7.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipefSD7.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD7.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipefSD7.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD7.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD7.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipefSD7.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipefSD7.ports_b[1].h_outflow", 1, 5, 11985, 1024)
DeclareAlias2("pipefSD7.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipefSD7.vol.dynBal.U", 1, 1, 209, 1024)
DeclareVariable("pipefSD7.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipefSD7.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_7.port_a.m_flow", 1, 5, 2784, 1156)
DeclareAlias2("pipefSD7.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_7.port_a.p", 1, 5, 2785, 1028)
DeclareAlias2("pipefSD7.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipefSD7.ports_b[1].h_outflow", 1, 5, 11985, 1028)
DeclareAlias2("pipefSD7.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_7.port_a.m_flow", -1, 5, 2784, 1156)
DeclareAlias2("pipefSD7.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_7.port_a.p", 1, 5, 2785, 1028)
DeclareAlias2("pipefSD7.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipefSD7.ports_b[1].h_outflow", 1, 5, 11985, 1028)
DeclareVariable("pipefSD7.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipefSD7.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_7.port_a.p", 1, 5, 2785, 1024)
DeclareAlias2("pipefSD7.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipefSD7.ports_b[1].h_outflow", 1, 5, 11985, 1024)
DeclareAlias2("pipefSD7.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipefSD7.ports_b[1].h_outflow", 1, 5, 11985, 1024)
DeclareVariable("pipefSD7.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipefSD7.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_7.port_a.p", 1, 5, 2785, 1024)
DeclareAlias2("pipefSD7.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipefSD7.vol.dynBal.medium.T", 1, 5, 16048, 1024)
DeclareVariable("pipefSD7.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD7.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD7.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipefSD7.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipefSD7.vol.dynBal.U", "Internal energy of fluid [J]", 209, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipefSD7.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipefSD7.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipefSD7.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipefSD7.vol.dynBal.der(U)", 1, 6, 209, 1024)
DeclareVariable("pipefSD7.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipefSD7.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipefSD7.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD7.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipefSD7.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipefSD7.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegSD12.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegSD12.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegSD12.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipegSD12.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipegSD12.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD12.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipegSD12.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD12.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD12.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipegSD12.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipegSD12.ports_b[1].h_outflow", 1, 5, 12150, 1024)
DeclareAlias2("pipegSD12.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipegSD12.vol.dynBal.U", 1, 1, 210, 1024)
DeclareVariable("pipegSD12.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipegSD12.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_12.port_a.m_flow", 1, 5, 3618, 1156)
DeclareAlias2("pipegSD12.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_12.port_a.p", 1, 5, 3619, 1028)
DeclareAlias2("pipegSD12.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipegSD12.ports_b[1].h_outflow", 1, 5, 12150, 1028)
DeclareAlias2("pipegSD12.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_12.port_a.m_flow", -1, 5, 3618, 1156)
DeclareAlias2("pipegSD12.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_12.port_a.p", 1, 5, 3619, 1028)
DeclareAlias2("pipegSD12.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipegSD12.ports_b[1].h_outflow", 1, 5, 12150, 1028)
DeclareVariable("pipegSD12.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipegSD12.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_12.port_a.p", 1, 5, 3619, 1024)
DeclareAlias2("pipegSD12.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipegSD12.ports_b[1].h_outflow", 1, 5, 12150, 1024)
DeclareAlias2("pipegSD12.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipegSD12.ports_b[1].h_outflow", 1, 5, 12150, 1024)
DeclareVariable("pipegSD12.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipegSD12.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_12.port_a.p", 1, 5, 3619, 1024)
DeclareAlias2("pipegSD12.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipegSD12.vol.dynBal.medium.T", 1, 5, 16088, 1024)
DeclareVariable("pipegSD12.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD12.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD12.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipegSD12.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipegSD12.vol.dynBal.U", "Internal energy of fluid [J]", 210, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipegSD12.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipegSD12.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipegSD12.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipegSD12.vol.dynBal.der(U)", 1, 6, 210, 1024)
DeclareVariable("pipegSD12.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipegSD12.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipegSD12.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD12.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipegSD12.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipegSD12.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehSD13.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehSD13.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehSD13.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("pipehSD13.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("pipehSD13.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD13.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareVariable("pipehSD13.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD13.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD13.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipehSD13.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "pipehSD13.ports_b[1].h_outflow", 1, 5, 12315, 1024)
DeclareAlias2("pipehSD13.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "pipehSD13.vol.dynBal.U", 1, 1, 211, 1024)
DeclareVariable("pipehSD13.vol.dynBal.mOut", "Mass of the component [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipehSD13.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_13.port_a.m_flow", 1, 5, 3896, 1156)
DeclareAlias2("pipehSD13.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_13.port_a.p", 1, 5, 3897, 1028)
DeclareAlias2("pipehSD13.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipehSD13.ports_b[1].h_outflow", 1, 5, 12315, 1028)
DeclareAlias2("pipehSD13.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "SimpleDistrict_13.port_a.m_flow", -1, 5, 3896, 1156)
DeclareAlias2("pipehSD13.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "SimpleDistrict_13.port_a.p", 1, 5, 3897, 1028)
DeclareAlias2("pipehSD13.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "pipehSD13.ports_b[1].h_outflow", 1, 5, 12315, 1028)
DeclareVariable("pipehSD13.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("pipehSD13.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_13.port_a.p", 1, 5, 3897, 1024)
DeclareAlias2("pipehSD13.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "pipehSD13.ports_b[1].h_outflow", 1, 5, 12315, 1024)
DeclareAlias2("pipehSD13.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "pipehSD13.ports_b[1].h_outflow", 1, 5, 12315, 1024)
DeclareVariable("pipehSD13.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("pipehSD13.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "SimpleDistrict_13.port_a.p", 1, 5, 3897, 1024)
DeclareAlias2("pipehSD13.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "pipehSD13.vol.dynBal.medium.T", 1, 5, 16128, 1024)
DeclareVariable("pipehSD13.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD13.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD13.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipehSD13.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("pipehSD13.vol.dynBal.U", "Internal energy of fluid [J]", 211, 0.0,\
 0.0,0.0,100000.0,0,2592)
DeclareDerivative("pipehSD13.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("pipehSD13.vol.dynBal.m", "Mass of fluid [kg]", 7.7339307269862045,\
 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("pipehSD13.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "pipehSD13.vol.dynBal.der(U)", 1, 6, 211, 1024)
DeclareVariable("pipehSD13.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipehSD13.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("pipehSD13.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false,\
 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD13.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("pipehSD13.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("pipehSD13.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("hea.vol.dynBal.energyDynamics", "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("hea.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("hea.vol.dynBal.substanceDynamics", "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("hea.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("hea.vol.dynBal.p_start", "Start value of pressure [Pa|bar]", 300000,\
 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("hea.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("hea.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("hea.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("hea.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("hea.vol.dynBal.simplify_mWat_flow", "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("hea.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]", 2,\
 0.0,0.0,0.0,0,2565)
DeclareVariable("hea.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("hea.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("hea.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "hea.Q_flow", 1, 5, 12577, 1024)
DeclareAlias2("hea.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "hea.port_a.h_outflow", 1, 5, 12511, 1024)
DeclareAlias2("hea.vol.dynBal.UOut", "Internal energy of the component [J]", \
"hea.vol.dynBal.U", 1, 1, 212, 1024)
DeclareVariable("hea.vol.dynBal.mOut", "Mass of the component [kg]", 150.0, 0.0,\
1E+100,0.0,0,2561)
DeclareAlias2("hea.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "hea.port_a.m_flow", 1, 5, 12509, 1156)
DeclareAlias2("hea.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "hea.port_b.p", 1, 5, 12512, 1028)
DeclareAlias2("hea.vol.dynBal.ports[1].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "hea.port_a.h_outflow", 1, 5, 12511, 1028)
DeclareAlias2("hea.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "hea.port_a.m_flow", -1, 5, 12509, 1156)
DeclareAlias2("hea.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "hea.port_b.p", 1, 5, 12512, 1028)
DeclareAlias2("hea.vol.dynBal.ports[2].h_outflow", "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "hea.port_a.h_outflow", 1, 5, 12511, 1028)
DeclareVariable("hea.vol.dynBal.medium.T", "Temperature of medium [K|degC]", \
300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("hea.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "hea.port_b.p", 1, 5, 12512, 1024)
DeclareAlias2("hea.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]", \
"hea.port_a.h_outflow", 1, 5, 12511, 1024)
DeclareAlias2("hea.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "hea.port_a.h_outflow", 1, 5, 12511, 1024)
DeclareVariable("hea.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]", \
995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("hea.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("hea.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("hea.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("hea.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "hea.port_b.p", 1, 5, 12512, 1024)
DeclareAlias2("hea.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "hea.vol.dynBal.medium.T", 1, 5, 16167, 1024)
DeclareVariable("hea.vol.dynBal.medium.preferredMediumStates", "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("hea.vol.dynBal.medium.standardOrderComponents", \
"If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("hea.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("hea.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("hea.vol.dynBal.U", "Internal energy of fluid [J]", 212, 0.0, \
0.0,0.0,100000.0,0,2592)
DeclareDerivative("hea.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]", \
0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("hea.vol.dynBal.m", "Mass of fluid [kg]", 150.0, 0.0,1E+100,0.0,\
0,2561)
DeclareVariable("hea.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("hea.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("hea.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("hea.vol.dynBal.fluidVolume", "Volume [m3]", 0.15066503546654936,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("hea.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("hea.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("hea.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, -100000000.0,\
100000000.0,1000.0,0,2560)
DeclareVariable("hea.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("hea.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("hea.vol.dynBal.computeCSen", "[:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,2563)
DeclareVariable("hea.vol.dynBal.state_default.p", "Absolute pressure of medium [Pa|bar]",\
 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("hea.vol.dynBal.state_default.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("hea.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("hea.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("hea.vol.dynBal._simplify_mWat_flow", "If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("hea.vol.dynBal.mWat_flow_internal", "Needed to connect to conditional connector [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 3, 0.0,0.0,0.0,0,2565)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "plugFlowPipe_IBPSA4.ports_b[1].h_outflow", 1, 5, 12598, 1024)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "plugFlowPipe_IBPSA4.vol.dynBal.U", 1, 1, 213, 1024)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.mOut", "Mass of the component [kg]",\
 7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "hea.port_a.m_flow", 1, 5, 12509, 1156)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "bou.p", 1, 7, 1590, 1028)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA4.ports_b[1].h_outflow", 1, 5, 12598, 1028)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "plugFlowPipe_IBPSA4.ports_b[1].m_flow", 1, 5, 12597, 1156)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "bou.p", 1, 7, 1590, 1028)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA4.ports_b[1].h_outflow", 1, 5, 12598, 1028)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipeid.port_a.m_flow", -1, 5, 9004, 1156)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "bou.p", 1, 7, 1590, 1028)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.ports[3].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA4.ports_b[1].h_outflow", 1, 5, 12598, 1028)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "bou.p", 1, 7, 1590, 1024)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "plugFlowPipe_IBPSA4.ports_b[1].h_outflow", 1, 5, 12598, 1024)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "plugFlowPipe_IBPSA4.ports_b[1].h_outflow", 1, 5, 12598, 1024)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "bou.p", 1, 7, 1590, 1024)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "plugFlowPipe_IBPSA4.vol.dynBal.medium.T", 1, 5, 16208, 1024)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareState("plugFlowPipe_IBPSA4.vol.dynBal.U", "Internal energy of fluid [J]",\
 213, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("plugFlowPipe_IBPSA4.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.m", "Mass of fluid [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("plugFlowPipe_IBPSA4.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "plugFlowPipe_IBPSA4.vol.dynBal.der(U)", 1, 6, 213, 1024)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA4.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.massDynamics", "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.traceDynamics", "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 300000, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.simplify_mWat_flow", \
"Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero. Used only if Medium.nX > 1 [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 3, 0.0,0.0,0.0,0,2565)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.use_mWat_flow", "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.use_C_flow", "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "plugFlowPipe_IBPSA9.ports_b[1].h_outflow", 1, 5, 12763, 1024)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.UOut", "Internal energy of the component [J]",\
 "plugFlowPipe_IBPSA9.vol.dynBal.U", 1, 1, 214, 1024)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.mOut", "Mass of the component [kg]",\
 7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "hea.port_a.m_flow", -1, 5, 12509, 1156)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehi.port_a.p", 1, 5, 4962, 1028)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA9.ports_b[1].h_outflow", 1, 5, 12763, 1028)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipehi.port_a.m_flow", -1, 5, 4961, 1156)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehi.port_a.p", 1, 5, 4962, 1028)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA9.ports_b[1].h_outflow", 1, 5, 12763, 1028)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "pipedi.port_a.m_flow", -1, 5, 5130, 1156)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "pipehi.port_a.p", 1, 5, 4962, 1028)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.ports[3].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "plugFlowPipe_IBPSA9.ports_b[1].h_outflow", 1, 5, 12763, 1028)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "pipehi.port_a.p", 1, 5, 4962, 1024)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "plugFlowPipe_IBPSA9.ports_b[1].h_outflow", 1, 5, 12763, 1024)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "plugFlowPipe_IBPSA9.ports_b[1].h_outflow", 1, 5, 12763, 1024)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "pipehi.port_a.p", 1, 5, 4962, 1024)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "plugFlowPipe_IBPSA9.vol.dynBal.medium.T", 1, 5, 16249, 1024)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("plugFlowPipe_IBPSA9.vol.dynBal.U", "Internal energy of fluid [J]",\
 214, 0.0, 0.0,0.0,100000.0,0,2592)
DeclareDerivative("plugFlowPipe_IBPSA9.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.m", "Mass of fluid [kg]", \
7.7339307269862045, 0.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("plugFlowPipe_IBPSA9.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "plugFlowPipe_IBPSA9.vol.dynBal.der(U)", 1, 6, 214, 1024)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.fluidVolume", "Volume [m3]", \
0.007768219648514749, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.ports_H_flow[3]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal._simplify_mWat_flow", \
"If true, then port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero, and equations are simplified [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("plugFlowPipe_IBPSA9.vol.dynBal.mWat_flow_internal", \
"Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
EndNonAlias(17)
PreNonAliasNew(18)
