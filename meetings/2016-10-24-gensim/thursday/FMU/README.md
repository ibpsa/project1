# Example for exporting and importing FMUs

This example exports an FMU for a controller
and imports it in a system model.


While this typically will be done across different tools, we will here
use Dymola to export the controller, and then import the controller again in Dymola.
The main purpose is to illustrate and get hands-on experience of the work flow.

The example consists of the following steps:

1. Unzip the file `ExampleFMU.zip`, and open the Modelica model in this file.
1. Store the controller `conPI` and `tab` in a separate control model,
   and call it, for example, `con`.
1. Export the controller `con` as an FMU for Model Exchange, version 2.0.
1. Delete the blocks `conPI` and `tab` from the system model,
   and import the FMU for the controller. In Dymola, this can be
   done using `File -> Import -> FMU ...`
1. Insert the FMU in the `AirHeater_T` model and simulate it.

Verify that you get the same response as for the original model.
