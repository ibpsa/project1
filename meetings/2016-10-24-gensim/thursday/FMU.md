# Example for exporting and importing FMUs

This example exports FMUs for controllers and for HVAC
systems, and imports them in a system model.

## Exporting and importing the controller as an FMU

This step will export the controller as an FMU, and then import the FMU.
While this typically will be done across different tools, we will here
use Dymola to export the controller, and then import the controller again in Dymola.
The main purpose is to illustrate and get hands-on experience of the work flow.

The first part of the example consists of the following steps:

1. Copy `Buildings.Fluid.HeatExchangers.Examples.AirHeater_T`
1. Store the controller `conPI` and `tab` in a separate control model,
   and call it, for example, `con`.
1. Export the controller `con` as an FMU for Model Exchange, version 2.0.
1. Delete the blocks `conPI` and `tab` from the system model,
   and import the FMU for the controller. In Dymola, this can be
   done using `File -> Import -> FMU ...`
1. Insert the FMU in the `AirHeater_T` model and simulate it.


## Exporting and importing the heater as an FMU

Next, we will export the heater `hea`.
Because FMUs require input and output signals, the heater
needs to be encapsulated in an input/output block.
Search the `Buildings` library for the model `HeaterCooler_T`,
which can be used for this purpose (after changing the `Medium` model).
Alternatively, you can create your own input/output container
using the `ReplaceableTwoPort` block for the latest development version of `Buildings`,
or `TwoPortComponent` for `Buildings`, version 3.0.

Next, proceed as follows:

1. Export the heater as an FMU.
1. Delete the heater from the system model, and import the FMU.
1. Connect the FMU to the system model using the `Inlet` and `Outlet` models if you are
   using the latest development version of `Buildings`,
   or using `InletAdaptor` and `OutletAdaptor` if you are using version 3.0 of `Buildings`.
