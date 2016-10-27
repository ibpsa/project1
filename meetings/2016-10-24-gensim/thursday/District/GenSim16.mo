within ;
package GenSim16 "Preconfigured models for workshop"

  package TeaserOutput

    package GenSim1
      extends Modelica.Icons.Package;

      package GenSim1_Models
        extends Modelica.Icons.Package;

        model GenSim1_SingleDwelling
          "This is the simulation model of GenSim1_SingleDwelling"

          Annex60.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(
            calTSky=Annex60.BoundaryConditions.Types.SkyTemperatureCalculation.HorizontalRadiation,
            computeWetBulbTemperature=false,
            filNam="modelica://Annex60/Resources/weatherdata/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.mos")
            "Weather data reader"
            annotation (Placement(transformation(extent={{-98,52},{-78,72}})));
          Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil[4](
            each outSkyCon=true,
            each outGroCon=true,
            til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
            each lat = 0.886199060934,
            azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
            "Calculates diffuse solar radiation on titled surface for all directions"
            annotation (Placement(transformation(extent={{-68,20},{-48,40}})));
          Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil[4](
            til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
            each lat = 0.886199060934,
            azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
            "Calculates direct solar radiation on titled surface for all directions"
            annotation (Placement(transformation(extent={{-68,52},{-48,72}})));
          Annex60.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane(n=4, UWin=3.00178213411)
            "Correction factor for solar transmission"
            annotation (Placement(transformation(extent={{6,54},{26,74}})));
          Annex60.ThermalZones.ReducedOrder.RC.FourElements
          thermalZoneFourElements(
            redeclare package Medium = Modelica.Media.Air.DryAirNasa,
            VAir=700.0,
            alphaExt=7.7,
            alphaWin=2.7,
            gWin=0.78,
            ratioWinConRad=0.03,
            nExt=1,
            RExt={8.36834700275e-05},
            CExt={112562287.468},
            alphaRad=1.88401192629,
            AInt=850.0,
            alphaInt=7.3862745098,
            nInt=1,
            RInt={8.52806303223e-05},
            CInt={166615280.217},
            RWin=0.00508163265306,
            RExtRem=0.00328107522806,
            AFloor=88.6666666667,
            alphaFloor=1.7,
            nFloor=1,
            RFloor={0.000279377968631},
            RFloorRem=0.00635864566187,
            CFloor={8338227.97378},
            ARoof=115.266666667,
            alphaRoof=1.7,
            nRoof=1,
            RRoof={0.000172080544051},
            RRoofRem=0.0140805840846,
            CRoof={41604110.8381},
            energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
            extWallRC(thermCapExt(each der_T(fixed=true))),
            intWallRC(thermCapInt(each der_T(fixed=true))),
            floorRC(thermCapExt(each der_T(fixed=true))),
            roofRC(thermCapExt(each der_T(fixed=true))),
            nOrientations=4,
            AWin={10.0, 10.0, 10.0, 10.0},
            ATransparent={10.0, 10.0, 10.0, 10.0},
            AExt={67.5, 67.5, 67.5, 67.5}) "Thermal zone"
            annotation (Placement(transformation(extent={{44,-2},{92,34}})));
          Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp(
            n=4,
            wfGro=0.0,
            wfWall={0.25, 0.25, 0.25, 0.25},
            wfWin={0.25, 0.25, 0.25, 0.25},
            withLongwave=true,
            aExt=0.7,
            alphaWallOut=20.0,
            alphaRad=5.0,
            alphaWinOut=20.0,
            TGro=286.15) "Computes equivalent air temperature"
            annotation (Placement(transformation(extent={{-24,-14},{-4,6}})));
          Modelica.Blocks.Math.Add solRad[4]
            "Sums up solar radiation of both directions"
            annotation (Placement(transformation(extent={{-38,6},{-28,16}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature
            "Prescribed temperature for exterior walls outdoor surface temperature"
            annotation (Placement(transformation(extent={{8,-6},{20,6}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1
            "Prescribed temperature for windows outdoor surface temperature"
            annotation (Placement(transformation(extent={{8,14},{20,26}})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin
            "Outdoor convective heat transfer of windows"
            annotation (Placement(transformation(extent={{38,16},{28,26}})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall
            "Outdoor convective heat transfer of walls"
            annotation (Placement(transformation(extent={{36,6},{26,-4}})));
          Modelica.Blocks.Sources.Constant const[4](each k=0)
            "Sets sunblind signal to zero (open)"
            annotation (Placement(transformation(extent={{-20,14},{-14,20}})));
          Annex60.BoundaryConditions.WeatherData.Bus weaBus "Weather data bus"
            annotation (Placement(
            transformation(extent={{-100,-10},{-66,22}}),iconTransformation(
            extent={{-70,-12},{-50,8}})));
          Modelica.Blocks.Sources.Constant alphaWall(k=25.0
          *270.0)
            "Outdoor coefficient of heat transfer for walls"
            annotation (Placement(
            transformation(
            extent={{-4,-4},{4,4}},
            rotation=90,
            origin={30,-16})));
          Modelica.Blocks.Sources.Constant alphaWin(k=1000.0)
            "Outdoor coefficient of heat transfer for windows"
            annotation (Placement(
            transformation(
            extent={{4,-4},{-4,4}},
            rotation=90,
            origin={32,38})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsRad
            "Radiative heat flow of persons"
            annotation (Placement(transformation(extent={{48,-42},{68,-22}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsConv
            "Convective heat flow of persons"
            annotation (Placement(transformation(extent={{48,-62},{68,-42}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow machinesConv
            "Convective heat flow of machines"
            annotation (Placement(transformation(extent={{48,-84},{68,-64}})));
          Modelica.Blocks.Sources.CombiTimeTable internalGains(
            table=[0,0,0,0; 3600,0,0,0; 7200,0,0,0; 10800,0,0,0; 14400,0,0,0; 18000,0,0,
                0; 21600,0,0,0; 25200,0,0,0; 25200,80,80,200; 28800,80,80,200; 32400,80,
                80,200; 36000,80,80,200; 39600,80,80,200; 43200,80,80,200; 46800,80,80,200;
                50400,80,80,200; 54000,80,80,200; 57600,80,80,200; 61200,80,80,200; 61200,
                0,0,0; 64800,0,0,0; 72000,0,0,0; 75600,0,0,0; 79200,0,0,0; 82800,0,0,0;
                86400,0,0,0],
            columns={2,3,4},
            extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic) "Table with profiles for persons (radiative and convective) and machines
    (convective)"
            annotation (Placement(transformation(extent={{6,-60},{22,-44}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureFloor
            "Prescribed temperature for floor plate outdoor surface temperature"
            annotation (Placement(transformation(
            extent={{-6,-6},{6,6}},
            rotation=90,
            origin={67,-12})));
          Modelica.Blocks.Sources.Constant TSoil(k=286.15)
            "Outdoor surface temperature for floor plate"
            annotation (
            Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={84,-22})));

          Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007 eqAirTempVDI(
            aExt=0.7,
            wfGro=0,
            alphaWallOut=20.0,
            alphaRad=5.0,
            n=1,
            wfWall={1.0},
            wfWin={0},
            TGro=285.15) "Computes equivalent air temperature for roof"
            annotation (Placement(transformation(extent={{30,34},{50,54}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureRoof
            "Prescribed temperature for roof outdoor surface temperature"
            annotation (Placement(transformation(extent={{-6,-6},{6,6}},rotation=-90,
            origin={67,44})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorRoof
            "Outdoor convective heat transfer of roof"
            annotation (Placement(transformation(extent={{5,-5},{-5,5}},rotation=-90,
            origin={67,27})));
          Modelica.Blocks.Sources.Constant alphaRoof(k=2881.66666667)
            "Outdoor coefficient of heat transfer for roof"
            annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=0,
            origin={86,27})));
          Modelica.Blocks.Sources.Constant const1[1](each k=0)
            "Sets sunblind signal to zero (open)" annotation (Placement(transformation(
                extent={{3,-3},{-3,3}},
                rotation=90,
                origin={40,71})));
          Modelica.Blocks.Math.Add solRadRoof[1]
            "Sums up solar radiation of both directions"
            annotation (Placement(transformation(extent={{4,76},{14,86}})));
          Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTilRoof[1](
            til={0.0},
            each lat = 0.886199060934,
            azi={0.0})
            "Calculates direct solar radiation on titled surface for both directions"
            annotation (Placement(transformation(extent={{-68,74},{-48,94}})));
          Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTilRoof[1](
            til={0.0},
            each lat = 0.886199060934,
            azi={0.0})
            "Calculates diffuse solar radiation on titled surface for both directions"
            annotation (Placement(transformation(extent={{-68,48},{-48,68}})));

        equation
          connect(eqAirTemp.TEqAirWin, prescribedTemperature1.T)
            annotation (Line(
            points={{-3,-0.2},{0,-0.2},{0,20},{6.8,20}},   color={0,0,127}));
          connect(eqAirTemp.TEqAir, prescribedTemperature.T)
            annotation (Line(points={{-3,-4},{4,-4},{4,0},{6.8,0}},
            color={0,0,127}));
          connect(weaDat.weaBus, weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,18},{-84,18},{-84,12},{-83,12},{-83,6}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
          connect(weaBus.TDryBul, eqAirTemp.TDryBul)
            annotation (Line(
            points={{-83,6},{-83,-2},{-38,-2},{-38,-10},{-26,-10}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
          connect(internalGains.y[1], personsRad.Q_flow)
            annotation (Line(points={{22.8,
            -52},{28,-52},{28,-32},{48,-32}}, color={0,0,127}));
          connect(internalGains.y[2], personsConv.Q_flow)
            annotation (Line(points={{22.8,-52},{36,-52},{48,-52}}, color={0,0,127}));
          connect(internalGains.y[3], machinesConv.Q_flow)
            annotation (Line(points={{22.8,
            -52},{28,-52},{28,-74},{48,-74}}, color={0,0,127}));
          connect(const.y, eqAirTemp.sunblind)
            annotation (Line(points={{-13.7,17},{-12,17},{-12,8},{-14,8},{-14,8}},
            color={0,0,127}));
          connect(HDifTil.HSkyDifTil, corGDoublePane.HSkyDifTil)
            annotation (Line(
            points={{-47,36},{-28,36},{-6,36},{-6,66},{4,66}}, color={0,0,127}));
          connect(HDirTil.H, corGDoublePane.HDirTil)
            annotation (Line(points={{-47,62},{-10,62},{-10,70},{4,70}},
            color={0,0,127}));
          connect(HDirTil.H,solRad. u1)
            annotation (Line(points={{-47,62},{-42,62},{-42,
            14},{-39,14}}, color={0,0,127}));
          connect(HDirTil.inc, corGDoublePane.inc)
            annotation (Line(points={{-47,58},{4,58},{4,58}}, color={0,0,127}));
          connect(HDifTil.H,solRad. u2)
            annotation (Line(points={{-47,30},{-44,30},{-44,
            8},{-39,8}}, color={0,0,127}));
          connect(HDifTil.HGroDifTil, corGDoublePane.HGroDifTil)
            annotation (Line(
            points={{-47,24},{-4,24},{-4,62},{4,62}}, color={0,0,127}));
          connect(solRad.y, eqAirTemp.HSol)
            annotation (Line(points={{-27.5,11},{-26,11},{-26,2},{-26,2}},
            color={0,0,127}));
            connect(weaDat.weaBus, HDifTil[1].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[1].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[2].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[2].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[3].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[3].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[4].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[4].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
          connect(personsRad.port, thermalZoneFourElements.intGainsRad)
            annotation (Line(
            points={{68,-32},{84,-32},{100,-32},{100,24},{92,24}},
            color={191,0,0}));
          connect(thermalConductorWin.solid, thermalZoneFourElements.window)
            annotation (
             Line(points={{38,21},{40,21},{40,20},{44,20}},   color={191,0,0}));
          connect(prescribedTemperature1.port, thermalConductorWin.fluid)
            annotation (Line(points={{20,20},{28,20},{28,21}}, color={191,0,0}));
          connect(thermalZoneFourElements.extWall, thermalConductorWall.solid)
            annotation (Line(points={{44,12},{40,12},{40,1},{36,1}},
            color={191,0,0}));
          connect(thermalConductorWall.fluid, prescribedTemperature.port)
            annotation (Line(points={{26,1},{24,1},{24,0},{20,0}}, color={191,0,0}));
          connect(alphaWall.y, thermalConductorWall.Gc)
            annotation (Line(points={{30,-11.6},{30,-4},{31,-4}}, color={0,0,127}));
          connect(alphaWin.y, thermalConductorWin.Gc)
            annotation (Line(points={{32,33.6},{32,26},{33,26}}, color={0,0,127}));
          connect(weaBus.TBlaSky, eqAirTemp.TBlaSky)
            annotation (Line(
            points={{-83,6},{-58,6},{-58,2},{-32,2},{-32,-4},{-26,-4}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
          connect(machinesConv.port, thermalZoneFourElements.intGainsConv)
            annotation (
            Line(points={{68,-74},{82,-74},{96,-74},{96,20},{92,20}}, color={191,
            0,0}));
          connect(personsConv.port, thermalZoneFourElements.intGainsConv)
            annotation (
            Line(points={{68,-52},{96,-52},{96,20},{92,20}}, color={191,0,0}));
          connect(corGDoublePane.solarRadWinTrans, thermalZoneFourElements.solRad)
            annotation (Line(points={{27,64},{34,64},{40,64},{40,31},{43,31}}, color={0,
            0,127}));
          connect(prescribedTemperatureFloor.port, thermalZoneFourElements.floor)
            annotation (Line(points={{67,-6},{68,-6},{68,-2}}, color={191,0,0}));
          connect(prescribedTemperatureFloor.T, TSoil.y) annotation (Line(points={{67,-19.2},
                  {72.5,-19.2},{72.5,-22},{79.6,-22}}, color={0,0,127}));
          connect(prescribedTemperatureRoof.port, thermalConductorRoof.fluid)
            annotation (Line(points={{67,38},{67,38},{67,32}}, color={191,0,0}));
          connect(thermalConductorRoof.solid, thermalZoneFourElements.roof)
            annotation (Line(points={{67,22},{66.9,22},{66.9,34}}, color={191,0,0}));
          connect(thermalConductorRoof.Gc, alphaRoof.y)
            annotation (Line(points={{72,27},{78,27},{81.6,27}},color={0,0,127}));
          connect(eqAirTempVDI.TDryBul, eqAirTemp.TDryBul)
            annotation (Line(points={{28,38},{-96,38},{-96,-36},{-38,-36},{-38,
                  -10},{-26,-10}},
            color={0,0,127}));
          connect(eqAirTempVDI.TBlaSky, eqAirTemp.TBlaSky)
            annotation (Line(points={{28,44},{-34,44},{-98,44},{-98,-42},{-58,
                  -42},{-58,-32},{-32,-32},{-32,-4},{-26,-4}},
            color={0,0,127}));
          connect(const1.y, eqAirTempVDI.sunblind)
            annotation (Line(points={{40,67.7},{40,56}}, color={0,0,127}));
          connect(eqAirTempVDI.TEqAir, prescribedTemperatureRoof.T) annotation (Line(
                points={{51,44},{56,44},{56,58},{67,58},{67,51.2}}, color={0,0,127}));
          connect(weaDat.weaBus, HDifTilRoof[1].weaBus) annotation (Line(
              points={{-78,62},{-74,62},{-74,58},{-68,58}},
              color={255,204,51},
              thickness=0.5));
          connect(weaDat.weaBus, HDirTilRoof[1].weaBus) annotation (Line(
              points={{-78,62},{-74,62},{-74,84},{-68,84}},
              color={255,204,51},
              thickness=0.5));
          connect(HDirTilRoof.H, solRadRoof.u1)
            annotation (Line(points={{-47,84},{-22,84},{3,84}}, color={0,0,127}));
          connect(HDifTilRoof.H, solRadRoof.u2) annotation (Line(points={{-47,58},{-22,
                  58},{-22,78},{3,78}}, color={0,0,127}));
          connect(eqAirTempVDI.HSol, solRadRoof.y) annotation (Line(points={{28,50},
                  {6,50},{6,46},{14.5,46},{14.5,81}},
                                                   color={0,0,127}), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
          annotation (experiment(
          StopTime=31536000,
          Interval=3600));
        end GenSim1_SingleDwelling;

      end GenSim1_Models;
    end GenSim1;

    package GenSim2
      extends Modelica.Icons.Package;

      package GenSim2_Models
        extends Modelica.Icons.Package;

        model GenSim2_SingleDwelling
          "This is the simulation model of GenSim2_SingleDwelling"

          Annex60.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(
            calTSky=Annex60.BoundaryConditions.Types.SkyTemperatureCalculation.HorizontalRadiation,
            computeWetBulbTemperature=false,
            filNam="modelica://Annex60/Resources/weatherdata/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.mos")
            "Weather data reader"
            annotation (Placement(transformation(extent={{-98,52},{-78,72}})));
          Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil[4](
            each outSkyCon=true,
            each outGroCon=true,
            til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
            each lat = 0.886199060934,
            azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
            "Calculates diffuse solar radiation on titled surface for all directions"
            annotation (Placement(transformation(extent={{-68,20},{-48,40}})));
          Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil[4](
            til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
            each lat = 0.886199060934,
            azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
            "Calculates direct solar radiation on titled surface for all directions"
            annotation (Placement(transformation(extent={{-68,52},{-48,72}})));
          Annex60.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane(n=4, UWin=3.00178213411)
            "Correction factor for solar transmission"
            annotation (Placement(transformation(extent={{6,54},{26,74}})));
          Annex60.ThermalZones.ReducedOrder.RC.FourElements
          thermalZoneFourElements(
            redeclare package Medium = Modelica.Media.Air.DryAirNasa,
            VAir=450.0,
            alphaExt=7.7,
            alphaWin=2.7,
            gWin=0.78,
            ratioWinConRad=0.03,
            nExt=1,
            RExt={0.000539007758004},
            CExt={33400326.1424},
            alphaRad=2.24676823033,
            AInt=525.0,
            alphaInt=7.41428571429,
            nInt=1,
            RInt={0.0001227217627},
            CInt={65385409.0653},
            RWin=0.00677551020408,
            RExtRem=0.00260342673058,
            AFloor=99.75,
            alphaFloor=1.7,
            nFloor=1,
            RFloor={0.001514059939},
            RFloorRem=0.00189305925759,
            CFloor={18920952.1169},
            ARoof=129.675,
            alphaRoof=1.7,
            nRoof=1,
            RRoof={0.000211022435786},
            RRoofRem=0.0025780912845,
            CRoof={41849723.3004},
            energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
            extWallRC(thermCapExt(each der_T(fixed=true))),
            intWallRC(thermCapInt(each der_T(fixed=true))),
            floorRC(thermCapExt(each der_T(fixed=true))),
            roofRC(thermCapExt(each der_T(fixed=true))),
            nOrientations=4,
            AWin={7.5, 7.5, 7.5, 7.5},
            ATransparent={7.5, 7.5, 7.5, 7.5},
            AExt={42.25, 42.25, 42.25, 42.25}) "Thermal zone"
            annotation (Placement(transformation(extent={{44,-2},{92,34}})));
          Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp(
            n=4,
            wfGro=0.0,
            wfWall={0.25, 0.25, 0.25, 0.25},
            wfWin={0.25, 0.25, 0.25, 0.25},
            withLongwave=true,
            aExt=0.7,
            alphaWallOut=20.0,
            alphaRad=5.0,
            alphaWinOut=20.0,
            TGro=286.15) "Computes equivalent air temperature"
            annotation (Placement(transformation(extent={{-24,-14},{-4,6}})));
          Modelica.Blocks.Math.Add solRad[4]
            "Sums up solar radiation of both directions"
            annotation (Placement(transformation(extent={{-38,6},{-28,16}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature
            "Prescribed temperature for exterior walls outdoor surface temperature"
            annotation (Placement(transformation(extent={{8,-6},{20,6}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1
            "Prescribed temperature for windows outdoor surface temperature"
            annotation (Placement(transformation(extent={{8,14},{20,26}})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin
            "Outdoor convective heat transfer of windows"
            annotation (Placement(transformation(extent={{38,16},{28,26}})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall
            "Outdoor convective heat transfer of walls"
            annotation (Placement(transformation(extent={{36,6},{26,-4}})));
          Modelica.Blocks.Sources.Constant const[4](each k=0)
            "Sets sunblind signal to zero (open)"
            annotation (Placement(transformation(extent={{-20,14},{-14,20}})));
          Annex60.BoundaryConditions.WeatherData.Bus weaBus "Weather data bus"
            annotation (Placement(
            transformation(extent={{-100,-10},{-66,22}}),iconTransformation(
            extent={{-70,-12},{-50,8}})));
          Modelica.Blocks.Sources.Constant alphaWall(k=25.0
          *169.0)
            "Outdoor coefficient of heat transfer for walls"
            annotation (Placement(
            transformation(
            extent={{-4,-4},{4,4}},
            rotation=90,
            origin={30,-16})));
          Modelica.Blocks.Sources.Constant alphaWin(k=750.0)
            "Outdoor coefficient of heat transfer for windows"
            annotation (Placement(
            transformation(
            extent={{4,-4},{-4,4}},
            rotation=90,
            origin={32,38})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsRad
            "Radiative heat flow of persons"
            annotation (Placement(transformation(extent={{48,-42},{68,-22}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsConv
            "Convective heat flow of persons"
            annotation (Placement(transformation(extent={{48,-62},{68,-42}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow machinesConv
            "Convective heat flow of machines"
            annotation (Placement(transformation(extent={{48,-84},{68,-64}})));
          Modelica.Blocks.Sources.CombiTimeTable internalGains(
            table=[0,0,0,0; 3600,0,0,0; 7200,0,0,0; 10800,0,0,0; 14400,0,0,0; 18000,0,0,
                0; 21600,0,0,0; 25200,0,0,0; 25200,80,80,200; 28800,80,80,200; 32400,80,
                80,200; 36000,80,80,200; 39600,80,80,200; 43200,80,80,200; 46800,80,80,200;
                50400,80,80,200; 54000,80,80,200; 57600,80,80,200; 61200,80,80,200; 61200,
                0,0,0; 64800,0,0,0; 72000,0,0,0; 75600,0,0,0; 79200,0,0,0; 82800,0,0,0;
                86400,0,0,0],
            columns={2,3,4},
            extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic) "Table with profiles for persons (radiative and convective) and machines
    (convective)"
            annotation (Placement(transformation(extent={{6,-60},{22,-44}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureFloor
            "Prescribed temperature for floor plate outdoor surface temperature"
            annotation (Placement(transformation(
            extent={{-6,-6},{6,6}},
            rotation=90,
            origin={67,-12})));
          Modelica.Blocks.Sources.Constant TSoil(k=286.15)
            "Outdoor surface temperature for floor plate"
            annotation (
            Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={84,-22})));

          Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007 eqAirTempVDI(
            aExt=0.7,
            wfGro=0,
            alphaWallOut=20.0,
            alphaRad=5.0,
            n=1,
            wfWall={1.0},
            wfWin={0},
            TGro=285.15) "Computes equivalent air temperature for roof"
            annotation (Placement(transformation(extent={{30,34},{50,54}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureRoof
            "Prescribed temperature for roof outdoor surface temperature"
            annotation (Placement(transformation(extent={{-6,-6},{6,6}},rotation=-90,
            origin={67,44})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorRoof
            "Outdoor convective heat transfer of roof"
            annotation (Placement(transformation(extent={{5,-5},{-5,5}},rotation=-90,
            origin={67,27})));
          Modelica.Blocks.Sources.Constant alphaRoof(k=3241.875)
            "Outdoor coefficient of heat transfer for roof"
            annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=0,
            origin={86,27})));
          Modelica.Blocks.Sources.Constant const1[1](each k=0)
            "Sets sunblind signal to zero (open)" annotation (Placement(transformation(
                extent={{3,-3},{-3,3}},
                rotation=90,
                origin={40,71})));
          Modelica.Blocks.Math.Add solRadRoof[1]
            "Sums up solar radiation of both directions"
            annotation (Placement(transformation(extent={{4,76},{14,86}})));
          Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTilRoof[1](
            til={0.0},
            each lat = 0.886199060934,
            azi={0.0})
            "Calculates direct solar radiation on titled surface for both directions"
            annotation (Placement(transformation(extent={{-68,74},{-48,94}})));
          Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTilRoof[1](
            til={0.0},
            each lat = 0.886199060934,
            azi={0.0})
            "Calculates diffuse solar radiation on titled surface for both directions"
            annotation (Placement(transformation(extent={{-68,48},{-48,68}})));

        equation
          connect(eqAirTemp.TEqAirWin, prescribedTemperature1.T)
            annotation (Line(
            points={{-3,-0.2},{0,-0.2},{0,20},{6.8,20}},   color={0,0,127}));
          connect(eqAirTemp.TEqAir, prescribedTemperature.T)
            annotation (Line(points={{-3,-4},{4,-4},{4,0},{6.8,0}},
            color={0,0,127}));
          connect(weaDat.weaBus, weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,18},{-84,18},{-84,12},{-83,12},{-83,6}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
          connect(weaBus.TDryBul, eqAirTemp.TDryBul)
            annotation (Line(
            points={{-83,6},{-83,-2},{-38,-2},{-38,-10},{-26,-10}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
          connect(internalGains.y[1], personsRad.Q_flow)
            annotation (Line(points={{22.8,
            -52},{28,-52},{28,-32},{48,-32}}, color={0,0,127}));
          connect(internalGains.y[2], personsConv.Q_flow)
            annotation (Line(points={{22.8,-52},{36,-52},{48,-52}}, color={0,0,127}));
          connect(internalGains.y[3], machinesConv.Q_flow)
            annotation (Line(points={{22.8,
            -52},{28,-52},{28,-74},{48,-74}}, color={0,0,127}));
          connect(const.y, eqAirTemp.sunblind)
            annotation (Line(points={{-13.7,17},{-12,17},{-12,8},{-14,8},{-14,8}},
            color={0,0,127}));
          connect(HDifTil.HSkyDifTil, corGDoublePane.HSkyDifTil)
            annotation (Line(
            points={{-47,36},{-28,36},{-6,36},{-6,66},{4,66}}, color={0,0,127}));
          connect(HDirTil.H, corGDoublePane.HDirTil)
            annotation (Line(points={{-47,62},{-10,62},{-10,70},{4,70}},
            color={0,0,127}));
          connect(HDirTil.H,solRad. u1)
            annotation (Line(points={{-47,62},{-42,62},{-42,
            14},{-39,14}}, color={0,0,127}));
          connect(HDirTil.inc, corGDoublePane.inc)
            annotation (Line(points={{-47,58},{4,58},{4,58}}, color={0,0,127}));
          connect(HDifTil.H,solRad. u2)
            annotation (Line(points={{-47,30},{-44,30},{-44,
            8},{-39,8}}, color={0,0,127}));
          connect(HDifTil.HGroDifTil, corGDoublePane.HGroDifTil)
            annotation (Line(
            points={{-47,24},{-4,24},{-4,62},{4,62}}, color={0,0,127}));
          connect(solRad.y, eqAirTemp.HSol)
            annotation (Line(points={{-27.5,11},{-26,11},{-26,2},{-26,2}},
            color={0,0,127}));
            connect(weaDat.weaBus, HDifTil[1].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[1].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[2].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[2].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[3].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[3].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[4].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[4].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
          connect(personsRad.port, thermalZoneFourElements.intGainsRad)
            annotation (Line(
            points={{68,-32},{84,-32},{100,-32},{100,24},{92,24}},
            color={191,0,0}));
          connect(thermalConductorWin.solid, thermalZoneFourElements.window)
            annotation (
             Line(points={{38,21},{40,21},{40,20},{44,20}},   color={191,0,0}));
          connect(prescribedTemperature1.port, thermalConductorWin.fluid)
            annotation (Line(points={{20,20},{28,20},{28,21}}, color={191,0,0}));
          connect(thermalZoneFourElements.extWall, thermalConductorWall.solid)
            annotation (Line(points={{44,12},{40,12},{40,1},{36,1}},
            color={191,0,0}));
          connect(thermalConductorWall.fluid, prescribedTemperature.port)
            annotation (Line(points={{26,1},{24,1},{24,0},{20,0}}, color={191,0,0}));
          connect(alphaWall.y, thermalConductorWall.Gc)
            annotation (Line(points={{30,-11.6},{30,-4},{31,-4}}, color={0,0,127}));
          connect(alphaWin.y, thermalConductorWin.Gc)
            annotation (Line(points={{32,33.6},{32,26},{33,26}}, color={0,0,127}));
          connect(weaBus.TBlaSky, eqAirTemp.TBlaSky)
            annotation (Line(
            points={{-83,6},{-58,6},{-58,2},{-32,2},{-32,-4},{-26,-4}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
          connect(machinesConv.port, thermalZoneFourElements.intGainsConv)
            annotation (
            Line(points={{68,-74},{82,-74},{96,-74},{96,20},{92,20}}, color={191,
            0,0}));
          connect(personsConv.port, thermalZoneFourElements.intGainsConv)
            annotation (
            Line(points={{68,-52},{96,-52},{96,20},{92,20}}, color={191,0,0}));
          connect(corGDoublePane.solarRadWinTrans, thermalZoneFourElements.solRad)
            annotation (Line(points={{27,64},{34,64},{40,64},{40,31},{43,31}}, color={0,
            0,127}));
          connect(prescribedTemperatureFloor.port, thermalZoneFourElements.floor)
            annotation (Line(points={{67,-6},{68,-6},{68,-2}}, color={191,0,0}));
          connect(prescribedTemperatureFloor.T, TSoil.y) annotation (Line(points={{67,-19.2},
                  {72.5,-19.2},{72.5,-22},{79.6,-22}}, color={0,0,127}));
          connect(prescribedTemperatureRoof.port, thermalConductorRoof.fluid)
            annotation (Line(points={{67,38},{67,38},{67,32}}, color={191,0,0}));
          connect(thermalConductorRoof.solid, thermalZoneFourElements.roof)
            annotation (Line(points={{67,22},{66.9,22},{66.9,34}}, color={191,0,0}));
          connect(thermalConductorRoof.Gc, alphaRoof.y)
            annotation (Line(points={{72,27},{78,27},{81.6,27}},color={0,0,127}));
          connect(eqAirTempVDI.TDryBul, eqAirTemp.TDryBul)
            annotation (Line(points={{28,38},{-96,38},{-96,-36},{-38,-36},{-38,
                  -10},{-26,-10}},
            color={0,0,127}));
          connect(eqAirTempVDI.TBlaSky, eqAirTemp.TBlaSky)
            annotation (Line(points={{28,44},{-34,44},{-98,44},{-98,-42},{-58,
                  -42},{-58,-32},{-32,-32},{-32,-4},{-26,-4}},
            color={0,0,127}));
          connect(const1.y, eqAirTempVDI.sunblind)
            annotation (Line(points={{40,67.7},{40,56}}, color={0,0,127}));
          connect(eqAirTempVDI.TEqAir, prescribedTemperatureRoof.T) annotation (Line(
                points={{51,44},{56,44},{56,58},{67,58},{67,51.2}}, color={0,0,127}));
          connect(weaDat.weaBus, HDifTilRoof[1].weaBus) annotation (Line(
              points={{-78,62},{-74,62},{-74,58},{-68,58}},
              color={255,204,51},
              thickness=0.5));
          connect(weaDat.weaBus, HDirTilRoof[1].weaBus) annotation (Line(
              points={{-78,62},{-74,62},{-74,84},{-68,84}},
              color={255,204,51},
              thickness=0.5));
          connect(HDirTilRoof.H, solRadRoof.u1)
            annotation (Line(points={{-47,84},{-22,84},{3,84}}, color={0,0,127}));
          connect(HDifTilRoof.H, solRadRoof.u2) annotation (Line(points={{-47,58},{-22,
                  58},{-22,78},{3,78}}, color={0,0,127}));
          connect(eqAirTempVDI.HSol, solRadRoof.y) annotation (Line(points={{28,50},
                  {6,50},{6,46},{14.5,46},{14.5,81}},
                                                   color={0,0,127}), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
          annotation (experiment(
          StopTime=31536000,
          Interval=3600));
        end GenSim2_SingleDwelling;

      end GenSim2_Models;
    end GenSim2;

    package GenSim3
      extends Modelica.Icons.Package;

      package GenSim3_Models
        extends Modelica.Icons.Package;

        model GenSim3_SingleDwelling
          "This is the simulation model of GenSim3_SingleDwelling"

          Annex60.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(
            calTSky=Annex60.BoundaryConditions.Types.SkyTemperatureCalculation.HorizontalRadiation,
            computeWetBulbTemperature=false,
            filNam="modelica://Annex60/Resources/weatherdata/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.mos")
            "Weather data reader"
            annotation (Placement(transformation(extent={{-98,52},{-78,72}})));
          Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil[4](
            each outSkyCon=true,
            each outGroCon=true,
            til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
            each lat = 0.886199060934,
            azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
            "Calculates diffuse solar radiation on titled surface for all directions"
            annotation (Placement(transformation(extent={{-68,20},{-48,40}})));
          Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil[4](
            til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
            each lat = 0.886199060934,
            azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
            "Calculates direct solar radiation on titled surface for all directions"
            annotation (Placement(transformation(extent={{-68,52},{-48,72}})));
          Annex60.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane(n=4, UWin=3.00178213411)
            "Correction factor for solar transmission"
            annotation (Placement(transformation(extent={{6,54},{26,74}})));
          Annex60.ThermalZones.ReducedOrder.RC.FourElements
          thermalZoneFourElements(
            redeclare package Medium = Modelica.Media.Air.DryAirNasa,
            VAir=540.0,
            alphaExt=7.7,
            alphaWin=2.7,
            gWin=0.78,
            ratioWinConRad=0.03,
            nExt=1,
            RExt={0.000498316800343},
            CExt={36127690.0522},
            alphaRad=2.10531152362,
            AInt=630.0,
            alphaInt=7.41428571429,
            nInt=1,
            RInt={0.000102268135583},
            CInt={78462490.8784},
            RWin=0.0056462585034,
            RExtRem=0.00240688795114,
            AFloor=119.7,
            alphaFloor=1.7,
            nFloor=1,
            RFloor={0.00126171661584},
            RFloorRem=0.00157754938132,
            CFloor={22705142.5403},
            ARoof=119.7,
            alphaRoof=1.7,
            nRoof=1,
            RRoof={0.000228607638768},
            RRoofRem=0.00279293222488,
            CRoof={38630513.8157},
            energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
            extWallRC(thermCapExt(each der_T(fixed=true))),
            intWallRC(thermCapInt(each der_T(fixed=true))),
            floorRC(thermCapExt(each der_T(fixed=true))),
            roofRC(thermCapExt(each der_T(fixed=true))),
            nOrientations=4,
            AWin={9.0, 9.0, 9.0, 9.0},
            ATransparent={9.0, 9.0, 9.0, 9.0},
            AExt={45.7, 45.7, 45.7, 45.7}) "Thermal zone"
            annotation (Placement(transformation(extent={{44,-2},{92,34}})));
          Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp(
            n=4,
            wfGro=0.0,
            wfWall={0.25, 0.25, 0.25, 0.25},
            wfWin={0.25, 0.25, 0.25, 0.25},
            withLongwave=true,
            aExt=0.7,
            alphaWallOut=20.0,
            alphaRad=5.0,
            alphaWinOut=20.0,
            TGro=286.15) "Computes equivalent air temperature"
            annotation (Placement(transformation(extent={{-24,-14},{-4,6}})));
          Modelica.Blocks.Math.Add solRad[4]
            "Sums up solar radiation of both directions"
            annotation (Placement(transformation(extent={{-38,6},{-28,16}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature
            "Prescribed temperature for exterior walls outdoor surface temperature"
            annotation (Placement(transformation(extent={{8,-6},{20,6}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1
            "Prescribed temperature for windows outdoor surface temperature"
            annotation (Placement(transformation(extent={{8,14},{20,26}})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin
            "Outdoor convective heat transfer of windows"
            annotation (Placement(transformation(extent={{38,16},{28,26}})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall
            "Outdoor convective heat transfer of walls"
            annotation (Placement(transformation(extent={{36,6},{26,-4}})));
          Modelica.Blocks.Sources.Constant const[4](each k=0)
            "Sets sunblind signal to zero (open)"
            annotation (Placement(transformation(extent={{-20,14},{-14,20}})));
          Annex60.BoundaryConditions.WeatherData.Bus weaBus "Weather data bus"
            annotation (Placement(
            transformation(extent={{-100,-10},{-66,22}}),iconTransformation(
            extent={{-70,-12},{-50,8}})));
          Modelica.Blocks.Sources.Constant alphaWall(k=25.0
          *182.8)
            "Outdoor coefficient of heat transfer for walls"
            annotation (Placement(
            transformation(
            extent={{-4,-4},{4,4}},
            rotation=90,
            origin={30,-16})));
          Modelica.Blocks.Sources.Constant alphaWin(k=900.0)
            "Outdoor coefficient of heat transfer for windows"
            annotation (Placement(
            transformation(
            extent={{4,-4},{-4,4}},
            rotation=90,
            origin={32,38})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsRad
            "Radiative heat flow of persons"
            annotation (Placement(transformation(extent={{48,-42},{68,-22}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsConv
            "Convective heat flow of persons"
            annotation (Placement(transformation(extent={{48,-62},{68,-42}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow machinesConv
            "Convective heat flow of machines"
            annotation (Placement(transformation(extent={{48,-84},{68,-64}})));
          Modelica.Blocks.Sources.CombiTimeTable internalGains(
            table=[0,0,0,0; 3600,0,0,0; 7200,0,0,0; 10800,0,0,0; 14400,0,0,0; 18000,0,0,
                0; 21600,0,0,0; 25200,0,0,0; 25200,80,80,200; 28800,80,80,200; 32400,80,
                80,200; 36000,80,80,200; 39600,80,80,200; 43200,80,80,200; 46800,80,80,200;
                50400,80,80,200; 54000,80,80,200; 57600,80,80,200; 61200,80,80,200; 61200,
                0,0,0; 64800,0,0,0; 72000,0,0,0; 75600,0,0,0; 79200,0,0,0; 82800,0,0,0;
                86400,0,0,0],
            columns={2,3,4},
            extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic) "Table with profiles for persons (radiative and convective) and machines
    (convective)"
            annotation (Placement(transformation(extent={{6,-60},{22,-44}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureFloor
            "Prescribed temperature for floor plate outdoor surface temperature"
            annotation (Placement(transformation(
            extent={{-6,-6},{6,6}},
            rotation=90,
            origin={67,-12})));
          Modelica.Blocks.Sources.Constant TSoil(k=286.15)
            "Outdoor surface temperature for floor plate"
            annotation (
            Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={84,-22})));

          Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007 eqAirTempVDI(
            aExt=0.7,
            wfGro=0,
            alphaWallOut=20.0,
            alphaRad=5.0,
            n=1,
            wfWall={1.0},
            wfWin={0},
            TGro=285.15) "Computes equivalent air temperature for roof"
            annotation (Placement(transformation(extent={{30,34},{50,54}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureRoof
            "Prescribed temperature for roof outdoor surface temperature"
            annotation (Placement(transformation(extent={{-6,-6},{6,6}},rotation=-90,
            origin={67,44})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorRoof
            "Outdoor convective heat transfer of roof"
            annotation (Placement(transformation(extent={{5,-5},{-5,5}},rotation=-90,
            origin={67,27})));
          Modelica.Blocks.Sources.Constant alphaRoof(k=2992.5)
            "Outdoor coefficient of heat transfer for roof"
            annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=0,
            origin={86,27})));
          Modelica.Blocks.Sources.Constant const1[1](each k=0)
            "Sets sunblind signal to zero (open)" annotation (Placement(transformation(
                extent={{3,-3},{-3,3}},
                rotation=90,
                origin={40,71})));
          Modelica.Blocks.Math.Add solRadRoof[1]
            "Sums up solar radiation of both directions"
            annotation (Placement(transformation(extent={{4,76},{14,86}})));
          Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTilRoof[1](
            til={0.0},
            each lat = 0.886199060934,
            azi={0.0})
            "Calculates direct solar radiation on titled surface for both directions"
            annotation (Placement(transformation(extent={{-68,74},{-48,94}})));
          Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTilRoof[1](
            til={0.0},
            each lat = 0.886199060934,
            azi={0.0})
            "Calculates diffuse solar radiation on titled surface for both directions"
            annotation (Placement(transformation(extent={{-68,48},{-48,68}})));

        equation
          connect(eqAirTemp.TEqAirWin, prescribedTemperature1.T)
            annotation (Line(
            points={{-3,-0.2},{0,-0.2},{0,20},{6.8,20}},   color={0,0,127}));
          connect(eqAirTemp.TEqAir, prescribedTemperature.T)
            annotation (Line(points={{-3,-4},{4,-4},{4,0},{6.8,0}},
            color={0,0,127}));
          connect(weaDat.weaBus, weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,18},{-84,18},{-84,12},{-83,12},{-83,6}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
          connect(weaBus.TDryBul, eqAirTemp.TDryBul)
            annotation (Line(
            points={{-83,6},{-83,-2},{-38,-2},{-38,-10},{-26,-10}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
          connect(internalGains.y[1], personsRad.Q_flow)
            annotation (Line(points={{22.8,
            -52},{28,-52},{28,-32},{48,-32}}, color={0,0,127}));
          connect(internalGains.y[2], personsConv.Q_flow)
            annotation (Line(points={{22.8,-52},{36,-52},{48,-52}}, color={0,0,127}));
          connect(internalGains.y[3], machinesConv.Q_flow)
            annotation (Line(points={{22.8,
            -52},{28,-52},{28,-74},{48,-74}}, color={0,0,127}));
          connect(const.y, eqAirTemp.sunblind)
            annotation (Line(points={{-13.7,17},{-12,17},{-12,8},{-14,8},{-14,8}},
            color={0,0,127}));
          connect(HDifTil.HSkyDifTil, corGDoublePane.HSkyDifTil)
            annotation (Line(
            points={{-47,36},{-28,36},{-6,36},{-6,66},{4,66}}, color={0,0,127}));
          connect(HDirTil.H, corGDoublePane.HDirTil)
            annotation (Line(points={{-47,62},{-10,62},{-10,70},{4,70}},
            color={0,0,127}));
          connect(HDirTil.H,solRad. u1)
            annotation (Line(points={{-47,62},{-42,62},{-42,
            14},{-39,14}}, color={0,0,127}));
          connect(HDirTil.inc, corGDoublePane.inc)
            annotation (Line(points={{-47,58},{4,58},{4,58}}, color={0,0,127}));
          connect(HDifTil.H,solRad. u2)
            annotation (Line(points={{-47,30},{-44,30},{-44,
            8},{-39,8}}, color={0,0,127}));
          connect(HDifTil.HGroDifTil, corGDoublePane.HGroDifTil)
            annotation (Line(
            points={{-47,24},{-4,24},{-4,62},{4,62}}, color={0,0,127}));
          connect(solRad.y, eqAirTemp.HSol)
            annotation (Line(points={{-27.5,11},{-26,11},{-26,2},{-26,2}},
            color={0,0,127}));
            connect(weaDat.weaBus, HDifTil[1].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[1].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[2].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[2].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[3].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[3].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[4].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[4].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
          connect(personsRad.port, thermalZoneFourElements.intGainsRad)
            annotation (Line(
            points={{68,-32},{84,-32},{100,-32},{100,24},{92,24}},
            color={191,0,0}));
          connect(thermalConductorWin.solid, thermalZoneFourElements.window)
            annotation (
             Line(points={{38,21},{40,21},{40,20},{44,20}},   color={191,0,0}));
          connect(prescribedTemperature1.port, thermalConductorWin.fluid)
            annotation (Line(points={{20,20},{28,20},{28,21}}, color={191,0,0}));
          connect(thermalZoneFourElements.extWall, thermalConductorWall.solid)
            annotation (Line(points={{44,12},{40,12},{40,1},{36,1}},
            color={191,0,0}));
          connect(thermalConductorWall.fluid, prescribedTemperature.port)
            annotation (Line(points={{26,1},{24,1},{24,0},{20,0}}, color={191,0,0}));
          connect(alphaWall.y, thermalConductorWall.Gc)
            annotation (Line(points={{30,-11.6},{30,-4},{31,-4}}, color={0,0,127}));
          connect(alphaWin.y, thermalConductorWin.Gc)
            annotation (Line(points={{32,33.6},{32,26},{33,26}}, color={0,0,127}));
          connect(weaBus.TBlaSky, eqAirTemp.TBlaSky)
            annotation (Line(
            points={{-83,6},{-58,6},{-58,2},{-32,2},{-32,-4},{-26,-4}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
          connect(machinesConv.port, thermalZoneFourElements.intGainsConv)
            annotation (
            Line(points={{68,-74},{82,-74},{96,-74},{96,20},{92,20}}, color={191,
            0,0}));
          connect(personsConv.port, thermalZoneFourElements.intGainsConv)
            annotation (
            Line(points={{68,-52},{96,-52},{96,20},{92,20}}, color={191,0,0}));
          connect(corGDoublePane.solarRadWinTrans, thermalZoneFourElements.solRad)
            annotation (Line(points={{27,64},{34,64},{40,64},{40,31},{43,31}}, color={0,
            0,127}));
          connect(prescribedTemperatureFloor.port, thermalZoneFourElements.floor)
            annotation (Line(points={{67,-6},{68,-6},{68,-2}}, color={191,0,0}));
          connect(prescribedTemperatureFloor.T, TSoil.y) annotation (Line(points={{67,-19.2},
                  {72.5,-19.2},{72.5,-22},{79.6,-22}}, color={0,0,127}));
          connect(prescribedTemperatureRoof.port, thermalConductorRoof.fluid)
            annotation (Line(points={{67,38},{67,38},{67,32}}, color={191,0,0}));
          connect(thermalConductorRoof.solid, thermalZoneFourElements.roof)
            annotation (Line(points={{67,22},{66.9,22},{66.9,34}}, color={191,0,0}));
          connect(thermalConductorRoof.Gc, alphaRoof.y)
            annotation (Line(points={{72,27},{78,27},{81.6,27}},color={0,0,127}));
          connect(eqAirTempVDI.TDryBul, eqAirTemp.TDryBul)
            annotation (Line(points={{28,38},{-96,38},{-96,-36},{-38,-36},{-38,
                  -10},{-26,-10}},
            color={0,0,127}));
          connect(eqAirTempVDI.TBlaSky, eqAirTemp.TBlaSky)
            annotation (Line(points={{28,44},{-34,44},{-98,44},{-98,-42},{-58,
                  -42},{-58,-32},{-32,-32},{-32,-4},{-26,-4}},
            color={0,0,127}));
          connect(const1.y, eqAirTempVDI.sunblind)
            annotation (Line(points={{40,67.7},{40,56}}, color={0,0,127}));
          connect(eqAirTempVDI.TEqAir, prescribedTemperatureRoof.T) annotation (Line(
                points={{51,44},{56,44},{56,58},{67,58},{67,51.2}}, color={0,0,127}));
          connect(weaDat.weaBus, HDifTilRoof[1].weaBus) annotation (Line(
              points={{-78,62},{-74,62},{-74,58},{-68,58}},
              color={255,204,51},
              thickness=0.5));
          connect(weaDat.weaBus, HDirTilRoof[1].weaBus) annotation (Line(
              points={{-78,62},{-74,62},{-74,84},{-68,84}},
              color={255,204,51},
              thickness=0.5));
          connect(HDirTilRoof.H, solRadRoof.u1)
            annotation (Line(points={{-47,84},{-22,84},{3,84}}, color={0,0,127}));
          connect(HDifTilRoof.H, solRadRoof.u2) annotation (Line(points={{-47,58},{-22,
                  58},{-22,78},{3,78}}, color={0,0,127}));
          connect(eqAirTempVDI.HSol, solRadRoof.y) annotation (Line(points={{28,50},
                  {6,50},{6,46},{14.5,46},{14.5,81}},
                                                   color={0,0,127}), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
          annotation (experiment(
          StopTime=31536000,
          Interval=3600));
        end GenSim3_SingleDwelling;

      end GenSim3_Models;
    end GenSim3;

    package GenSim4
      extends Modelica.Icons.Package;

      package GenSim4_Models
        extends Modelica.Icons.Package;

        model GenSim4_SingleDwelling
          "This is the simulation model of GenSim4_SingleDwelling"

          Annex60.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(
            calTSky=Annex60.BoundaryConditions.Types.SkyTemperatureCalculation.HorizontalRadiation,
            computeWetBulbTemperature=false,
            filNam="modelica://Annex60/Resources/weatherdata/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.mos")
            "Weather data reader"
            annotation (Placement(transformation(extent={{-98,52},{-78,72}})));
          Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil[4](
            each outSkyCon=true,
            each outGroCon=true,
            til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
            each lat = 0.886199060934,
            azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
            "Calculates diffuse solar radiation on titled surface for all directions"
            annotation (Placement(transformation(extent={{-68,20},{-48,40}})));
          Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil[4](
            til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
            each lat = 0.886199060934,
            azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
            "Calculates direct solar radiation on titled surface for all directions"
            annotation (Placement(transformation(extent={{-68,52},{-48,72}})));
          Annex60.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane(n=4, UWin=1.89365575768)
            "Correction factor for solar transmission"
            annotation (Placement(transformation(extent={{6,54},{26,74}})));
          Annex60.ThermalZones.ReducedOrder.RC.FourElements
          thermalZoneFourElements(
            redeclare package Medium = Modelica.Media.Air.DryAirNasa,
            VAir=840.0,
            alphaExt=7.7,
            alphaWin=2.7,
            gWin=0.67,
            ratioWinConRad=0.03,
            nExt=1,
            RExt={8.24935301786e-05},
            CExt={116428225.588},
            alphaRad=1.76004185784,
            AInt=1073.33333333,
            alphaInt=7.35217391304,
            nInt=1,
            RInt={5.19457395054e-05},
            CInt={139664494.676},
            RWin=0.00711087420043,
            RExtRem=0.00658895553725,
            AFloor=124.133333333,
            alphaFloor=1.7,
            nFloor=1,
            RFloor={0.000183563154942},
            RFloorRem=0.0145011077059,
            CFloor={9881304.32672},
            ARoof=124.133333333,
            alphaRoof=1.7,
            nRoof=1,
            RRoof={0.000163227839469},
            RRoofRem=0.0251551701964,
            CRoof={45167575.6451},
            energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
            extWallRC(thermCapExt(each der_T(fixed=true))),
            intWallRC(thermCapInt(each der_T(fixed=true))),
            floorRC(thermCapExt(each der_T(fixed=true))),
            roofRC(thermCapExt(each der_T(fixed=true))),
            nOrientations=4,
            AWin={14.0, 14.0, 14.0, 14.0},
            ATransparent={14.0, 14.0, 14.0, 14.0},
            AExt={69.7, 69.7, 69.7, 69.7}) "Thermal zone"
            annotation (Placement(transformation(extent={{44,-2},{92,34}})));
          Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp(
            n=4,
            wfGro=0.0,
            wfWall={0.25, 0.25, 0.25, 0.25},
            wfWin={0.25, 0.25, 0.25, 0.25},
            withLongwave=true,
            aExt=0.7,
            alphaWallOut=20.0,
            alphaRad=5.0,
            alphaWinOut=20.0,
            TGro=286.15) "Computes equivalent air temperature"
            annotation (Placement(transformation(extent={{-24,-14},{-4,6}})));
          Modelica.Blocks.Math.Add solRad[4]
            "Sums up solar radiation of both directions"
            annotation (Placement(transformation(extent={{-38,6},{-28,16}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature
            "Prescribed temperature for exterior walls outdoor surface temperature"
            annotation (Placement(transformation(extent={{8,-6},{20,6}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1
            "Prescribed temperature for windows outdoor surface temperature"
            annotation (Placement(transformation(extent={{8,14},{20,26}})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin
            "Outdoor convective heat transfer of windows"
            annotation (Placement(transformation(extent={{38,16},{28,26}})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall
            "Outdoor convective heat transfer of walls"
            annotation (Placement(transformation(extent={{36,6},{26,-4}})));
          Modelica.Blocks.Sources.Constant const[4](each k=0)
            "Sets sunblind signal to zero (open)"
            annotation (Placement(transformation(extent={{-20,14},{-14,20}})));
          Annex60.BoundaryConditions.WeatherData.Bus weaBus "Weather data bus"
            annotation (Placement(
            transformation(extent={{-100,-10},{-66,22}}),iconTransformation(
            extent={{-70,-12},{-50,8}})));
          Modelica.Blocks.Sources.Constant alphaWall(k=25.0
          *278.8)
            "Outdoor coefficient of heat transfer for walls"
            annotation (Placement(
            transformation(
            extent={{-4,-4},{4,4}},
            rotation=90,
            origin={30,-16})));
          Modelica.Blocks.Sources.Constant alphaWin(k=1400.0)
            "Outdoor coefficient of heat transfer for windows"
            annotation (Placement(
            transformation(
            extent={{4,-4},{-4,4}},
            rotation=90,
            origin={32,38})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsRad
            "Radiative heat flow of persons"
            annotation (Placement(transformation(extent={{48,-42},{68,-22}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsConv
            "Convective heat flow of persons"
            annotation (Placement(transformation(extent={{48,-62},{68,-42}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow machinesConv
            "Convective heat flow of machines"
            annotation (Placement(transformation(extent={{48,-84},{68,-64}})));
          Modelica.Blocks.Sources.CombiTimeTable internalGains(
            table=[0,0,0,0; 3600,0,0,0; 7200,0,0,0; 10800,0,0,0; 14400,0,0,0; 18000,0,0,
                0; 21600,0,0,0; 25200,0,0,0; 25200,80,80,200; 28800,80,80,200; 32400,80,
                80,200; 36000,80,80,200; 39600,80,80,200; 43200,80,80,200; 46800,80,80,200;
                50400,80,80,200; 54000,80,80,200; 57600,80,80,200; 61200,80,80,200; 61200,
                0,0,0; 64800,0,0,0; 72000,0,0,0; 75600,0,0,0; 79200,0,0,0; 82800,0,0,0;
                86400,0,0,0],
            columns={2,3,4},
            extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic) "Table with profiles for persons (radiative and convective) and machines
    (convective)"
            annotation (Placement(transformation(extent={{6,-60},{22,-44}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureFloor
            "Prescribed temperature for floor plate outdoor surface temperature"
            annotation (Placement(transformation(
            extent={{-6,-6},{6,6}},
            rotation=90,
            origin={67,-12})));
          Modelica.Blocks.Sources.Constant TSoil(k=286.15)
            "Outdoor surface temperature for floor plate"
            annotation (
            Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={84,-22})));

          Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007 eqAirTempVDI(
            aExt=0.7,
            wfGro=0,
            alphaWallOut=20.0,
            alphaRad=5.0,
            n=1,
            wfWall={1.0},
            wfWin={0},
            TGro=285.15) "Computes equivalent air temperature for roof"
            annotation (Placement(transformation(extent={{30,34},{50,54}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureRoof
            "Prescribed temperature for roof outdoor surface temperature"
            annotation (Placement(transformation(extent={{-6,-6},{6,6}},rotation=-90,
            origin={67,44})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorRoof
            "Outdoor convective heat transfer of roof"
            annotation (Placement(transformation(extent={{5,-5},{-5,5}},rotation=-90,
            origin={67,27})));
          Modelica.Blocks.Sources.Constant alphaRoof(k=3103.33333333)
            "Outdoor coefficient of heat transfer for roof"
            annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=0,
            origin={86,27})));
          Modelica.Blocks.Sources.Constant const1[1](each k=0)
            "Sets sunblind signal to zero (open)" annotation (Placement(transformation(
                extent={{3,-3},{-3,3}},
                rotation=90,
                origin={40,71})));
          Modelica.Blocks.Math.Add solRadRoof[1]
            "Sums up solar radiation of both directions"
            annotation (Placement(transformation(extent={{4,76},{14,86}})));
          Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTilRoof[1](
            til={0.0},
            each lat = 0.886199060934,
            azi={0.0})
            "Calculates direct solar radiation on titled surface for both directions"
            annotation (Placement(transformation(extent={{-68,74},{-48,94}})));
          Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTilRoof[1](
            til={0.0},
            each lat = 0.886199060934,
            azi={0.0})
            "Calculates diffuse solar radiation on titled surface for both directions"
            annotation (Placement(transformation(extent={{-68,48},{-48,68}})));

        equation
          connect(eqAirTemp.TEqAirWin, prescribedTemperature1.T)
            annotation (Line(
            points={{-3,-0.2},{0,-0.2},{0,20},{6.8,20}},   color={0,0,127}));
          connect(eqAirTemp.TEqAir, prescribedTemperature.T)
            annotation (Line(points={{-3,-4},{4,-4},{4,0},{6.8,0}},
            color={0,0,127}));
          connect(weaDat.weaBus, weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,18},{-84,18},{-84,12},{-83,12},{-83,6}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
          connect(weaBus.TDryBul, eqAirTemp.TDryBul)
            annotation (Line(
            points={{-83,6},{-83,-2},{-38,-2},{-38,-10},{-26,-10}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
          connect(internalGains.y[1], personsRad.Q_flow)
            annotation (Line(points={{22.8,
            -52},{28,-52},{28,-32},{48,-32}}, color={0,0,127}));
          connect(internalGains.y[2], personsConv.Q_flow)
            annotation (Line(points={{22.8,-52},{36,-52},{48,-52}}, color={0,0,127}));
          connect(internalGains.y[3], machinesConv.Q_flow)
            annotation (Line(points={{22.8,
            -52},{28,-52},{28,-74},{48,-74}}, color={0,0,127}));
          connect(const.y, eqAirTemp.sunblind)
            annotation (Line(points={{-13.7,17},{-12,17},{-12,8},{-14,8},{-14,8}},
            color={0,0,127}));
          connect(HDifTil.HSkyDifTil, corGDoublePane.HSkyDifTil)
            annotation (Line(
            points={{-47,36},{-28,36},{-6,36},{-6,66},{4,66}}, color={0,0,127}));
          connect(HDirTil.H, corGDoublePane.HDirTil)
            annotation (Line(points={{-47,62},{-10,62},{-10,70},{4,70}},
            color={0,0,127}));
          connect(HDirTil.H,solRad. u1)
            annotation (Line(points={{-47,62},{-42,62},{-42,
            14},{-39,14}}, color={0,0,127}));
          connect(HDirTil.inc, corGDoublePane.inc)
            annotation (Line(points={{-47,58},{4,58},{4,58}}, color={0,0,127}));
          connect(HDifTil.H,solRad. u2)
            annotation (Line(points={{-47,30},{-44,30},{-44,
            8},{-39,8}}, color={0,0,127}));
          connect(HDifTil.HGroDifTil, corGDoublePane.HGroDifTil)
            annotation (Line(
            points={{-47,24},{-4,24},{-4,62},{4,62}}, color={0,0,127}));
          connect(solRad.y, eqAirTemp.HSol)
            annotation (Line(points={{-27.5,11},{-26,11},{-26,2},{-26,2}},
            color={0,0,127}));
            connect(weaDat.weaBus, HDifTil[1].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[1].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[2].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[2].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[3].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[3].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[4].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[4].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
          connect(personsRad.port, thermalZoneFourElements.intGainsRad)
            annotation (Line(
            points={{68,-32},{84,-32},{100,-32},{100,24},{92,24}},
            color={191,0,0}));
          connect(thermalConductorWin.solid, thermalZoneFourElements.window)
            annotation (
             Line(points={{38,21},{40,21},{40,20},{44,20}},   color={191,0,0}));
          connect(prescribedTemperature1.port, thermalConductorWin.fluid)
            annotation (Line(points={{20,20},{28,20},{28,21}}, color={191,0,0}));
          connect(thermalZoneFourElements.extWall, thermalConductorWall.solid)
            annotation (Line(points={{44,12},{40,12},{40,1},{36,1}},
            color={191,0,0}));
          connect(thermalConductorWall.fluid, prescribedTemperature.port)
            annotation (Line(points={{26,1},{24,1},{24,0},{20,0}}, color={191,0,0}));
          connect(alphaWall.y, thermalConductorWall.Gc)
            annotation (Line(points={{30,-11.6},{30,-4},{31,-4}}, color={0,0,127}));
          connect(alphaWin.y, thermalConductorWin.Gc)
            annotation (Line(points={{32,33.6},{32,26},{33,26}}, color={0,0,127}));
          connect(weaBus.TBlaSky, eqAirTemp.TBlaSky)
            annotation (Line(
            points={{-83,6},{-58,6},{-58,2},{-32,2},{-32,-4},{-26,-4}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
          connect(machinesConv.port, thermalZoneFourElements.intGainsConv)
            annotation (
            Line(points={{68,-74},{82,-74},{96,-74},{96,20},{92,20}}, color={191,
            0,0}));
          connect(personsConv.port, thermalZoneFourElements.intGainsConv)
            annotation (
            Line(points={{68,-52},{96,-52},{96,20},{92,20}}, color={191,0,0}));
          connect(corGDoublePane.solarRadWinTrans, thermalZoneFourElements.solRad)
            annotation (Line(points={{27,64},{34,64},{40,64},{40,31},{43,31}}, color={0,
            0,127}));
          connect(prescribedTemperatureFloor.port, thermalZoneFourElements.floor)
            annotation (Line(points={{67,-6},{68,-6},{68,-2}}, color={191,0,0}));
          connect(prescribedTemperatureFloor.T, TSoil.y) annotation (Line(points={{67,-19.2},
                  {72.5,-19.2},{72.5,-22},{79.6,-22}}, color={0,0,127}));
          connect(prescribedTemperatureRoof.port, thermalConductorRoof.fluid)
            annotation (Line(points={{67,38},{67,38},{67,32}}, color={191,0,0}));
          connect(thermalConductorRoof.solid, thermalZoneFourElements.roof)
            annotation (Line(points={{67,22},{66.9,22},{66.9,34}}, color={191,0,0}));
          connect(thermalConductorRoof.Gc, alphaRoof.y)
            annotation (Line(points={{72,27},{78,27},{81.6,27}},color={0,0,127}));
          connect(eqAirTempVDI.TDryBul, eqAirTemp.TDryBul)
            annotation (Line(points={{28,38},{-96,38},{-96,-36},{-38,-36},{-38,
                  -10},{-26,-10}},
            color={0,0,127}));
          connect(eqAirTempVDI.TBlaSky, eqAirTemp.TBlaSky)
            annotation (Line(points={{28,44},{-34,44},{-98,44},{-98,-42},{-58,
                  -42},{-58,-32},{-32,-32},{-32,-4},{-26,-4}},
            color={0,0,127}));
          connect(const1.y, eqAirTempVDI.sunblind)
            annotation (Line(points={{40,67.7},{40,56}}, color={0,0,127}));
          connect(eqAirTempVDI.TEqAir, prescribedTemperatureRoof.T) annotation (Line(
                points={{51,44},{56,44},{56,58},{67,58},{67,51.2}}, color={0,0,127}));
          connect(weaDat.weaBus, HDifTilRoof[1].weaBus) annotation (Line(
              points={{-78,62},{-74,62},{-74,58},{-68,58}},
              color={255,204,51},
              thickness=0.5));
          connect(weaDat.weaBus, HDirTilRoof[1].weaBus) annotation (Line(
              points={{-78,62},{-74,62},{-74,84},{-68,84}},
              color={255,204,51},
              thickness=0.5));
          connect(HDirTilRoof.H, solRadRoof.u1)
            annotation (Line(points={{-47,84},{-22,84},{3,84}}, color={0,0,127}));
          connect(HDifTilRoof.H, solRadRoof.u2) annotation (Line(points={{-47,58},{-22,
                  58},{-22,78},{3,78}}, color={0,0,127}));
          connect(eqAirTempVDI.HSol, solRadRoof.y) annotation (Line(points={{28,50},
                  {6,50},{6,46},{14.5,46},{14.5,81}},
                                                   color={0,0,127}), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
          annotation (experiment(
          StopTime=31536000,
          Interval=3600));
        end GenSim4_SingleDwelling;

      end GenSim4_Models;
    end GenSim4;

    package GenSim5
      extends Modelica.Icons.Package;

      package GenSim5_Models
        extends Modelica.Icons.Package;

        model GenSim5_SingleDwelling
          "This is the simulation model of GenSim5_SingleDwelling"

          Annex60.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(
            calTSky=Annex60.BoundaryConditions.Types.SkyTemperatureCalculation.HorizontalRadiation,
            computeWetBulbTemperature=false,
            filNam="modelica://Annex60/Resources/weatherdata/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.mos")
            "Weather data reader"
            annotation (Placement(transformation(extent={{-98,52},{-78,72}})));
          Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil[4](
            each outSkyCon=true,
            each outGroCon=true,
            til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
            each lat = 0.886199060934,
            azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
            "Calculates diffuse solar radiation on titled surface for all directions"
            annotation (Placement(transformation(extent={{-68,20},{-48,40}})));
          Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil[4](
            til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
            each lat = 0.886199060934,
            azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
            "Calculates direct solar radiation on titled surface for all directions"
            annotation (Placement(transformation(extent={{-68,52},{-48,72}})));
          Annex60.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane(n=4, UWin=3.00178213411)
            "Correction factor for solar transmission"
            annotation (Placement(transformation(extent={{6,54},{26,74}})));
          Annex60.ThermalZones.ReducedOrder.RC.FourElements
          thermalZoneFourElements(
            redeclare package Medium = Modelica.Media.Air.DryAirNasa,
            VAir=750.0,
            alphaExt=7.7,
            alphaWin=2.7,
            gWin=0.78,
            ratioWinConRad=0.03,
            nExt=1,
            RExt={8.65464600861e-05},
            CExt={110641941.782},
            alphaRad=1.86460548558,
            AInt=958.333333333,
            alphaInt=7.35217391304,
            nInt=1,
            RInt={4.63357492229e-05},
            CInt={120751256.516},
            RWin=0.00406530612245,
            RExtRem=0.00608040608422,
            AFloor=110.833333333,
            alphaFloor=1.7,
            nFloor=1,
            RFloor={0.000166458628668},
            RFloorRem=0.011910877569,
            CFloor={8882312.19255},
            ARoof=144.083333333,
            alphaRoof=1.7,
            nRoof=1,
            RRoof={0.000139120889369},
            RRoofRem=0.0164683318083,
            CRoof={52245463.3311},
            energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
            extWallRC(thermCapExt(each der_T(fixed=true))),
            intWallRC(thermCapInt(each der_T(fixed=true))),
            floorRC(thermCapExt(each der_T(fixed=true))),
            roofRC(thermCapExt(each der_T(fixed=true))),
            nOrientations=4,
            AWin={12.5, 12.5, 12.5, 12.5},
            ATransparent={12.5, 12.5, 12.5, 12.5},
            AExt={66.25, 66.25, 66.25, 66.25}) "Thermal zone"
            annotation (Placement(transformation(extent={{44,-2},{92,34}})));
          Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp(
            n=4,
            wfGro=0.0,
            wfWall={0.25, 0.25, 0.25, 0.25},
            wfWin={0.25, 0.25, 0.25, 0.25},
            withLongwave=true,
            aExt=0.7,
            alphaWallOut=20.0,
            alphaRad=5.0,
            alphaWinOut=20.0,
            TGro=286.15) "Computes equivalent air temperature"
            annotation (Placement(transformation(extent={{-24,-14},{-4,6}})));
          Modelica.Blocks.Math.Add solRad[4]
            "Sums up solar radiation of both directions"
            annotation (Placement(transformation(extent={{-38,6},{-28,16}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature
            "Prescribed temperature for exterior walls outdoor surface temperature"
            annotation (Placement(transformation(extent={{8,-6},{20,6}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1
            "Prescribed temperature for windows outdoor surface temperature"
            annotation (Placement(transformation(extent={{8,14},{20,26}})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin
            "Outdoor convective heat transfer of windows"
            annotation (Placement(transformation(extent={{38,16},{28,26}})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall
            "Outdoor convective heat transfer of walls"
            annotation (Placement(transformation(extent={{36,6},{26,-4}})));
          Modelica.Blocks.Sources.Constant const[4](each k=0)
            "Sets sunblind signal to zero (open)"
            annotation (Placement(transformation(extent={{-20,14},{-14,20}})));
          Annex60.BoundaryConditions.WeatherData.Bus weaBus "Weather data bus"
            annotation (Placement(
            transformation(extent={{-100,-10},{-66,22}}),iconTransformation(
            extent={{-70,-12},{-50,8}})));
          Modelica.Blocks.Sources.Constant alphaWall(k=25.0
          *265.0)
            "Outdoor coefficient of heat transfer for walls"
            annotation (Placement(
            transformation(
            extent={{-4,-4},{4,4}},
            rotation=90,
            origin={30,-16})));
          Modelica.Blocks.Sources.Constant alphaWin(k=1250.0)
            "Outdoor coefficient of heat transfer for windows"
            annotation (Placement(
            transformation(
            extent={{4,-4},{-4,4}},
            rotation=90,
            origin={32,38})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsRad
            "Radiative heat flow of persons"
            annotation (Placement(transformation(extent={{48,-42},{68,-22}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsConv
            "Convective heat flow of persons"
            annotation (Placement(transformation(extent={{48,-62},{68,-42}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow machinesConv
            "Convective heat flow of machines"
            annotation (Placement(transformation(extent={{48,-84},{68,-64}})));
          Modelica.Blocks.Sources.CombiTimeTable internalGains(
            table=[0,0,0,0; 3600,0,0,0; 7200,0,0,0; 10800,0,0,0; 14400,0,0,0; 18000,0,0,
                0; 21600,0,0,0; 25200,0,0,0; 25200,80,80,200; 28800,80,80,200; 32400,80,
                80,200; 36000,80,80,200; 39600,80,80,200; 43200,80,80,200; 46800,80,80,200;
                50400,80,80,200; 54000,80,80,200; 57600,80,80,200; 61200,80,80,200; 61200,
                0,0,0; 64800,0,0,0; 72000,0,0,0; 75600,0,0,0; 79200,0,0,0; 82800,0,0,0;
                86400,0,0,0],
            columns={2,3,4},
            extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic) "Table with profiles for persons (radiative and convective) and machines
    (convective)"
            annotation (Placement(transformation(extent={{6,-60},{22,-44}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureFloor
            "Prescribed temperature for floor plate outdoor surface temperature"
            annotation (Placement(transformation(
            extent={{-6,-6},{6,6}},
            rotation=90,
            origin={67,-12})));
          Modelica.Blocks.Sources.Constant TSoil(k=286.15)
            "Outdoor surface temperature for floor plate"
            annotation (
            Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={84,-22})));

          Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007 eqAirTempVDI(
            aExt=0.7,
            wfGro=0,
            alphaWallOut=20.0,
            alphaRad=5.0,
            n=1,
            wfWall={1.0},
            wfWin={0},
            TGro=285.15) "Computes equivalent air temperature for roof"
            annotation (Placement(transformation(extent={{30,34},{50,54}})));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureRoof
            "Prescribed temperature for roof outdoor surface temperature"
            annotation (Placement(transformation(extent={{-6,-6},{6,6}},rotation=-90,
            origin={67,44})));
          Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorRoof
            "Outdoor convective heat transfer of roof"
            annotation (Placement(transformation(extent={{5,-5},{-5,5}},rotation=-90,
            origin={67,27})));
          Modelica.Blocks.Sources.Constant alphaRoof(k=3602.08333333)
            "Outdoor coefficient of heat transfer for roof"
            annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=0,
            origin={86,27})));
          Modelica.Blocks.Sources.Constant const1[1](each k=0)
            "Sets sunblind signal to zero (open)" annotation (Placement(transformation(
                extent={{3,-3},{-3,3}},
                rotation=90,
                origin={40,71})));
          Modelica.Blocks.Math.Add solRadRoof[1]
            "Sums up solar radiation of both directions"
            annotation (Placement(transformation(extent={{4,76},{14,86}})));
          Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTilRoof[1](
            til={0.0},
            each lat = 0.886199060934,
            azi={0.0})
            "Calculates direct solar radiation on titled surface for both directions"
            annotation (Placement(transformation(extent={{-68,74},{-48,94}})));
          Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTilRoof[1](
            til={0.0},
            each lat = 0.886199060934,
            azi={0.0})
            "Calculates diffuse solar radiation on titled surface for both directions"
            annotation (Placement(transformation(extent={{-68,48},{-48,68}})));

        equation
          connect(eqAirTemp.TEqAirWin, prescribedTemperature1.T)
            annotation (Line(
            points={{-3,-0.2},{0,-0.2},{0,20},{6.8,20}},   color={0,0,127}));
          connect(eqAirTemp.TEqAir, prescribedTemperature.T)
            annotation (Line(points={{-3,-4},{4,-4},{4,0},{6.8,0}},
            color={0,0,127}));
          connect(weaDat.weaBus, weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,18},{-84,18},{-84,12},{-83,12},{-83,6}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
          connect(weaBus.TDryBul, eqAirTemp.TDryBul)
            annotation (Line(
            points={{-83,6},{-83,-2},{-38,-2},{-38,-10},{-26,-10}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
          connect(internalGains.y[1], personsRad.Q_flow)
            annotation (Line(points={{22.8,
            -52},{28,-52},{28,-32},{48,-32}}, color={0,0,127}));
          connect(internalGains.y[2], personsConv.Q_flow)
            annotation (Line(points={{22.8,-52},{36,-52},{48,-52}}, color={0,0,127}));
          connect(internalGains.y[3], machinesConv.Q_flow)
            annotation (Line(points={{22.8,
            -52},{28,-52},{28,-74},{48,-74}}, color={0,0,127}));
          connect(const.y, eqAirTemp.sunblind)
            annotation (Line(points={{-13.7,17},{-12,17},{-12,8},{-14,8},{-14,8}},
            color={0,0,127}));
          connect(HDifTil.HSkyDifTil, corGDoublePane.HSkyDifTil)
            annotation (Line(
            points={{-47,36},{-28,36},{-6,36},{-6,66},{4,66}}, color={0,0,127}));
          connect(HDirTil.H, corGDoublePane.HDirTil)
            annotation (Line(points={{-47,62},{-10,62},{-10,70},{4,70}},
            color={0,0,127}));
          connect(HDirTil.H,solRad. u1)
            annotation (Line(points={{-47,62},{-42,62},{-42,
            14},{-39,14}}, color={0,0,127}));
          connect(HDirTil.inc, corGDoublePane.inc)
            annotation (Line(points={{-47,58},{4,58},{4,58}}, color={0,0,127}));
          connect(HDifTil.H,solRad. u2)
            annotation (Line(points={{-47,30},{-44,30},{-44,
            8},{-39,8}}, color={0,0,127}));
          connect(HDifTil.HGroDifTil, corGDoublePane.HGroDifTil)
            annotation (Line(
            points={{-47,24},{-4,24},{-4,62},{4,62}}, color={0,0,127}));
          connect(solRad.y, eqAirTemp.HSol)
            annotation (Line(points={{-27.5,11},{-26,11},{-26,2},{-26,2}},
            color={0,0,127}));
            connect(weaDat.weaBus, HDifTil[1].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[1].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[2].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[2].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[3].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[3].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDifTil[4].weaBus)
            annotation (Line(
            points={{-78,62},{-74,62},{-74,30},{-68,30}},
            color={255,204,51},
            thickness=0.5));
            connect(weaDat.weaBus, HDirTil[4].weaBus)
            annotation (Line(
            points={{-78,62},{-73,62},{-68,62}},
            color={255,204,51},
            thickness=0.5));
          connect(personsRad.port, thermalZoneFourElements.intGainsRad)
            annotation (Line(
            points={{68,-32},{84,-32},{100,-32},{100,24},{92,24}},
            color={191,0,0}));
          connect(thermalConductorWin.solid, thermalZoneFourElements.window)
            annotation (
             Line(points={{38,21},{40,21},{40,20},{44,20}},   color={191,0,0}));
          connect(prescribedTemperature1.port, thermalConductorWin.fluid)
            annotation (Line(points={{20,20},{28,20},{28,21}}, color={191,0,0}));
          connect(thermalZoneFourElements.extWall, thermalConductorWall.solid)
            annotation (Line(points={{44,12},{40,12},{40,1},{36,1}},
            color={191,0,0}));
          connect(thermalConductorWall.fluid, prescribedTemperature.port)
            annotation (Line(points={{26,1},{24,1},{24,0},{20,0}}, color={191,0,0}));
          connect(alphaWall.y, thermalConductorWall.Gc)
            annotation (Line(points={{30,-11.6},{30,-4},{31,-4}}, color={0,0,127}));
          connect(alphaWin.y, thermalConductorWin.Gc)
            annotation (Line(points={{32,33.6},{32,26},{33,26}}, color={0,0,127}));
          connect(weaBus.TBlaSky, eqAirTemp.TBlaSky)
            annotation (Line(
            points={{-83,6},{-58,6},{-58,2},{-32,2},{-32,-4},{-26,-4}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
          connect(machinesConv.port, thermalZoneFourElements.intGainsConv)
            annotation (
            Line(points={{68,-74},{82,-74},{96,-74},{96,20},{92,20}}, color={191,
            0,0}));
          connect(personsConv.port, thermalZoneFourElements.intGainsConv)
            annotation (
            Line(points={{68,-52},{96,-52},{96,20},{92,20}}, color={191,0,0}));
          connect(corGDoublePane.solarRadWinTrans, thermalZoneFourElements.solRad)
            annotation (Line(points={{27,64},{34,64},{40,64},{40,31},{43,31}}, color={0,
            0,127}));
          connect(prescribedTemperatureFloor.port, thermalZoneFourElements.floor)
            annotation (Line(points={{67,-6},{68,-6},{68,-2}}, color={191,0,0}));
          connect(prescribedTemperatureFloor.T, TSoil.y) annotation (Line(points={{67,-19.2},
                  {72.5,-19.2},{72.5,-22},{79.6,-22}}, color={0,0,127}));
          connect(prescribedTemperatureRoof.port, thermalConductorRoof.fluid)
            annotation (Line(points={{67,38},{67,38},{67,32}}, color={191,0,0}));
          connect(thermalConductorRoof.solid, thermalZoneFourElements.roof)
            annotation (Line(points={{67,22},{66.9,22},{66.9,34}}, color={191,0,0}));
          connect(thermalConductorRoof.Gc, alphaRoof.y)
            annotation (Line(points={{72,27},{78,27},{81.6,27}},color={0,0,127}));
          connect(eqAirTempVDI.TDryBul, eqAirTemp.TDryBul)
            annotation (Line(points={{28,38},{-96,38},{-96,-36},{-38,-36},{-38,
                  -10},{-26,-10}},
            color={0,0,127}));
          connect(eqAirTempVDI.TBlaSky, eqAirTemp.TBlaSky)
            annotation (Line(points={{28,44},{-34,44},{-98,44},{-98,-42},{-58,
                  -42},{-58,-32},{-32,-32},{-32,-4},{-26,-4}},
            color={0,0,127}));
          connect(const1.y, eqAirTempVDI.sunblind)
            annotation (Line(points={{40,67.7},{40,56}}, color={0,0,127}));
          connect(eqAirTempVDI.TEqAir, prescribedTemperatureRoof.T) annotation (Line(
                points={{51,44},{56,44},{56,58},{67,58},{67,51.2}}, color={0,0,127}));
          connect(weaDat.weaBus, HDifTilRoof[1].weaBus) annotation (Line(
              points={{-78,62},{-74,62},{-74,58},{-68,58}},
              color={255,204,51},
              thickness=0.5));
          connect(weaDat.weaBus, HDirTilRoof[1].weaBus) annotation (Line(
              points={{-78,62},{-74,62},{-74,84},{-68,84}},
              color={255,204,51},
              thickness=0.5));
          connect(HDirTilRoof.H, solRadRoof.u1)
            annotation (Line(points={{-47,84},{-22,84},{3,84}}, color={0,0,127}));
          connect(HDifTilRoof.H, solRadRoof.u2) annotation (Line(points={{-47,58},{-22,
                  58},{-22,78},{3,78}}, color={0,0,127}));
          connect(eqAirTempVDI.HSol, solRadRoof.y) annotation (Line(points={{28,50},
                  {6,50},{6,46},{14.5,46},{14.5,81}},
                                                   color={0,0,127}), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
          annotation (experiment(
          StopTime=31536000,
          Interval=3600));
        end GenSim5_SingleDwelling;

      end GenSim5_Models;
    end GenSim5;
  end TeaserOutput;

  package Structures

    model BuiRes1 "Residential building 1"
    extends IDEAS.Templates.Interfaces.BaseClasses.Structure(nZones=1,nEmb=0);
      Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil[4](
        each outSkyCon=true,
        each outGroCon=true,
        til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
        each lat = 0.886199060934,
        azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
        "Calculates diffuse solar radiation on titled surface for all directions"
        annotation (Placement(transformation(extent={{-72,-6},{-52,14}})));
      Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil[4](
        til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
        each lat = 0.886199060934,
        azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
        "Calculates direct solar radiation on titled surface for all directions"
        annotation (Placement(transformation(extent={{-72,26},{-52,46}})));
      Annex60.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane(n=4, UWin=3.00178213411)
        "Correction factor for solar transmission"
        annotation (Placement(transformation(extent={{2,28},{22,48}})));
      Annex60.ThermalZones.ReducedOrder.RC.FourElements
      thermalZoneFourElements(
        redeclare package Medium = Modelica.Media.Air.DryAirNasa,
        VAir=700.0,
        alphaExt=7.7,
        alphaWin=2.7,
        gWin=0.78,
        ratioWinConRad=0.03,
        nExt=1,
        RExt={8.36834700275e-05},
        CExt={112562287.468},
        alphaRad=1.88401192629,
        AInt=850.0,
        alphaInt=7.3862745098,
        nInt=1,
        RInt={8.52806303223e-05},
        CInt={166615280.217},
        RWin=0.00508163265306,
        RExtRem=0.00328107522806,
        AFloor=88.6666666667,
        alphaFloor=1.7,
        nFloor=1,
        RFloor={0.000279377968631},
        RFloorRem=0.00635864566187,
        CFloor={8338227.97378},
        ARoof=115.266666667,
        alphaRoof=1.7,
        nRoof=1,
        RRoof={0.000172080544051},
        RRoofRem=0.0140805840846,
        CRoof={41604110.8381},
        energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
        extWallRC(thermCapExt(each der_T(fixed=true))),
        intWallRC(thermCapInt(each der_T(fixed=true))),
        floorRC(thermCapExt(each der_T(fixed=true))),
        roofRC(thermCapExt(each der_T(fixed=true))),
        nOrientations=4,
        AWin={10.0, 10.0, 10.0, 10.0},
        ATransparent={10.0, 10.0, 10.0, 10.0},
        AExt={67.5, 67.5, 67.5, 67.5}) "Thermal zone"
        annotation (Placement(transformation(extent={{40,-28},{88,8}})));
      Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp(
        n=4,
        wfGro=0.0,
        wfWall={0.25, 0.25, 0.25, 0.25},
        wfWin={0.25, 0.25, 0.25, 0.25},
        withLongwave=true,
        aExt=0.7,
        alphaWallOut=20.0,
        alphaRad=5.0,
        alphaWinOut=20.0,
        TGro=286.15) "Computes equivalent air temperature"
        annotation (Placement(transformation(extent={{-28,-40},{-8,-20}})));
      Modelica.Blocks.Math.Add solRad[4]
        "Sums up solar radiation of both directions"
        annotation (Placement(transformation(extent={{-42,-20},{-32,-10}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature
        "Prescribed temperature for exterior walls outdoor surface temperature"
        annotation (Placement(transformation(extent={{4,-32},{16,-20}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1
        "Prescribed temperature for windows outdoor surface temperature"
        annotation (Placement(transformation(extent={{4,-12},{16,0}})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin
        "Outdoor convective heat transfer of windows"
        annotation (Placement(transformation(extent={{34,-10},{24,0}})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall
        "Outdoor convective heat transfer of walls"
        annotation (Placement(transformation(extent={{32,-20},{22,-30}})));
      Modelica.Blocks.Sources.Constant const[4](each k=0)
        "Sets sunblind signal to zero (open)"
        annotation (Placement(transformation(extent={{-24,-12},{-18,-6}})));
      Modelica.Blocks.Sources.Constant alphaWall(k=25.0
      *270.0)
        "Outdoor coefficient of heat transfer for walls"
        annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={26,-42})));
      Modelica.Blocks.Sources.Constant alphaWin(k=1000.0)
        "Outdoor coefficient of heat transfer for windows"
        annotation (Placement(
        transformation(
        extent={{4,-4},{-4,4}},
        rotation=90,
        origin={28,12})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureFloor
        "Prescribed temperature for floor plate outdoor surface temperature"
        annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=90,
        origin={63,-38})));
      Modelica.Blocks.Sources.Constant TSoil(k=286.15)
        "Outdoor surface temperature for floor plate"
        annotation (
        Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={80,-48})));
      Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007 eqAirTempVDI(
        aExt=0.7,
        wfGro=0,
        alphaWallOut=20.0,
        alphaRad=5.0,
        n=1,
        wfWall={1.0},
        wfWin={0},
        TGro=285.15) "Computes equivalent air temperature for roof"
        annotation (Placement(transformation(extent={{26,8},{46,28}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureRoof
        "Prescribed temperature for roof outdoor surface temperature"
        annotation (Placement(transformation(extent={{-6,-6},{6,6}},rotation=-90,
        origin={63,18})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorRoof
        "Outdoor convective heat transfer of roof"
        annotation (Placement(transformation(extent={{5,-5},{-5,5}},rotation=-90,
        origin={63,1})));
      Modelica.Blocks.Sources.Constant alphaRoof(k=2881.66666667)
        "Outdoor coefficient of heat transfer for roof"
        annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=0,
        origin={82,1})));
      Modelica.Blocks.Sources.Constant const1[1](each k=0)
        "Sets sunblind signal to zero (open)" annotation (Placement(transformation(
            extent={{3,-3},{-3,3}},
            rotation=90,
            origin={36,45})));
      Modelica.Blocks.Math.Add solRadRoof[1]
        "Sums up solar radiation of both directions"
        annotation (Placement(transformation(extent={{0,50},{10,60}})));
      Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTilRoof[1](
        til={0.0},
        each lat = 0.886199060934,
        azi={0.0})
        "Calculates direct solar radiation on titled surface for both directions"
        annotation (Placement(transformation(extent={{-72,48},{-52,68}})));
      Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTilRoof[1](
        til={0.0},
        each lat = 0.886199060934,
        azi={0.0})
        "Calculates diffuse solar radiation on titled surface for both directions"
        annotation (Placement(transformation(extent={{-72,22},{-52,42}})));
      Annex60.BoundaryConditions.WeatherData.Bus weaBus "Weather data bus"
        annotation (Placement(
        transformation(extent={{-104,-36},{-70,-4}}),iconTransformation(
        extent={{-70,-12},{-50,8}})));
    equation

      connect(eqAirTemp.TEqAirWin,prescribedTemperature1. T)
        annotation (Line(
        points={{-7,-26.2},{-4,-26.2},{-4,-6},{2.8,-6}},
                                                       color={0,0,127}));
      connect(eqAirTemp.TEqAir,prescribedTemperature. T)
        annotation (Line(points={{-7,-30},{0,-30},{0,-26},{2.8,-26}},
        color={0,0,127}));
      connect(sim.weaDat.weaBus,weaBus)
        annotation (Line(
        points={{-82,36},{-78,36},{-78,-8},{-88,-8},{-88,-14},{-87,-14},{-87,-20}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
      connect(weaBus.TDryBul,eqAirTemp. TDryBul)
        annotation (Line(
        points={{-87,-20},{-87,-28},{-42,-28},{-42,-36},{-30,-36}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
      connect(const.y,eqAirTemp. sunblind)
        annotation (Line(points={{-17.7,-9},{-16,-9},{-16,-18},{-18,-18}},
        color={0,0,127}));
      connect(HDifTil.HSkyDifTil,corGDoublePane. HSkyDifTil)
        annotation (Line(
        points={{-51,10},{-32,10},{-10,10},{-10,40},{0,40}},
                                                           color={0,0,127}));
      connect(HDirTil.H,corGDoublePane. HDirTil)
        annotation (Line(points={{-51,36},{-14,36},{-14,44},{0,44}},
        color={0,0,127}));
      connect(HDirTil.H,solRad. u1)
        annotation (Line(points={{-51,36},{-46,36},{-46,-12},{-43,-12}},
                       color={0,0,127}));
      connect(HDirTil.inc,corGDoublePane. inc)
        annotation (Line(points={{-51,32},{0,32}},        color={0,0,127}));
      connect(HDifTil.H,solRad. u2)
        annotation (Line(points={{-51,4},{-48,4},{-48,-18},{-43,-18}},
                     color={0,0,127}));
      connect(HDifTil.HGroDifTil,corGDoublePane. HGroDifTil)
        annotation (Line(
        points={{-51,-2},{-8,-2},{-8,36},{0,36}}, color={0,0,127}));
      connect(solRad.y,eqAirTemp. HSol)
        annotation (Line(points={{-31.5,-15},{-30,-15},{-30,-24}},
        color={0,0,127}));
        connect(sim.weaDat.weaBus,HDifTil [1].weaBus)
        annotation (Line(
        points={{-82,36},{-78,36},{-78,4},{-72,4}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [1].weaBus)
        annotation (Line(
        points={{-82,36},{-77,36},{-72,36}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDifTil [2].weaBus)
        annotation (Line(
        points={{-82,36},{-78,36},{-78,4},{-72,4}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [2].weaBus)
        annotation (Line(
        points={{-82,36},{-77,36},{-72,36}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDifTil [3].weaBus)
        annotation (Line(
        points={{-82,36},{-78,36},{-78,4},{-72,4}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [3].weaBus)
        annotation (Line(
        points={{-82,36},{-77,36},{-72,36}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDifTil [4].weaBus)
        annotation (Line(
        points={{-82,36},{-78,36},{-78,4},{-72,4}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [4].weaBus)
        annotation (Line(
        points={{-82,36},{-77,36},{-72,36}},
        color={255,204,51},
        thickness=0.5));
      connect(thermalConductorWin.solid,thermalZoneFourElements. window)
        annotation (
         Line(points={{34,-5},{36,-5},{36,-6},{40,-6}},   color={191,0,0}));
      connect(prescribedTemperature1.port,thermalConductorWin. fluid)
        annotation (Line(points={{16,-6},{24,-6},{24,-5}}, color={191,0,0}));
      connect(thermalZoneFourElements.extWall,thermalConductorWall. solid)
        annotation (Line(points={{40,-14},{36,-14},{36,-25},{32,-25}},
        color={191,0,0}));
      connect(thermalConductorWall.fluid,prescribedTemperature. port)
        annotation (Line(points={{22,-25},{20,-25},{20,-26},{16,-26}},
                                                               color={191,0,0}));
      connect(alphaWall.y,thermalConductorWall. Gc)
        annotation (Line(points={{26,-37.6},{26,-30},{27,-30}},
                                                              color={0,0,127}));
      connect(alphaWin.y,thermalConductorWin. Gc)
        annotation (Line(points={{28,7.6},{28,0},{29,0}},    color={0,0,127}));
      connect(weaBus.TBlaSky,eqAirTemp. TBlaSky)
        annotation (Line(
        points={{-87,-20},{-62,-20},{-62,-24},{-36,-24},{-36,-30},{-30,-30}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
      connect(corGDoublePane.solarRadWinTrans,thermalZoneFourElements. solRad)
        annotation (Line(points={{23,38},{30,38},{36,38},{36,5},{39,5}},   color={0,
        0,127}));
      connect(prescribedTemperatureFloor.port,thermalZoneFourElements. floor)
        annotation (Line(points={{63,-32},{64,-32},{64,-28}},
                                                           color={191,0,0}));
      connect(prescribedTemperatureFloor.T,TSoil. y) annotation (Line(points={{63,-45.2},
              {68.5,-45.2},{68.5,-48},{75.6,-48}}, color={0,0,127}));
      connect(prescribedTemperatureRoof.port,thermalConductorRoof. fluid)
        annotation (Line(points={{63,12},{63,12},{63,6}},  color={191,0,0}));
      connect(thermalConductorRoof.solid,thermalZoneFourElements. roof)
        annotation (Line(points={{63,-4},{62.9,-4},{62.9,8}},  color={191,0,0}));
      connect(thermalConductorRoof.Gc,alphaRoof. y)
        annotation (Line(points={{68,1},{74,1},{77.6,1}},   color={0,0,127}));
      connect(eqAirTempVDI.TDryBul,eqAirTemp. TDryBul)
        annotation (Line(points={{24,12},{-100,12},{-100,-62},{-42,-62},{-42,-36},{-30,
              -36}},
        color={0,0,127}));
      connect(eqAirTempVDI.TBlaSky,eqAirTemp. TBlaSky)
        annotation (Line(points={{24,18},{-38,18},{-102,18},{-102,-68},{-62,-68},{-62,
              -58},{-36,-58},{-36,-30},{-30,-30}},
        color={0,0,127}));
      connect(const1.y,eqAirTempVDI. sunblind)
        annotation (Line(points={{36,41.7},{36,30}}, color={0,0,127}));
      connect(eqAirTempVDI.TEqAir,prescribedTemperatureRoof. T) annotation (Line(
            points={{47,18},{52,18},{52,32},{63,32},{63,25.2}}, color={0,0,127}));
      connect(sim.weaDat.weaBus,HDifTilRoof [1].weaBus) annotation (Line(
          points={{-82,36},{-78,36},{-78,32},{-72,32}},
          color={255,204,51},
          thickness=0.5));
      connect(sim.weaDat.weaBus,HDirTilRoof [1].weaBus) annotation (Line(
          points={{-82,36},{-78,36},{-78,58},{-72,58}},
          color={255,204,51},
          thickness=0.5));
      connect(HDirTilRoof.H,solRadRoof. u1)
        annotation (Line(points={{-51,58},{-26,58},{-1,58}},color={0,0,127}));
      connect(HDifTilRoof.H,solRadRoof. u2) annotation (Line(points={{-51,32},{-26,32},
              {-26,52},{-1,52}},    color={0,0,127}));
      connect(eqAirTempVDI.HSol,solRadRoof. y) annotation (Line(points={{24,24},{2,24},
              {2,20},{10.5,20},{10.5,55}},     color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(thermalZoneFourElements.TAir, TSensor[1]) annotation (Line(points={{89,
              6},{118,6},{118,-60},{156,-60}}, color={0,0,127}));
      connect(thermalZoneFourElements.intGainsRad, heatPortRad[1]) annotation (Line(
            points={{88,-2},{120,-2},{120,-20},{150,-20}}, color={191,0,0}));
      connect(thermalZoneFourElements.intGainsConv, heatPortCon[1]) annotation (
          Line(points={{88,-6},{118,-6},{118,20},{150,20}}, color={191,0,0}));
      connect(flowPort_Out, flowPort_In) annotation (Line(points={{-20,100},{-4,
              100},{-4,100},{20,100}}, color={0,0,0}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end BuiRes1;

    model BuiRes2 "Residential building 2"
    extends IDEAS.Templates.Interfaces.BaseClasses.Structure(nZones=1,nEmb=0);
      Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil[4](
        each outSkyCon=true,
        each outGroCon=true,
        til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
        each lat = 0.886199060934,
        azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
        "Calculates diffuse solar radiation on titled surface for all directions"
        annotation (Placement(transformation(extent={{-62,-6},{-42,14}})));
      Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil[4](
        til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
        each lat = 0.886199060934,
        azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
        "Calculates direct solar radiation on titled surface for all directions"
        annotation (Placement(transformation(extent={{-62,26},{-42,46}})));
      Annex60.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane(n=4, UWin=3.00178213411)
        "Correction factor for solar transmission"
        annotation (Placement(transformation(extent={{12,28},{32,48}})));
      Annex60.ThermalZones.ReducedOrder.RC.FourElements
      thermalZoneFourElements(
        redeclare package Medium = Modelica.Media.Air.DryAirNasa,
        VAir=450.0,
        alphaExt=7.7,
        alphaWin=2.7,
        gWin=0.78,
        ratioWinConRad=0.03,
        nExt=1,
        RExt={0.000539007758004},
        CExt={33400326.1424},
        alphaRad=2.24676823033,
        AInt=525.0,
        alphaInt=7.41428571429,
        nInt=1,
        RInt={0.0001227217627},
        CInt={65385409.0653},
        RWin=0.00677551020408,
        RExtRem=0.00260342673058,
        AFloor=99.75,
        alphaFloor=1.7,
        nFloor=1,
        RFloor={0.001514059939},
        RFloorRem=0.00189305925759,
        CFloor={18920952.1169},
        ARoof=129.675,
        alphaRoof=1.7,
        nRoof=1,
        RRoof={0.000211022435786},
        RRoofRem=0.0025780912845,
        CRoof={41849723.3004},
        energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
        extWallRC(thermCapExt(each der_T(fixed=true))),
        intWallRC(thermCapInt(each der_T(fixed=true))),
        floorRC(thermCapExt(each der_T(fixed=true))),
        roofRC(thermCapExt(each der_T(fixed=true))),
        nOrientations=4,
        AWin={7.5, 7.5, 7.5, 7.5},
        ATransparent={7.5, 7.5, 7.5, 7.5},
        AExt={42.25, 42.25, 42.25, 42.25}) "Thermal zone"
        annotation (Placement(transformation(extent={{50,-28},{98,8}})));
      Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp(
        n=4,
        wfGro=0.0,
        wfWall={0.25, 0.25, 0.25, 0.25},
        wfWin={0.25, 0.25, 0.25, 0.25},
        withLongwave=true,
        aExt=0.7,
        alphaWallOut=20.0,
        alphaRad=5.0,
        alphaWinOut=20.0,
        TGro=286.15) "Computes equivalent air temperature"
        annotation (Placement(transformation(extent={{-18,-40},{2,-20}})));
      Modelica.Blocks.Math.Add solRad[4]
        "Sums up solar radiation of both directions"
        annotation (Placement(transformation(extent={{-32,-20},{-22,-10}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature
        "Prescribed temperature for exterior walls outdoor surface temperature"
        annotation (Placement(transformation(extent={{14,-32},{26,-20}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1
        "Prescribed temperature for windows outdoor surface temperature"
        annotation (Placement(transformation(extent={{14,-12},{26,0}})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin
        "Outdoor convective heat transfer of windows"
        annotation (Placement(transformation(extent={{44,-10},{34,0}})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall
        "Outdoor convective heat transfer of walls"
        annotation (Placement(transformation(extent={{42,-20},{32,-30}})));
      Modelica.Blocks.Sources.Constant const[4](each k=0)
        "Sets sunblind signal to zero (open)"
        annotation (Placement(transformation(extent={{-14,-12},{-8,-6}})));
      Modelica.Blocks.Sources.Constant alphaWall(k=25.0
      *169.0)
        "Outdoor coefficient of heat transfer for walls"
        annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={36,-42})));
      Modelica.Blocks.Sources.Constant alphaWin(k=750.0)
        "Outdoor coefficient of heat transfer for windows"
        annotation (Placement(
        transformation(
        extent={{4,-4},{-4,4}},
        rotation=90,
        origin={38,12})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureFloor
        "Prescribed temperature for floor plate outdoor surface temperature"
        annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=90,
        origin={73,-38})));
      Modelica.Blocks.Sources.Constant TSoil(k=286.15)
        "Outdoor surface temperature for floor plate"
        annotation (
        Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={90,-48})));
      Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007 eqAirTempVDI(
        aExt=0.7,
        wfGro=0,
        alphaWallOut=20.0,
        alphaRad=5.0,
        n=1,
        wfWall={1.0},
        wfWin={0},
        TGro=285.15) "Computes equivalent air temperature for roof"
        annotation (Placement(transformation(extent={{36,8},{56,28}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureRoof
        "Prescribed temperature for roof outdoor surface temperature"
        annotation (Placement(transformation(extent={{-6,-6},{6,6}},rotation=-90,
        origin={73,18})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorRoof
        "Outdoor convective heat transfer of roof"
        annotation (Placement(transformation(extent={{5,-5},{-5,5}},rotation=-90,
        origin={73,1})));
      Modelica.Blocks.Sources.Constant alphaRoof(k=3241.875)
        "Outdoor coefficient of heat transfer for roof"
        annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=0,
        origin={92,1})));
      Modelica.Blocks.Sources.Constant const1[1](each k=0)
        "Sets sunblind signal to zero (open)" annotation (Placement(transformation(
            extent={{3,-3},{-3,3}},
            rotation=90,
            origin={46,45})));
      Modelica.Blocks.Math.Add solRadRoof[1]
        "Sums up solar radiation of both directions"
        annotation (Placement(transformation(extent={{10,50},{20,60}})));
      Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTilRoof[1](
        til={0.0},
        each lat = 0.886199060934,
        azi={0.0})
        "Calculates direct solar radiation on titled surface for both directions"
        annotation (Placement(transformation(extent={{-62,48},{-42,68}})));
      Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTilRoof[1](
        til={0.0},
        each lat = 0.886199060934,
        azi={0.0})
        "Calculates diffuse solar radiation on titled surface for both directions"
        annotation (Placement(transformation(extent={{-62,22},{-42,42}})));
      Annex60.BoundaryConditions.WeatherData.Bus weaBus "Weather data bus"
        annotation (Placement(
        transformation(extent={{-94,-36},{-60,-4}}), iconTransformation(
        extent={{-80,-24},{-60,-4}})));
    equation

      connect(flowPort_Out, flowPort_In)
        annotation (Line(points={{-20,100},{0,100},{20,100}}, color={0,0,0}));
      connect(eqAirTemp.TEqAirWin,prescribedTemperature1. T)
        annotation (Line(
        points={{3,-26.2},{6,-26.2},{6,-6},{12.8,-6}}, color={0,0,127}));
      connect(eqAirTemp.TEqAir,prescribedTemperature. T)
        annotation (Line(points={{3,-30},{10,-30},{10,-26},{12.8,-26}},
        color={0,0,127}));
      connect(sim.weaDat.weaBus,weaBus)
        annotation (Line(
        points={{-72,36},{-68,36},{-68,-8},{-78,-8},{-78,-14},{-77,-14},{-77,-20}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
      connect(weaBus.TDryBul,eqAirTemp. TDryBul)
        annotation (Line(
        points={{-77,-20},{-77,-28},{-32,-28},{-32,-36},{-20,-36}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
      connect(const.y,eqAirTemp. sunblind)
        annotation (Line(points={{-7.7,-9},{-6,-9},{-6,-18},{-8,-18}},
        color={0,0,127}));
      connect(HDifTil.HSkyDifTil,corGDoublePane. HSkyDifTil)
        annotation (Line(
        points={{-41,10},{-22,10},{0,10},{0,40},{10,40}},  color={0,0,127}));
      connect(HDirTil.H,corGDoublePane. HDirTil)
        annotation (Line(points={{-41,36},{-4,36},{-4,44},{10,44}},
        color={0,0,127}));
      connect(HDirTil.H,solRad. u1)
        annotation (Line(points={{-41,36},{-36,36},{-36,-12},{-33,-12}},
                       color={0,0,127}));
      connect(HDirTil.inc,corGDoublePane. inc)
        annotation (Line(points={{-41,32},{10,32}},       color={0,0,127}));
      connect(HDifTil.H,solRad. u2)
        annotation (Line(points={{-41,4},{-38,4},{-38,-18},{-33,-18}},
                     color={0,0,127}));
      connect(HDifTil.HGroDifTil,corGDoublePane. HGroDifTil)
        annotation (Line(
        points={{-41,-2},{2,-2},{2,36},{10,36}},  color={0,0,127}));
      connect(solRad.y,eqAirTemp. HSol)
        annotation (Line(points={{-21.5,-15},{-20,-15},{-20,-24}},
        color={0,0,127}));
        connect(sim.weaDat.weaBus,HDifTil [1].weaBus)
        annotation (Line(
        points={{-72,36},{-68,36},{-68,4},{-62,4}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [1].weaBus)
        annotation (Line(
        points={{-72,36},{-67,36},{-62,36}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDifTil [2].weaBus)
        annotation (Line(
        points={{-72,36},{-68,36},{-68,4},{-62,4}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [2].weaBus)
        annotation (Line(
        points={{-72,36},{-67,36},{-62,36}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDifTil [3].weaBus)
        annotation (Line(
        points={{-72,36},{-68,36},{-68,4},{-62,4}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [3].weaBus)
        annotation (Line(
        points={{-72,36},{-67,36},{-62,36}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDifTil [4].weaBus)
        annotation (Line(
        points={{-72,36},{-68,36},{-68,4},{-62,4}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [4].weaBus)
        annotation (Line(
        points={{-67,36},{-62,36}},
        color={255,204,51},
        thickness=0.5));
      connect(thermalConductorWin.solid,thermalZoneFourElements. window)
        annotation (
         Line(points={{44,-5},{46,-5},{46,-6},{50,-6}},   color={191,0,0}));
      connect(prescribedTemperature1.port,thermalConductorWin. fluid)
        annotation (Line(points={{26,-6},{34,-6},{34,-5}}, color={191,0,0}));
      connect(thermalZoneFourElements.extWall,thermalConductorWall. solid)
        annotation (Line(points={{50,-14},{46,-14},{46,-25},{42,-25}},
        color={191,0,0}));
      connect(thermalConductorWall.fluid,prescribedTemperature. port)
        annotation (Line(points={{32,-25},{30,-25},{30,-26},{26,-26}},
                                                               color={191,0,0}));
      connect(alphaWall.y,thermalConductorWall. Gc)
        annotation (Line(points={{36,-37.6},{36,-30},{37,-30}},
                                                              color={0,0,127}));
      connect(alphaWin.y,thermalConductorWin. Gc)
        annotation (Line(points={{38,7.6},{38,0},{39,0}},    color={0,0,127}));
      connect(weaBus.TBlaSky,eqAirTemp. TBlaSky)
        annotation (Line(
        points={{-77,-20},{-52,-20},{-52,-24},{-26,-24},{-26,-30},{-20,-30}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
      connect(corGDoublePane.solarRadWinTrans,thermalZoneFourElements. solRad)
        annotation (Line(points={{33,38},{40,38},{46,38},{46,5},{49,5}},   color={0,
        0,127}));
      connect(prescribedTemperatureFloor.port,thermalZoneFourElements. floor)
        annotation (Line(points={{73,-32},{74,-32},{74,-28}},
                                                           color={191,0,0}));
      connect(prescribedTemperatureFloor.T,TSoil. y) annotation (Line(points={{73,-45.2},
              {78.5,-45.2},{78.5,-48},{85.6,-48}}, color={0,0,127}));
      connect(prescribedTemperatureRoof.port,thermalConductorRoof. fluid)
        annotation (Line(points={{73,12},{73,12},{73,6}},  color={191,0,0}));
      connect(thermalConductorRoof.solid,thermalZoneFourElements. roof)
        annotation (Line(points={{73,-4},{72.9,-4},{72.9,8}},  color={191,0,0}));
      connect(thermalConductorRoof.Gc,alphaRoof. y)
        annotation (Line(points={{78,1},{84,1},{87.6,1}},   color={0,0,127}));
      connect(eqAirTempVDI.TDryBul,eqAirTemp. TDryBul)
        annotation (Line(points={{34,12},{-90,12},{-90,-62},{-32,-62},{-32,-36},{-20,
              -36}},
        color={0,0,127}));
      connect(eqAirTempVDI.TBlaSky,eqAirTemp. TBlaSky)
        annotation (Line(points={{34,18},{-28,18},{-92,18},{-92,-68},{-52,-68},{-52,
              -58},{-26,-58},{-26,-30},{-20,-30}},
        color={0,0,127}));
      connect(const1.y,eqAirTempVDI. sunblind)
        annotation (Line(points={{46,41.7},{46,30}}, color={0,0,127}));
      connect(eqAirTempVDI.TEqAir,prescribedTemperatureRoof. T) annotation (Line(
            points={{57,18},{62,18},{62,32},{73,32},{73,25.2}}, color={0,0,127}));
      connect(sim.weaDat.weaBus,HDifTilRoof [1].weaBus) annotation (Line(
          points={{-72,36},{-68,36},{-68,32},{-62,32}},
          color={255,204,51},
          thickness=0.5));
      connect(sim.weaDat.weaBus,HDirTilRoof [1].weaBus) annotation (Line(
          points={{-72,36},{-68,36},{-68,58},{-62,58}},
          color={255,204,51},
          thickness=0.5));
      connect(HDirTilRoof.H,solRadRoof. u1)
        annotation (Line(points={{-41,58},{-16,58},{9,58}}, color={0,0,127}));
      connect(HDifTilRoof.H,solRadRoof. u2) annotation (Line(points={{-41,32},{-16,32},
              {-16,52},{9,52}},     color={0,0,127}));
      connect(eqAirTempVDI.HSol,solRadRoof. y) annotation (Line(points={{34,24},{12,
              24},{12,20},{20.5,20},{20.5,55}},color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(thermalZoneFourElements.TAir, TSensor[1]) annotation (Line(points={{99,
              6},{124,6},{124,-60},{156,-60}}, color={0,0,127}));
      connect(thermalZoneFourElements.intGainsRad, heatPortRad[1]) annotation (Line(
            points={{98,-2},{124,-2},{124,-20},{150,-20}}, color={191,0,0}));
      connect(thermalZoneFourElements.intGainsConv, heatPortCon[1]) annotation (
          Line(points={{98,-6},{124,-6},{124,20},{150,20}}, color={191,0,0}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end BuiRes2;

    model BuiRes3 "Residential building 3"
    extends IDEAS.Templates.Interfaces.BaseClasses.Structure(nZones=1,nEmb=0);
      Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil[4](
        each outSkyCon=true,
        each outGroCon=true,
        til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
        each lat = 0.886199060934,
        azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
        "Calculates diffuse solar radiation on titled surface for all directions"
        annotation (Placement(transformation(extent={{-52,-8},{-32,12}})));
      Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil[4](
        til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
        each lat = 0.886199060934,
        azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
        "Calculates direct solar radiation on titled surface for all directions"
        annotation (Placement(transformation(extent={{-52,24},{-32,44}})));
      Annex60.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane(n=4, UWin=3.00178213411)
        "Correction factor for solar transmission"
        annotation (Placement(transformation(extent={{22,26},{42,46}})));
      Annex60.ThermalZones.ReducedOrder.RC.FourElements
      thermalZoneFourElements(
        redeclare package Medium = Modelica.Media.Air.DryAirNasa,
        VAir=540.0,
        alphaExt=7.7,
        alphaWin=2.7,
        gWin=0.78,
        ratioWinConRad=0.03,
        nExt=1,
        RExt={0.000498316800343},
        CExt={36127690.0522},
        alphaRad=2.10531152362,
        AInt=630.0,
        alphaInt=7.41428571429,
        nInt=1,
        RInt={0.000102268135583},
        CInt={78462490.8784},
        RWin=0.0056462585034,
        RExtRem=0.00240688795114,
        AFloor=119.7,
        alphaFloor=1.7,
        nFloor=1,
        RFloor={0.00126171661584},
        RFloorRem=0.00157754938132,
        CFloor={22705142.5403},
        ARoof=119.7,
        alphaRoof=1.7,
        nRoof=1,
        RRoof={0.000228607638768},
        RRoofRem=0.00279293222488,
        CRoof={38630513.8157},
        energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
        extWallRC(thermCapExt(each der_T(fixed=true))),
        intWallRC(thermCapInt(each der_T(fixed=true))),
        floorRC(thermCapExt(each der_T(fixed=true))),
        roofRC(thermCapExt(each der_T(fixed=true))),
        nOrientations=4,
        AWin={9.0, 9.0, 9.0, 9.0},
        ATransparent={9.0, 9.0, 9.0, 9.0},
        AExt={45.7, 45.7, 45.7, 45.7}) "Thermal zone"
        annotation (Placement(transformation(extent={{60,-30},{108,6}})));
      Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp(
        n=4,
        wfGro=0.0,
        wfWall={0.25, 0.25, 0.25, 0.25},
        wfWin={0.25, 0.25, 0.25, 0.25},
        withLongwave=true,
        aExt=0.7,
        alphaWallOut=20.0,
        alphaRad=5.0,
        alphaWinOut=20.0,
        TGro=286.15) "Computes equivalent air temperature"
        annotation (Placement(transformation(extent={{-8,-42},{12,-22}})));
      Modelica.Blocks.Math.Add solRad[4]
        "Sums up solar radiation of both directions"
        annotation (Placement(transformation(extent={{-22,-22},{-12,-12}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature
        "Prescribed temperature for exterior walls outdoor surface temperature"
        annotation (Placement(transformation(extent={{24,-34},{36,-22}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1
        "Prescribed temperature for windows outdoor surface temperature"
        annotation (Placement(transformation(extent={{24,-14},{36,-2}})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin
        "Outdoor convective heat transfer of windows"
        annotation (Placement(transformation(extent={{54,-12},{44,-2}})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall
        "Outdoor convective heat transfer of walls"
        annotation (Placement(transformation(extent={{52,-22},{42,-32}})));
      Modelica.Blocks.Sources.Constant const[4](each k=0)
        "Sets sunblind signal to zero (open)"
        annotation (Placement(transformation(extent={{-4,-14},{2,-8}})));
      Modelica.Blocks.Sources.Constant alphaWall(k=25.0
      *182.8)
        "Outdoor coefficient of heat transfer for walls"
        annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={46,-44})));
      Modelica.Blocks.Sources.Constant alphaWin(k=900.0)
        "Outdoor coefficient of heat transfer for windows"
        annotation (Placement(
        transformation(
        extent={{4,-4},{-4,4}},
        rotation=90,
        origin={48,10})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureFloor
        "Prescribed temperature for floor plate outdoor surface temperature"
        annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=90,
        origin={83,-40})));
      Modelica.Blocks.Sources.Constant TSoil(k=286.15)
        "Outdoor surface temperature for floor plate"
        annotation (
        Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={100,-50})));
      Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007 eqAirTempVDI(
        aExt=0.7,
        wfGro=0,
        alphaWallOut=20.0,
        alphaRad=5.0,
        n=1,
        wfWall={1.0},
        wfWin={0},
        TGro=285.15) "Computes equivalent air temperature for roof"
        annotation (Placement(transformation(extent={{46,6},{66,26}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureRoof
        "Prescribed temperature for roof outdoor surface temperature"
        annotation (Placement(transformation(extent={{-6,-6},{6,6}},rotation=-90,
        origin={83,16})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorRoof
        "Outdoor convective heat transfer of roof"
        annotation (Placement(transformation(extent={{5,-5},{-5,5}},rotation=-90,
        origin={83,-1})));
      Modelica.Blocks.Sources.Constant alphaRoof(k=2992.5)
        "Outdoor coefficient of heat transfer for roof"
        annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=0,
        origin={102,-1})));
      Modelica.Blocks.Sources.Constant const1[1](each k=0)
        "Sets sunblind signal to zero (open)" annotation (Placement(transformation(
            extent={{3,-3},{-3,3}},
            rotation=90,
            origin={56,43})));
      Modelica.Blocks.Math.Add solRadRoof[1]
        "Sums up solar radiation of both directions"
        annotation (Placement(transformation(extent={{20,48},{30,58}})));
      Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTilRoof[1](
        til={0.0},
        each lat = 0.886199060934,
        azi={0.0})
        "Calculates direct solar radiation on titled surface for both directions"
        annotation (Placement(transformation(extent={{-52,46},{-32,66}})));
      Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTilRoof[1](
        til={0.0},
        each lat = 0.886199060934,
        azi={0.0})
        "Calculates diffuse solar radiation on titled surface for both directions"
        annotation (Placement(transformation(extent={{-52,20},{-32,40}})));
      Annex60.BoundaryConditions.WeatherData.Bus weaBus "Weather data bus"
        annotation (Placement(
        transformation(extent={{-84,-38},{-50,-6}}), iconTransformation(
        extent={{-70,-12},{-50,8}})));
    equation

      connect(flowPort_Out, flowPort_In)
        annotation (Line(points={{-20,100},{0,100},{20,100}}, color={0,0,0}));
      connect(eqAirTemp.TEqAirWin,prescribedTemperature1. T)
        annotation (Line(
        points={{13,-28.2},{16,-28.2},{16,-8},{22.8,-8}},
                                                       color={0,0,127}));
      connect(eqAirTemp.TEqAir,prescribedTemperature. T)
        annotation (Line(points={{13,-32},{20,-32},{20,-28},{22.8,-28}},
        color={0,0,127}));
      connect(sim.weaDat.weaBus,weaBus)
        annotation (Line(
        points={{-62,34},{-58,34},{-58,-10},{-68,-10},{-68,-16},{-67,-16},{-67,-22}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
      connect(weaBus.TDryBul,eqAirTemp. TDryBul)
        annotation (Line(
        points={{-67,-22},{-67,-30},{-22,-30},{-22,-38},{-10,-38}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
      connect(const.y,eqAirTemp. sunblind)
        annotation (Line(points={{2.3,-11},{4,-11},{4,-20},{2,-20}},
        color={0,0,127}));
      connect(HDifTil.HSkyDifTil,corGDoublePane. HSkyDifTil)
        annotation (Line(
        points={{-31,8},{-12,8},{10,8},{10,38},{20,38}},   color={0,0,127}));
      connect(HDirTil.H,corGDoublePane. HDirTil)
        annotation (Line(points={{-31,34},{6,34},{6,42},{20,42}},
        color={0,0,127}));
      connect(HDirTil.H,solRad. u1)
        annotation (Line(points={{-31,34},{-26,34},{-26,-14},{-23,-14}},
                       color={0,0,127}));
      connect(HDirTil.inc,corGDoublePane. inc)
        annotation (Line(points={{-31,30},{20,30}},       color={0,0,127}));
      connect(HDifTil.H,solRad. u2)
        annotation (Line(points={{-31,2},{-28,2},{-28,-20},{-23,-20}},
                     color={0,0,127}));
      connect(HDifTil.HGroDifTil,corGDoublePane. HGroDifTil)
        annotation (Line(
        points={{-31,-4},{12,-4},{12,34},{20,34}},color={0,0,127}));
      connect(solRad.y,eqAirTemp. HSol)
        annotation (Line(points={{-11.5,-17},{-10,-17},{-10,-26}},
        color={0,0,127}));
        connect(sim.weaDat.weaBus,HDifTil [1].weaBus)
        annotation (Line(
        points={{-62,34},{-58,34},{-58,2},{-52,2}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [1].weaBus)
        annotation (Line(
        points={{-62,34},{-57,34},{-52,34}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDifTil [2].weaBus)
        annotation (Line(
        points={{-62,34},{-58,34},{-58,2},{-52,2}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [2].weaBus)
        annotation (Line(
        points={{-62,34},{-57,34},{-52,34}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDifTil [3].weaBus)
        annotation (Line(
        points={{-62,34},{-58,34},{-58,2},{-52,2}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [3].weaBus)
        annotation (Line(
        points={{-62,34},{-57,34},{-52,34}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDifTil [4].weaBus)
        annotation (Line(
        points={{-62,34},{-58,34},{-58,2},{-52,2}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [4].weaBus)
        annotation (Line(
        points={{-62,34},{-57,34},{-52,34}},
        color={255,204,51},
        thickness=0.5));
      connect(thermalConductorWin.solid,thermalZoneFourElements. window)
        annotation (
         Line(points={{54,-7},{56,-7},{56,-8},{60,-8}},   color={191,0,0}));
      connect(prescribedTemperature1.port,thermalConductorWin. fluid)
        annotation (Line(points={{36,-8},{44,-8},{44,-7}}, color={191,0,0}));
      connect(thermalZoneFourElements.extWall,thermalConductorWall. solid)
        annotation (Line(points={{60,-16},{56,-16},{56,-27},{52,-27}},
        color={191,0,0}));
      connect(thermalConductorWall.fluid,prescribedTemperature. port)
        annotation (Line(points={{42,-27},{40,-27},{40,-28},{36,-28}},
                                                               color={191,0,0}));
      connect(alphaWall.y,thermalConductorWall. Gc)
        annotation (Line(points={{46,-39.6},{46,-32},{47,-32}},
                                                              color={0,0,127}));
      connect(alphaWin.y,thermalConductorWin. Gc)
        annotation (Line(points={{48,5.6},{48,-2},{49,-2}},  color={0,0,127}));
      connect(weaBus.TBlaSky,eqAirTemp. TBlaSky)
        annotation (Line(
        points={{-67,-22},{-42,-22},{-42,-26},{-16,-26},{-16,-32},{-10,-32}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
      connect(corGDoublePane.solarRadWinTrans,thermalZoneFourElements. solRad)
        annotation (Line(points={{43,36},{50,36},{56,36},{56,3},{59,3}},   color={0,
        0,127}));
      connect(prescribedTemperatureFloor.port,thermalZoneFourElements. floor)
        annotation (Line(points={{83,-34},{84,-34},{84,-30}},
                                                           color={191,0,0}));
      connect(prescribedTemperatureFloor.T,TSoil. y) annotation (Line(points={{83,-47.2},
              {88.5,-47.2},{88.5,-50},{95.6,-50}}, color={0,0,127}));
      connect(prescribedTemperatureRoof.port,thermalConductorRoof. fluid)
        annotation (Line(points={{83,10},{83,10},{83,4}},  color={191,0,0}));
      connect(thermalConductorRoof.solid,thermalZoneFourElements. roof)
        annotation (Line(points={{83,-6},{82.9,-6},{82.9,6}},  color={191,0,0}));
      connect(thermalConductorRoof.Gc,alphaRoof. y)
        annotation (Line(points={{88,-1},{94,-1},{97.6,-1}},color={0,0,127}));
      connect(eqAirTempVDI.TDryBul,eqAirTemp. TDryBul)
        annotation (Line(points={{44,10},{-80,10},{-80,-64},{-22,-64},{-22,-38},{-10,
              -38}},
        color={0,0,127}));
      connect(eqAirTempVDI.TBlaSky,eqAirTemp. TBlaSky)
        annotation (Line(points={{44,16},{-18,16},{-82,16},{-82,-70},{-42,-70},{-42,
              -60},{-16,-60},{-16,-32},{-10,-32}},
        color={0,0,127}));
      connect(const1.y,eqAirTempVDI. sunblind)
        annotation (Line(points={{56,39.7},{56,28}}, color={0,0,127}));
      connect(eqAirTempVDI.TEqAir,prescribedTemperatureRoof. T) annotation (Line(
            points={{67,16},{72,16},{72,30},{83,30},{83,23.2}}, color={0,0,127}));
      connect(sim.weaDat.weaBus,HDifTilRoof [1].weaBus) annotation (Line(
          points={{-62,34},{-58,34},{-58,30},{-52,30}},
          color={255,204,51},
          thickness=0.5));
      connect(sim.weaDat.weaBus,HDirTilRoof [1].weaBus) annotation (Line(
          points={{-62,34},{-58,34},{-58,56},{-52,56}},
          color={255,204,51},
          thickness=0.5));
      connect(HDirTilRoof.H,solRadRoof. u1)
        annotation (Line(points={{-31,56},{-6,56},{19,56}}, color={0,0,127}));
      connect(HDifTilRoof.H,solRadRoof. u2) annotation (Line(points={{-31,30},{-6,30},
              {-6,50},{19,50}},     color={0,0,127}));
      connect(eqAirTempVDI.HSol,solRadRoof. y) annotation (Line(points={{44,22},{22,
              22},{22,18},{30.5,18},{30.5,53}},color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(thermalZoneFourElements.TAir, TSensor[1]) annotation (Line(points={{109,
              4},{128,4},{128,-60},{156,-60}}, color={0,0,127}));
      connect(thermalZoneFourElements.intGainsRad, heatPortRad[1]) annotation (Line(
            points={{108,-4},{128,-4},{128,-20},{150,-20}}, color={191,0,0}));
      connect(thermalZoneFourElements.intGainsConv, heatPortCon[1]) annotation (
          Line(points={{108,-8},{130,-8},{130,20},{150,20}}, color={191,0,0}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end BuiRes3;

    model BuiRes4 "Residential building 4"
    extends IDEAS.Templates.Interfaces.BaseClasses.Structure(nZones=1,nEmb=0);
      Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil[4](
        each outSkyCon=true,
        each outGroCon=true,
        til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
        each lat = 0.886199060934,
        azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
        "Calculates diffuse solar radiation on titled surface for all directions"
        annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
      Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil[4](
        til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
        each lat = 0.886199060934,
        azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
        "Calculates direct solar radiation on titled surface for all directions"
        annotation (Placement(transformation(extent={{-60,22},{-40,42}})));
      Annex60.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane(n=4, UWin=1.89365575768)
        "Correction factor for solar transmission"
        annotation (Placement(transformation(extent={{14,24},{34,44}})));
      Annex60.ThermalZones.ReducedOrder.RC.FourElements
      thermalZoneFourElements(
        redeclare package Medium = Modelica.Media.Air.DryAirNasa,
        VAir=840.0,
        alphaExt=7.7,
        alphaWin=2.7,
        gWin=0.67,
        ratioWinConRad=0.03,
        nExt=1,
        RExt={8.24935301786e-05},
        CExt={116428225.588},
        alphaRad=1.76004185784,
        AInt=1073.33333333,
        alphaInt=7.35217391304,
        nInt=1,
        RInt={5.19457395054e-05},
        CInt={139664494.676},
        RWin=0.00711087420043,
        RExtRem=0.00658895553725,
        AFloor=124.133333333,
        alphaFloor=1.7,
        nFloor=1,
        RFloor={0.000183563154942},
        RFloorRem=0.0145011077059,
        CFloor={9881304.32672},
        ARoof=124.133333333,
        alphaRoof=1.7,
        nRoof=1,
        RRoof={0.000163227839469},
        RRoofRem=0.0251551701964,
        CRoof={45167575.6451},
        energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
        extWallRC(thermCapExt(each der_T(fixed=true))),
        intWallRC(thermCapInt(each der_T(fixed=true))),
        floorRC(thermCapExt(each der_T(fixed=true))),
        roofRC(thermCapExt(each der_T(fixed=true))),
        nOrientations=4,
        AWin={14.0, 14.0, 14.0, 14.0},
        ATransparent={14.0, 14.0, 14.0, 14.0},
        AExt={69.7, 69.7, 69.7, 69.7}) "Thermal zone"
        annotation (Placement(transformation(extent={{52,-32},{100,4}})));
      Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp(
        n=4,
        wfGro=0.0,
        wfWall={0.25, 0.25, 0.25, 0.25},
        wfWin={0.25, 0.25, 0.25, 0.25},
        withLongwave=true,
        aExt=0.7,
        alphaWallOut=20.0,
        alphaRad=5.0,
        alphaWinOut=20.0,
        TGro=286.15) "Computes equivalent air temperature"
        annotation (Placement(transformation(extent={{-16,-44},{4,-24}})));
      Modelica.Blocks.Math.Add solRad[4]
        "Sums up solar radiation of both directions"
        annotation (Placement(transformation(extent={{-30,-24},{-20,-14}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature
        "Prescribed temperature for exterior walls outdoor surface temperature"
        annotation (Placement(transformation(extent={{16,-36},{28,-24}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1
        "Prescribed temperature for windows outdoor surface temperature"
        annotation (Placement(transformation(extent={{16,-16},{28,-4}})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin
        "Outdoor convective heat transfer of windows"
        annotation (Placement(transformation(extent={{46,-14},{36,-4}})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall
        "Outdoor convective heat transfer of walls"
        annotation (Placement(transformation(extent={{44,-24},{34,-34}})));
      Modelica.Blocks.Sources.Constant const[4](each k=0)
        "Sets sunblind signal to zero (open)"
        annotation (Placement(transformation(extent={{-12,-16},{-6,-10}})));
      Modelica.Blocks.Sources.Constant alphaWall(k=25.0
      *278.8)
        "Outdoor coefficient of heat transfer for walls"
        annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={38,-46})));
      Modelica.Blocks.Sources.Constant alphaWin(k=1400.0)
        "Outdoor coefficient of heat transfer for windows"
        annotation (Placement(
        transformation(
        extent={{4,-4},{-4,4}},
        rotation=90,
        origin={40,8})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureFloor
        "Prescribed temperature for floor plate outdoor surface temperature"
        annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=90,
        origin={75,-42})));
      Modelica.Blocks.Sources.Constant TSoil(k=286.15)
        "Outdoor surface temperature for floor plate"
        annotation (
        Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={92,-52})));
      Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007 eqAirTempVDI(
        aExt=0.7,
        wfGro=0,
        alphaWallOut=20.0,
        alphaRad=5.0,
        n=1,
        wfWall={1.0},
        wfWin={0},
        TGro=285.15) "Computes equivalent air temperature for roof"
        annotation (Placement(transformation(extent={{38,4},{58,24}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureRoof
        "Prescribed temperature for roof outdoor surface temperature"
        annotation (Placement(transformation(extent={{-6,-6},{6,6}},rotation=-90,
        origin={75,14})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorRoof
        "Outdoor convective heat transfer of roof"
        annotation (Placement(transformation(extent={{5,-5},{-5,5}},rotation=-90,
        origin={75,-3})));
      Modelica.Blocks.Sources.Constant alphaRoof(k=3103.33333333)
        "Outdoor coefficient of heat transfer for roof"
        annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=0,
        origin={94,-3})));
      Modelica.Blocks.Sources.Constant const1[1](each k=0)
        "Sets sunblind signal to zero (open)" annotation (Placement(transformation(
            extent={{3,-3},{-3,3}},
            rotation=90,
            origin={48,41})));
      Modelica.Blocks.Math.Add solRadRoof[1]
        "Sums up solar radiation of both directions"
        annotation (Placement(transformation(extent={{12,46},{22,56}})));
      Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTilRoof[1](
        til={0.0},
        each lat = 0.886199060934,
        azi={0.0})
        "Calculates direct solar radiation on titled surface for both directions"
        annotation (Placement(transformation(extent={{-60,44},{-40,64}})));
      Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTilRoof[1](
        til={0.0},
        each lat = 0.886199060934,
        azi={0.0})
        "Calculates diffuse solar radiation on titled surface for both directions"
        annotation (Placement(transformation(extent={{-60,18},{-40,38}})));
      Annex60.BoundaryConditions.WeatherData.Bus weaBus "Weather data bus"
        annotation (Placement(
        transformation(extent={{-92,-40},{-58,-8}}), iconTransformation(
        extent={{-70,-12},{-50,8}})));
    equation

      connect(flowPort_Out, flowPort_In)
        annotation (Line(points={{-20,100},{0,100},{20,100}}, color={0,0,0}));
      connect(eqAirTemp.TEqAirWin,prescribedTemperature1. T)
        annotation (Line(
        points={{5,-30.2},{8,-30.2},{8,-10},{14.8,-10}},
                                                       color={0,0,127}));
      connect(eqAirTemp.TEqAir,prescribedTemperature. T)
        annotation (Line(points={{5,-34},{12,-34},{12,-30},{14.8,-30}},
        color={0,0,127}));
      connect(sim.weaDat.weaBus,weaBus)
        annotation (Line(
        points={{-70,32},{-66,32},{-66,-12},{-76,-12},{-76,-18},{-75,-18},{-75,-24}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
      connect(weaBus.TDryBul,eqAirTemp. TDryBul)
        annotation (Line(
        points={{-75,-24},{-75,-32},{-30,-32},{-30,-40},{-18,-40}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
      connect(const.y,eqAirTemp. sunblind)
        annotation (Line(points={{-5.7,-13},{-4,-13},{-4,-22},{-6,-22}},
        color={0,0,127}));
      connect(HDifTil.HSkyDifTil,corGDoublePane. HSkyDifTil)
        annotation (Line(
        points={{-39,6},{-20,6},{2,6},{2,36},{12,36}},     color={0,0,127}));
      connect(HDirTil.H,corGDoublePane. HDirTil)
        annotation (Line(points={{-39,32},{-2,32},{-2,40},{12,40}},
        color={0,0,127}));
      connect(HDirTil.H,solRad. u1)
        annotation (Line(points={{-39,32},{-34,32},{-34,-16},{-31,-16}},
                       color={0,0,127}));
      connect(HDirTil.inc,corGDoublePane. inc)
        annotation (Line(points={{-39,28},{12,28}},       color={0,0,127}));
      connect(HDifTil.H,solRad. u2)
        annotation (Line(points={{-39,0},{-36,0},{-36,-22},{-31,-22}},
                     color={0,0,127}));
      connect(HDifTil.HGroDifTil,corGDoublePane. HGroDifTil)
        annotation (Line(
        points={{-39,-6},{4,-6},{4,32},{12,32}},  color={0,0,127}));
      connect(solRad.y,eqAirTemp. HSol)
        annotation (Line(points={{-19.5,-19},{-18,-19},{-18,-28}},
        color={0,0,127}));
        connect(sim.weaDat.weaBus,HDifTil [1].weaBus)
        annotation (Line(
        points={{-70,32},{-66,32},{-66,0},{-60,0}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [1].weaBus)
        annotation (Line(
        points={{-70,32},{-65,32},{-60,32}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDifTil [2].weaBus)
        annotation (Line(
        points={{-70,32},{-66,32},{-66,0},{-60,0}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [2].weaBus)
        annotation (Line(
        points={{-70,32},{-65,32},{-60,32}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDifTil [3].weaBus)
        annotation (Line(
        points={{-70,32},{-66,32},{-66,0},{-60,0}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [3].weaBus)
        annotation (Line(
        points={{-70,32},{-65,32},{-60,32}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDifTil [4].weaBus)
        annotation (Line(
        points={{-70,32},{-66,32},{-66,0},{-60,0}},
        color={255,204,51},
        thickness=0.5));
        connect(sim.weaDat.weaBus,HDirTil [4].weaBus)
        annotation (Line(
        points={{-70,32},{-65,32},{-60,32}},
        color={255,204,51},
        thickness=0.5));
      connect(thermalConductorWin.solid,thermalZoneFourElements. window)
        annotation (
         Line(points={{46,-9},{48,-9},{48,-10},{52,-10}}, color={191,0,0}));
      connect(prescribedTemperature1.port,thermalConductorWin. fluid)
        annotation (Line(points={{28,-10},{36,-10},{36,-9}},
                                                           color={191,0,0}));
      connect(thermalZoneFourElements.extWall,thermalConductorWall. solid)
        annotation (Line(points={{52,-18},{48,-18},{48,-29},{44,-29}},
        color={191,0,0}));
      connect(thermalConductorWall.fluid,prescribedTemperature. port)
        annotation (Line(points={{34,-29},{32,-29},{32,-30},{28,-30}},
                                                               color={191,0,0}));
      connect(alphaWall.y,thermalConductorWall. Gc)
        annotation (Line(points={{38,-41.6},{38,-34},{39,-34}},
                                                              color={0,0,127}));
      connect(alphaWin.y,thermalConductorWin. Gc)
        annotation (Line(points={{40,3.6},{40,-4},{41,-4}},  color={0,0,127}));
      connect(weaBus.TBlaSky,eqAirTemp. TBlaSky)
        annotation (Line(
        points={{-75,-24},{-50,-24},{-50,-28},{-24,-28},{-24,-34},{-18,-34}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
      connect(corGDoublePane.solarRadWinTrans,thermalZoneFourElements. solRad)
        annotation (Line(points={{35,34},{42,34},{48,34},{48,1},{51,1}},   color={0,
        0,127}));
      connect(prescribedTemperatureFloor.port,thermalZoneFourElements. floor)
        annotation (Line(points={{75,-36},{76,-36},{76,-32}},
                                                           color={191,0,0}));
      connect(prescribedTemperatureFloor.T,TSoil. y) annotation (Line(points={{75,-49.2},
              {80.5,-49.2},{80.5,-52},{87.6,-52}}, color={0,0,127}));
      connect(prescribedTemperatureRoof.port,thermalConductorRoof. fluid)
        annotation (Line(points={{75,8},{75,8},{75,2}},    color={191,0,0}));
      connect(thermalConductorRoof.solid,thermalZoneFourElements. roof)
        annotation (Line(points={{75,-8},{74.9,-8},{74.9,4}},  color={191,0,0}));
      connect(thermalConductorRoof.Gc,alphaRoof. y)
        annotation (Line(points={{80,-3},{86,-3},{89.6,-3}},color={0,0,127}));
      connect(eqAirTempVDI.TDryBul,eqAirTemp. TDryBul)
        annotation (Line(points={{36,8},{-88,8},{-88,-66},{-30,-66},{-30,-40},{-18,-40}},
        color={0,0,127}));
      connect(eqAirTempVDI.TBlaSky,eqAirTemp. TBlaSky)
        annotation (Line(points={{36,14},{-26,14},{-90,14},{-90,-72},{-50,-72},{-50,
              -62},{-24,-62},{-24,-34},{-18,-34}},
        color={0,0,127}));
      connect(const1.y,eqAirTempVDI. sunblind)
        annotation (Line(points={{48,37.7},{48,26}}, color={0,0,127}));
      connect(eqAirTempVDI.TEqAir,prescribedTemperatureRoof. T) annotation (Line(
            points={{59,14},{64,14},{64,28},{75,28},{75,21.2}}, color={0,0,127}));
      connect(sim.weaDat.weaBus,HDifTilRoof [1].weaBus) annotation (Line(
          points={{-70,32},{-66,32},{-66,28},{-60,28}},
          color={255,204,51},
          thickness=0.5));
      connect(sim.weaDat.weaBus,HDirTilRoof [1].weaBus) annotation (Line(
          points={{-70,32},{-66,32},{-66,54},{-60,54}},
          color={255,204,51},
          thickness=0.5));
      connect(HDirTilRoof.H,solRadRoof. u1)
        annotation (Line(points={{-39,54},{-14,54},{11,54}},color={0,0,127}));
      connect(HDifTilRoof.H,solRadRoof. u2) annotation (Line(points={{-39,28},{-14,28},
              {-14,48},{11,48}},    color={0,0,127}));
      connect(eqAirTempVDI.HSol,solRadRoof. y) annotation (Line(points={{36,20},{14,
              20},{14,16},{22.5,16},{22.5,51}},color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(thermalZoneFourElements.TAir, TSensor[1]) annotation (Line(points={{101,
              2},{124,2},{124,-60},{156,-60}}, color={0,0,127}));
      connect(thermalZoneFourElements.intGainsRad, heatPortRad[1]) annotation (Line(
            points={{100,-6},{124,-6},{124,-20},{150,-20}}, color={191,0,0}));
      connect(thermalZoneFourElements.intGainsConv, heatPortCon[1]) annotation (
          Line(points={{100,-10},{124,-10},{124,20},{150,20}}, color={191,0,0}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end BuiRes4;

    model BuiRes5 "Residential building 5"
    extends IDEAS.Templates.Interfaces.BaseClasses.Structure(nZones=1,nEmb=0);
      Annex60.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(
        calTSky=Annex60.BoundaryConditions.Types.SkyTemperatureCalculation.HorizontalRadiation,
        computeWetBulbTemperature=false,
        filNam="modelica://Annex60/Resources/weatherdata/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.mos")
        "Weather data reader"
        annotation (Placement(transformation(extent={{-106,42},{-86,62}})));
      Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil[4](
        each outSkyCon=true,
        each outGroCon=true,
        til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
        each lat = 0.886199060934,
        azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
        "Calculates diffuse solar radiation on titled surface for all directions"
        annotation (Placement(transformation(extent={{-76,10},{-56,30}})));
      Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil[4](
        til={1.57079632679, 1.57079632679, 1.57079632679, 1.57079632679},
        each lat = 0.886199060934,
        azi={3.14159265359, -1.57079632679, 0.0, 1.57079632679})
        "Calculates direct solar radiation on titled surface for all directions"
        annotation (Placement(transformation(extent={{-76,42},{-56,62}})));
      Annex60.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane(n=4, UWin=3.00178213411)
        "Correction factor for solar transmission"
        annotation (Placement(transformation(extent={{-2,44},{18,64}})));
      Annex60.ThermalZones.ReducedOrder.RC.FourElements
      thermalZoneFourElements(
        redeclare package Medium = Modelica.Media.Air.DryAirNasa,
        VAir=750.0,
        alphaExt=7.7,
        alphaWin=2.7,
        gWin=0.78,
        ratioWinConRad=0.03,
        nExt=1,
        RExt={8.65464600861e-05},
        CExt={110641941.782},
        alphaRad=1.86460548558,
        AInt=958.333333333,
        alphaInt=7.35217391304,
        nInt=1,
        RInt={4.63357492229e-05},
        CInt={120751256.516},
        RWin=0.00406530612245,
        RExtRem=0.00608040608422,
        AFloor=110.833333333,
        alphaFloor=1.7,
        nFloor=1,
        RFloor={0.000166458628668},
        RFloorRem=0.011910877569,
        CFloor={8882312.19255},
        ARoof=144.083333333,
        alphaRoof=1.7,
        nRoof=1,
        RRoof={0.000139120889369},
        RRoofRem=0.0164683318083,
        CRoof={52245463.3311},
        energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
        extWallRC(thermCapExt(each der_T(fixed=true))),
        intWallRC(thermCapInt(each der_T(fixed=true))),
        floorRC(thermCapExt(each der_T(fixed=true))),
        roofRC(thermCapExt(each der_T(fixed=true))),
        nOrientations=4,
        AWin={12.5, 12.5, 12.5, 12.5},
        ATransparent={12.5, 12.5, 12.5, 12.5},
        AExt={66.25, 66.25, 66.25, 66.25}) "Thermal zone"
        annotation (Placement(transformation(extent={{36,-12},{84,24}})));
      Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp(
        n=4,
        wfGro=0.0,
        wfWall={0.25, 0.25, 0.25, 0.25},
        wfWin={0.25, 0.25, 0.25, 0.25},
        withLongwave=true,
        aExt=0.7,
        alphaWallOut=20.0,
        alphaRad=5.0,
        alphaWinOut=20.0,
        TGro=286.15) "Computes equivalent air temperature"
        annotation (Placement(transformation(extent={{-32,-24},{-12,-4}})));
      Modelica.Blocks.Math.Add solRad[4]
        "Sums up solar radiation of both directions"
        annotation (Placement(transformation(extent={{-46,-4},{-36,6}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature
        "Prescribed temperature for exterior walls outdoor surface temperature"
        annotation (Placement(transformation(extent={{0,-16},{12,-4}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1
        "Prescribed temperature for windows outdoor surface temperature"
        annotation (Placement(transformation(extent={{0,4},{12,16}})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin
        "Outdoor convective heat transfer of windows"
        annotation (Placement(transformation(extent={{30,6},{20,16}})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall
        "Outdoor convective heat transfer of walls"
        annotation (Placement(transformation(extent={{28,-4},{18,-14}})));
      Modelica.Blocks.Sources.Constant const[4](each k=0)
        "Sets sunblind signal to zero (open)"
        annotation (Placement(transformation(extent={{-28,4},{-22,10}})));
      Modelica.Blocks.Sources.Constant alphaWall(k=25.0
      *265.0)
        "Outdoor coefficient of heat transfer for walls"
        annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={22,-26})));
      Modelica.Blocks.Sources.Constant alphaWin(k=1250.0)
        "Outdoor coefficient of heat transfer for windows"
        annotation (Placement(
        transformation(
        extent={{4,-4},{-4,4}},
        rotation=90,
        origin={24,28})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureFloor
        "Prescribed temperature for floor plate outdoor surface temperature"
        annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=90,
        origin={59,-22})));
      Modelica.Blocks.Sources.Constant TSoil(k=286.15)
        "Outdoor surface temperature for floor plate"
        annotation (
        Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={76,-32})));
      Annex60.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007 eqAirTempVDI(
        aExt=0.7,
        wfGro=0,
        alphaWallOut=20.0,
        alphaRad=5.0,
        n=1,
        wfWall={1.0},
        wfWin={0},
        TGro=285.15) "Computes equivalent air temperature for roof"
        annotation (Placement(transformation(extent={{22,24},{42,44}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureRoof
        "Prescribed temperature for roof outdoor surface temperature"
        annotation (Placement(transformation(extent={{-6,-6},{6,6}},rotation=-90,
        origin={59,34})));
      Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorRoof
        "Outdoor convective heat transfer of roof"
        annotation (Placement(transformation(extent={{5,-5},{-5,5}},rotation=-90,
        origin={59,17})));
      Modelica.Blocks.Sources.Constant alphaRoof(k=3602.08333333)
        "Outdoor coefficient of heat transfer for roof"
        annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=0,
        origin={78,17})));
      Modelica.Blocks.Sources.Constant const1[1](each k=0)
        "Sets sunblind signal to zero (open)" annotation (Placement(transformation(
            extent={{3,-3},{-3,3}},
            rotation=90,
            origin={32,61})));
      Modelica.Blocks.Math.Add solRadRoof[1]
        "Sums up solar radiation of both directions"
        annotation (Placement(transformation(extent={{-4,66},{6,76}})));
      Annex60.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTilRoof[1](
        til={0.0},
        each lat = 0.886199060934,
        azi={0.0})
        "Calculates direct solar radiation on titled surface for both directions"
        annotation (Placement(transformation(extent={{-76,64},{-56,84}})));
      Annex60.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTilRoof[1](
        til={0.0},
        each lat = 0.886199060934,
        azi={0.0})
        "Calculates diffuse solar radiation on titled surface for both directions"
        annotation (Placement(transformation(extent={{-76,38},{-56,58}})));
      Annex60.BoundaryConditions.WeatherData.Bus weaBus "Weather data bus"
        annotation (Placement(
        transformation(extent={{-108,-20},{-74,12}}),iconTransformation(
        extent={{-70,-12},{-50,8}})));
    equation

      connect(flowPort_Out, flowPort_In)
        annotation (Line(points={{-20,100},{0,100},{20,100}}, color={0,0,0}));
      connect(eqAirTemp.TEqAirWin,prescribedTemperature1. T)
        annotation (Line(
        points={{-11,-10.2},{-8,-10.2},{-8,10},{-1.2,10}},
                                                       color={0,0,127}));
      connect(eqAirTemp.TEqAir,prescribedTemperature. T)
        annotation (Line(points={{-11,-14},{-4,-14},{-4,-10},{-1.2,-10}},
        color={0,0,127}));
      connect(weaDat.weaBus,weaBus)
        annotation (Line(
        points={{-86,52},{-82,52},{-82,8},{-92,8},{-92,2},{-91,2},{-91,-4}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
      connect(weaBus.TDryBul,eqAirTemp. TDryBul)
        annotation (Line(
        points={{-91,-4},{-91,-12},{-46,-12},{-46,-20},{-34,-20}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
      connect(const.y,eqAirTemp. sunblind)
        annotation (Line(points={{-21.7,7},{-20,7},{-20,-2},{-22,-2}},
        color={0,0,127}));
      connect(HDifTil.HSkyDifTil,corGDoublePane. HSkyDifTil)
        annotation (Line(
        points={{-55,26},{-36,26},{-14,26},{-14,56},{-4,56}},
                                                           color={0,0,127}));
      connect(HDirTil.H,corGDoublePane. HDirTil)
        annotation (Line(points={{-55,52},{-18,52},{-18,60},{-4,60}},
        color={0,0,127}));
      connect(HDirTil.H,solRad. u1)
        annotation (Line(points={{-55,52},{-50,52},{-50,4},{-47,4}},
                       color={0,0,127}));
      connect(HDirTil.inc,corGDoublePane. inc)
        annotation (Line(points={{-55,48},{-4,48}},       color={0,0,127}));
      connect(HDifTil.H,solRad. u2)
        annotation (Line(points={{-55,20},{-52,20},{-52,-2},{-47,-2}},
                     color={0,0,127}));
      connect(HDifTil.HGroDifTil,corGDoublePane. HGroDifTil)
        annotation (Line(
        points={{-55,14},{-12,14},{-12,52},{-4,52}},
                                                  color={0,0,127}));
      connect(solRad.y,eqAirTemp. HSol)
        annotation (Line(points={{-35.5,1},{-34,1},{-34,-8}},
        color={0,0,127}));
        connect(weaDat.weaBus,HDifTil [1].weaBus)
        annotation (Line(
        points={{-86,52},{-82,52},{-82,20},{-76,20}},
        color={255,204,51},
        thickness=0.5));
        connect(weaDat.weaBus,HDirTil [1].weaBus)
        annotation (Line(
        points={{-86,52},{-81,52},{-76,52}},
        color={255,204,51},
        thickness=0.5));
        connect(weaDat.weaBus,HDifTil [2].weaBus)
        annotation (Line(
        points={{-86,52},{-82,52},{-82,20},{-76,20}},
        color={255,204,51},
        thickness=0.5));
        connect(weaDat.weaBus,HDirTil [2].weaBus)
        annotation (Line(
        points={{-86,52},{-81,52},{-76,52}},
        color={255,204,51},
        thickness=0.5));
        connect(weaDat.weaBus,HDifTil [3].weaBus)
        annotation (Line(
        points={{-86,52},{-82,52},{-82,20},{-76,20}},
        color={255,204,51},
        thickness=0.5));
        connect(weaDat.weaBus,HDirTil [3].weaBus)
        annotation (Line(
        points={{-86,52},{-81,52},{-76,52}},
        color={255,204,51},
        thickness=0.5));
        connect(weaDat.weaBus,HDifTil [4].weaBus)
        annotation (Line(
        points={{-86,52},{-82,52},{-82,20},{-76,20}},
        color={255,204,51},
        thickness=0.5));
        connect(weaDat.weaBus,HDirTil [4].weaBus)
        annotation (Line(
        points={{-86,52},{-81,52},{-76,52}},
        color={255,204,51},
        thickness=0.5));
      connect(thermalConductorWin.solid,thermalZoneFourElements. window)
        annotation (
         Line(points={{30,11},{32,11},{32,10},{36,10}},   color={191,0,0}));
      connect(prescribedTemperature1.port,thermalConductorWin. fluid)
        annotation (Line(points={{12,10},{20,10},{20,11}}, color={191,0,0}));
      connect(thermalZoneFourElements.extWall,thermalConductorWall. solid)
        annotation (Line(points={{36,2},{32,2},{32,-9},{28,-9}},
        color={191,0,0}));
      connect(thermalConductorWall.fluid,prescribedTemperature. port)
        annotation (Line(points={{18,-9},{16,-9},{16,-10},{12,-10}},
                                                               color={191,0,0}));
      connect(alphaWall.y,thermalConductorWall. Gc)
        annotation (Line(points={{22,-21.6},{22,-14},{23,-14}},
                                                              color={0,0,127}));
      connect(alphaWin.y,thermalConductorWin. Gc)
        annotation (Line(points={{24,23.6},{24,16},{25,16}}, color={0,0,127}));
      connect(weaBus.TBlaSky,eqAirTemp. TBlaSky)
        annotation (Line(
        points={{-91,-4},{-66,-4},{-66,-8},{-40,-8},{-40,-14},{-34,-14}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
      connect(corGDoublePane.solarRadWinTrans,thermalZoneFourElements. solRad)
        annotation (Line(points={{19,54},{26,54},{32,54},{32,21},{35,21}}, color={0,
        0,127}));
      connect(prescribedTemperatureFloor.port,thermalZoneFourElements. floor)
        annotation (Line(points={{59,-16},{60,-16},{60,-12}},
                                                           color={191,0,0}));
      connect(prescribedTemperatureFloor.T,TSoil. y) annotation (Line(points={{59,
              -29.2},{64.5,-29.2},{64.5,-32},{71.6,-32}},
                                                   color={0,0,127}));
      connect(prescribedTemperatureRoof.port,thermalConductorRoof. fluid)
        annotation (Line(points={{59,28},{59,28},{59,22}}, color={191,0,0}));
      connect(thermalConductorRoof.solid,thermalZoneFourElements. roof)
        annotation (Line(points={{59,12},{58.9,12},{58.9,24}}, color={191,0,0}));
      connect(thermalConductorRoof.Gc,alphaRoof. y)
        annotation (Line(points={{64,17},{70,17},{73.6,17}},color={0,0,127}));
      connect(eqAirTempVDI.TDryBul,eqAirTemp. TDryBul)
        annotation (Line(points={{20,28},{-104,28},{-104,-46},{-46,-46},{-46,
              -20},{-34,-20}},
        color={0,0,127}));
      connect(eqAirTempVDI.TBlaSky,eqAirTemp. TBlaSky)
        annotation (Line(points={{20,34},{-42,34},{-106,34},{-106,-52},{-66,-52},
              {-66,-42},{-40,-42},{-40,-14},{-34,-14}},
        color={0,0,127}));
      connect(const1.y,eqAirTempVDI. sunblind)
        annotation (Line(points={{32,57.7},{32,46}}, color={0,0,127}));
      connect(eqAirTempVDI.TEqAir,prescribedTemperatureRoof. T) annotation (Line(
            points={{43,34},{48,34},{48,48},{59,48},{59,41.2}}, color={0,0,127}));
      connect(weaDat.weaBus,HDifTilRoof [1].weaBus) annotation (Line(
          points={{-86,52},{-82,52},{-82,48},{-76,48}},
          color={255,204,51},
          thickness=0.5));
      connect(weaDat.weaBus,HDirTilRoof [1].weaBus) annotation (Line(
          points={{-86,52},{-82,52},{-82,74},{-76,74}},
          color={255,204,51},
          thickness=0.5));
      connect(HDirTilRoof.H,solRadRoof. u1)
        annotation (Line(points={{-55,74},{-30,74},{-5,74}},color={0,0,127}));
      connect(HDifTilRoof.H,solRadRoof. u2) annotation (Line(points={{-55,48},{
              -30,48},{-30,68},{-5,68}},
                                    color={0,0,127}));
      connect(eqAirTempVDI.HSol,solRadRoof. y) annotation (Line(points={{20,40},
              {-2,40},{-2,36},{6.5,36},{6.5,71}},
                                               color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(thermalZoneFourElements.intGainsRad, heatPortCon[1]) annotation (
          Line(points={{84,14},{118,14},{118,20},{150,20}}, color={191,0,0}));
      connect(thermalZoneFourElements.intGainsConv, heatPortRad[1]) annotation
        (Line(points={{84,10},{116,10},{116,-20},{150,-20}}, color={191,0,0}));
      connect(thermalZoneFourElements.TAir, TSensor[1]) annotation (Line(points
            ={{85,22},{116,22},{116,-60},{156,-60}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end BuiRes5;
  end Structures;

  package HeatingSystems

    model DHrad2
      extends IDEAS.Templates.Interfaces.BaseClasses.HeatingSystem(
        isHea = true,
        isCoo = false,
        isDH = true,
        nConvPorts = nZones,
        nRadPorts = nZones,
        nTemSen = nZones,
        nEmbPorts=0,
        final nLoads=0);
        parameter Modelica.SIunits.Power[nZones] QNom=ones(nZones)*5000;
        parameter Modelica.SIunits.Temperature TSupNom = 273.15+60;
        parameter Modelica.SIunits.Temperature TRetNom = TSupNom - 20;
        parameter Modelica.SIunits.MassFlowRate m_flow_Nom = sum(QNom)/(TSupNom-TRetNom)/4181;
      IDEAS.Fluid.HeatExchangers.ConstantEffectiveness hex(redeclare package
          Medium1 =                                                                    Medium,redeclare
          package Medium2 =                                                                                               Medium,
        allowFlowReversal1=false,
        allowFlowReversal2=false,
        show_T=true,
        from_dp1=false,
        linearizeFlowResistance1=false,
        dp1_nominal=10,
        dp2_nominal=10,
        m1_flow_nominal=m_flow_Nom,
        m2_flow_nominal=m_flow_Nom)
        annotation (Placement(transformation(extent={{34,4},{60,-26}})));
      IDEAS.Fluid.HeatExchangers.Radiators.RadiatorEN442_2[nZones] rad(redeclare
          each package
                  Medium =                                                                     Medium,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        nEle=1,
        Q_flow_nominal=QNom,
        T_a_nominal=TSupNom,
        T_b_nominal=TRetNom)                                                                            annotation (
          Placement(transformation(
            extent={{15,15},{-15,-15}},
            rotation=180,
            origin={3,55})));
      IDEAS.Controls.Continuous.LimPID[nZones] conPID(controllerType=Modelica.Blocks.Types.SimpleController.P,
        reverseAction=false,
        yMax=m_flow_Nom,
        k=10)
        annotation (Placement(transformation(extent={{2,-70},{-20,-48}})));
      IDEAS.Fluid.Sources.FixedBoundary bou(         redeclare each package
          Medium =                                                                             Medium,
          nPorts=1,
        use_T=false)                                                                                   annotation (Placement(
            transformation(
            extent={{-7,-6},{7,6}},
            rotation=90,
            origin={76,-10})));
      IDEAS.Fluid.Movers.FlowControlled_m_flow[nZones] pump(
        redeclare package Medium = IDEAS.Media.Water,
        redeclare IDEAS.Fluid.Movers.Data.Generic per,
        inputType=IDEAS.Fluid.Types.InputType.Continuous,
        addPowerToMedium=false,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        allowFlowReversal=false,
        filteredSpeed=false,
        m_flow_nominal=m_flow_Nom) "pump with variable mass flow"
        annotation (Placement(transformation(extent={{10,14},{-16,-14}})));
    equation
      P[1]=0;
      Q[1]=0;
      QHeaSys=-sum(rad.heatPortCon.Q_flow)-sum(rad.heatPortRad.Q_flow);
      connect(rad.heatPortCon, heatPortCon) annotation (Line(points={{1.33227e-015,
              65.8},{1.33227e-015,72},{0,72},{0,78},{-172,78},{-172,20},{-200,20}},
                                                   color={191,0,0}));
      connect(rad.heatPortRad, heatPortRad) annotation (Line(points={{6,65.8},{6,
              65.8},{6,82},{-128,82},{-128,-20},{-200,-20}},
                                                 color={191,0,0}));
      connect(conPID.u_s, TSet)
        annotation (Line(points={{4.2,-59},{20,-59},{20,-104}}, color={0,0,127}));
      connect(TSensor, conPID.u_m) annotation (Line(points={{-204,-60},{-170,-60},
              {-60,-60},{-60,-84},{-9,-84},{-9,-72.2}}, color={0,0,127}));
      connect(pump.port_b, rad.port_a) annotation (Line(points={{-16,1.77636e-015},{
              -46,1.77636e-015},{-46,55},{-12,55}}, color={0,127,255}));
      connect(conPID.y, pump.m_flow_in) annotation (Line(points={{-21.1,-59},{-26,-59},
              {-26,-38},{-2.74,-38},{-2.74,-16.8}}, color={0,0,127}));
      connect(hex.port_a2, bou.ports[1])
        annotation (Line(points={{60,-2},{76,-2},{76,-3}}, color={0,127,255}));
      connect(flowPort_supply, hex.port_a1) annotation (Line(points={{160,-100},{148,
              -100},{148,-64},{34,-64},{34,-20}}, color={0,0,0}));
      connect(flowPort_return, hex.port_b1) annotation (Line(points={{120,-100},{98,
              -100},{98,-34},{60,-34},{60,-20}}, color={0,0,0}));
      for i in 1:nZones loop
         connect(rad[i].port_b, hex.port_a2)
        annotation (Line(points={{18,55},{60,55},{60,-2}}, color={0,127,255}));
      connect(hex.port_b2, pump[i].port_a) annotation (Line(points={{34,-2},{22,-2},
              {22,0},{10,0}}, color={0,127,255}));
      end for;

      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end DHrad2;
  end HeatingSystems;

  annotation (uses(
      IDEAS(version="0.2"),
      Annex60(version="0.1"),
      Modelica(version="3.2.2")));
end GenSim16;
