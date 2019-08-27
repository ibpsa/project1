within IBPSAdestest.Consumer;
package SimpleDistrict_2zoneBuilding
  "Folder containing 16 identical 2-zone buildings"

  extends Modelica.Icons.Package;

  model SimpleDistrict_Project
      inner IDEAS.BoundaryConditions.SimInfoManager sim
          annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_1.SimpleDistrict_1_Building SimpleDistrict_1_Building
      annotation (Placement(transformation(extent={{-100,0},{-80,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_2.SimpleDistrict_2_Building SimpleDistrict_2_Building
      annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_3.SimpleDistrict_3_Building SimpleDistrict_3_Building
      annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_4.SimpleDistrict_4_Building SimpleDistrict_4_Building
      annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_5.SimpleDistrict_5_Building SimpleDistrict_5_Building
      annotation (Placement(transformation(extent={{-20,0},{0,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_6.SimpleDistrict_6_Building SimpleDistrict_6_Building
      annotation (Placement(transformation(extent={{0,0},{20,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_7.SimpleDistrict_7_Building SimpleDistrict_7_Building
      annotation (Placement(transformation(extent={{20,0},{40,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_8.SimpleDistrict_8_Building SimpleDistrict_8_Building
      annotation (Placement(transformation(extent={{40,0},{60,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_9.SimpleDistrict_9_Building SimpleDistrict_9_Building
      annotation (Placement(transformation(extent={{60,0},{80,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_10.SimpleDistrict_10_Building
      SimpleDistrict_10_Building
      annotation (Placement(transformation(extent={{80,0},{100,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_11.SimpleDistrict_11_Building
      SimpleDistrict_11_Building
      annotation (Placement(transformation(extent={{100,0},{120,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_12.SimpleDistrict_12_Building
      SimpleDistrict_12_Building
      annotation (Placement(transformation(extent={{120,0},{140,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_13.SimpleDistrict_13_Building
      SimpleDistrict_13_Building
      annotation (Placement(transformation(extent={{140,0},{160,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_14.SimpleDistrict_14_Building
      SimpleDistrict_14_Building
      annotation (Placement(transformation(extent={{160,0},{180,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_15.SimpleDistrict_15_Building
      SimpleDistrict_15_Building
      annotation (Placement(transformation(extent={{180,0},{200,20}})));
      SimpleDistrict_2zoneBuilding.SimpleDistrict_16.SimpleDistrict_16_Building
      SimpleDistrict_16_Building
      annotation (Placement(transformation(extent={{200,0},{220,20}})));
  end SimpleDistrict_Project;

  package SimpleDistrict_1

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_1_Structure "Structure of SimpleDistrict_1"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_1_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_1_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_1.Structure.SimpleDistrict_1_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare HeatingSystems.Substation_no_DHW             heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C) annotation (Line(
          points={{6,-10.2},{6,-30}},
          color={0,0,127},
          pattern=LinePattern.Dash));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_1_Building;

    model SimpleDistrict_1
        Modelica.SIunits.Temperature[SimpleDistrict_1_Building.building.nZones] TSensor = SimpleDistrict_1_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_1_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_1_Building.building.nZones] AZones = SimpleDistrict_1_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        //Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_1_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_1_Building.building.nZones] TSet = SimpleDistrict_1_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_1_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_1_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_1.SimpleDistrict_1_Building SimpleDistrict_1_Building(
        isDH=true,
        Tsup_prim=67 + 273.15,
        Tsup_sec=37 + 273.15,
        Tret_prim=47 + 273.15,
        Tret_sec=35 + 273.15)
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
    public
      IDEAS.Fluid.Sources.Boundary_pT bou(
        nPorts=1,
        redeclare package Medium = IDEAS.Media.Water,
        T=67 + 273.15)
        annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));
      IDEAS.Fluid.Sources.Boundary_pT bou1(nPorts=1, redeclare package Medium =
            IDEAS.Media.Water) annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=180,
            origin={50,-10})));
    equation
      connect(bou.ports[1], SimpleDistrict_1_Building.port_a)
        annotation (Line(points={{-20,-10},{8,-10},{8,0}}, color={0,127,255}));
      connect(SimpleDistrict_1_Building.port_b, bou1.ports[1]) annotation (Line(
            points={{12,0},{12,-10},{40,-10}}, color={0,127,255}));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_1;
  end SimpleDistrict_1;

  package SimpleDistrict_2

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_2_Structure "Structure of SimpleDistrict_2"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_2_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_2_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_2.Structure.SimpleDistrict_2_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);


        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_2_Building;

    model SimpleDistrict_2
        Modelica.SIunits.Temperature[SimpleDistrict_2_Building.building.nZones] TSensor = SimpleDistrict_2_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_2_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_2_Building.building.nZones] AZones = SimpleDistrict_2_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        //Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_2_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_2_Building.building.nZones] TSet = SimpleDistrict_2_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_2_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_2_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_2.SimpleDistrict_2_Building
        SimpleDistrict_2_Building(
        isDH=true,
        Tsup_prim=67 + 273.15,
        Tsup_sec=47 + 273.15,
        Tret_prim=37 + 273.15,
        Tret_sec=35 + 273.15)
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
    public
      IDEAS.Fluid.Sources.Boundary_pT bou(
        redeclare package Medium = IDEAS.Media.Water,
        T=67 + 273.15,
        nPorts=1)
        annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));
      IDEAS.Fluid.Sources.Boundary_pT bou1(          redeclare package Medium =
            IDEAS.Media.Water, nPorts=1)
                               annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=180,
            origin={50,-10})));
    equation
      connect(SimpleDistrict_2_Building.port_a, bou.ports[1]) annotation (Line(
            points={{8,0},{8,-10},{-20,-10},{-20,-10}}, color={0,127,255}));
      connect(SimpleDistrict_2_Building.port_b, bou1.ports[1])
        annotation (Line(points={{12,0},{12,-10},{40,-10}}, color={0,127,255}));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_2;
  end SimpleDistrict_2;

  package SimpleDistrict_3

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_3_Structure "Structure of SimpleDistrict_3"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_3_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_3_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_3.Structure.SimpleDistrict_3_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);


        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_3_Building;

    model SimpleDistrict_3
        Modelica.SIunits.Temperature[SimpleDistrict_3_Building.building.nZones] TSensor = SimpleDistrict_3_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_3_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_3_Building.building.nZones] AZones = SimpleDistrict_3_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        //Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_3_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_3_Building.building.nZones] TSet = SimpleDistrict_3_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_3_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_3_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_3.SimpleDistrict_3_Building
        SimpleDistrict_3_Building(
        Tsup_prim=67 + 273.15,
        Tsup_sec=47 + 273.15,
        Tret_prim=37 + 273.15,
        Tret_sec=35 + 273.15,
        isDH=true)
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
    public
      IDEAS.Fluid.Sources.Boundary_pT bou(
        redeclare package Medium = IDEAS.Media.Water,
        T=67 + 273.15,
        nPorts=1)
        annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));
      IDEAS.Fluid.Sources.Boundary_pT bou1(          redeclare package Medium =
            IDEAS.Media.Water, nPorts=1)
                               annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=180,
            origin={50,-10})));
    equation
      connect(SimpleDistrict_3_Building.port_a, bou.ports[1])
        annotation (Line(points={{8,0},{8,-10},{-20,-10}}, color={0,127,255}));
      connect(SimpleDistrict_3_Building.port_b, bou1.ports[1]) annotation (Line(
            points={{12,0},{12,-10},{40,-10}}, color={0,127,255}));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_3;
  end SimpleDistrict_3;

  package SimpleDistrict_4

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_4_Structure "Structure of SimpleDistrict_4"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_4_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_4_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_4.Structure.SimpleDistrict_4_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_4_Building;

    model SimpleDistrict_4
        Modelica.SIunits.Temperature[SimpleDistrict_4_Building.building.nZones] TSensor = SimpleDistrict_4_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_4_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_4_Building.building.nZones] AZones = SimpleDistrict_4_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_4_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_4_Building.building.nZones] TSet = SimpleDistrict_4_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_4_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_4_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_4.SimpleDistrict_4_Building
        SimpleDistrict_4_Building(
        isDH=true,
        Tsup_prim=67 + 273.15,
        Tsup_sec=47 + 273.15,
        Tret_prim=37 + 273.15,
        Tret_sec=35 + 273.15)
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
    public
      IDEAS.Fluid.Sources.Boundary_pT bou(
        redeclare package Medium = IDEAS.Media.Water,
        T=67 + 273.15,
        nPorts=1)
        annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));
      IDEAS.Fluid.Sources.Boundary_pT bou1(          redeclare package Medium =
            IDEAS.Media.Water, nPorts=1)
                               annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=180,
            origin={50,-10})));
    equation
      connect(SimpleDistrict_4_Building.port_a, bou.ports[1])
        annotation (Line(points={{8,0},{8,-10},{-20,-10}}, color={0,127,255}));
      connect(SimpleDistrict_4_Building.port_b, bou1.ports[1]) annotation (Line(
            points={{12,0},{12,-10},{40,-10}}, color={0,127,255}));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_4;
  end SimpleDistrict_4;

  package SimpleDistrict_5

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_5_Structure "Structure of SimpleDistrict_5"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_5_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_5_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_5.Structure.SimpleDistrict_5_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_5_Building;

    model SimpleDistrict_5
        Modelica.SIunits.Temperature[SimpleDistrict_5_Building.building.nZones] TSensor = SimpleDistrict_5_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_5_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_5_Building.building.nZones] AZones = SimpleDistrict_5_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_5_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_5_Building.building.nZones] TSet = SimpleDistrict_5_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_5_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_5_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_5.SimpleDistrict_5_Building
        SimpleDistrict_5_Building
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_5;
  end SimpleDistrict_5;

  package SimpleDistrict_6

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_6_Structure "Structure of SimpleDistrict_6"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_6_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_6_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_6.Structure.SimpleDistrict_6_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_6_Building;

    model SimpleDistrict_6
        Modelica.SIunits.Temperature[SimpleDistrict_6_Building.building.nZones] TSensor = SimpleDistrict_6_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_6_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_6_Building.building.nZones] AZones = SimpleDistrict_6_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_6_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_6_Building.building.nZones] TSet = SimpleDistrict_6_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_6_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_6_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_6.SimpleDistrict_6_Building
        SimpleDistrict_6_Building
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_6;
  end SimpleDistrict_6;

  package SimpleDistrict_7

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_7_Structure "Structure of SimpleDistrict_7"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_7_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_7_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_7.Structure.SimpleDistrict_7_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_7_Building;

    model SimpleDistrict_7
        Modelica.SIunits.Temperature[SimpleDistrict_7_Building.building.nZones] TSensor = SimpleDistrict_7_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_7_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_7_Building.building.nZones] AZones = SimpleDistrict_7_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_7_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_7_Building.building.nZones] TSet = SimpleDistrict_7_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_7_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_7_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_7.SimpleDistrict_7_Building
        SimpleDistrict_7_Building
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_7;
  end SimpleDistrict_7;

  package SimpleDistrict_8

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_8_Structure "Structure of SimpleDistrict_8"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_8_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_8_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_8.Structure.SimpleDistrict_8_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_8_Building;

    model SimpleDistrict_8
        Modelica.SIunits.Temperature[SimpleDistrict_8_Building.building.nZones] TSensor = SimpleDistrict_8_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_8_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_8_Building.building.nZones] AZones = SimpleDistrict_8_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_8_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_8_Building.building.nZones] TSet = SimpleDistrict_8_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_8_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_8_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_8.SimpleDistrict_8_Building
        SimpleDistrict_8_Building
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_8;
  end SimpleDistrict_8;

  package SimpleDistrict_9

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_9_Structure "Structure of SimpleDistrict_9"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_9_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_9_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_9.Structure.SimpleDistrict_9_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_9_Building;

    model SimpleDistrict_9
        Modelica.SIunits.Temperature[SimpleDistrict_9_Building.building.nZones] TSensor = SimpleDistrict_9_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_9_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_9_Building.building.nZones] AZones = SimpleDistrict_9_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_9_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_9_Building.building.nZones] TSet = SimpleDistrict_9_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_9_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_9_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_9.SimpleDistrict_9_Building
        SimpleDistrict_9_Building
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_9;
  end SimpleDistrict_9;

  package SimpleDistrict_10

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_10_Structure "Structure of SimpleDistrict_10"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_10_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_10_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_10.Structure.SimpleDistrict_10_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_10_Building;

    model SimpleDistrict_10
        Modelica.SIunits.Temperature[SimpleDistrict_10_Building.building.nZones] TSensor = SimpleDistrict_10_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_10_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_10_Building.building.nZones] AZones = SimpleDistrict_10_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_10_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_10_Building.building.nZones] TSet = SimpleDistrict_10_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_10_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_10_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_10.SimpleDistrict_10_Building
        SimpleDistrict_10_Building
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_10;
  end SimpleDistrict_10;

  package SimpleDistrict_11

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_11_Structure "Structure of SimpleDistrict_11"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_11_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_11_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_11.Structure.SimpleDistrict_11_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_11_Building;

    model SimpleDistrict_11
        Modelica.SIunits.Temperature[SimpleDistrict_11_Building.building.nZones] TSensor = SimpleDistrict_11_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_11_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_11_Building.building.nZones] AZones = SimpleDistrict_11_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_11_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_11_Building.building.nZones] TSet = SimpleDistrict_11_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_11_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_11_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_11.SimpleDistrict_11_Building
        SimpleDistrict_11_Building
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_11;
  end SimpleDistrict_11;

  package SimpleDistrict_12

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_12_Structure "Structure of SimpleDistrict_12"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_12_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_12_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_12.Structure.SimpleDistrict_12_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_12_Building;

    model SimpleDistrict_12
        Modelica.SIunits.Temperature[SimpleDistrict_12_Building.building.nZones] TSensor = SimpleDistrict_12_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_12_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_12_Building.building.nZones] AZones = SimpleDistrict_12_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_12_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_12_Building.building.nZones] TSet = SimpleDistrict_12_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_12_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_12_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_12.SimpleDistrict_12_Building
        SimpleDistrict_12_Building
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_12;
  end SimpleDistrict_12;

  package SimpleDistrict_13

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_13_Structure "Structure of SimpleDistrict_13"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_13_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_13_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_13.Structure.SimpleDistrict_13_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_13_Building;

    model SimpleDistrict_13
        Modelica.SIunits.Temperature[SimpleDistrict_13_Building.building.nZones] TSensor = SimpleDistrict_13_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_13_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_13_Building.building.nZones] AZones = SimpleDistrict_13_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_13_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_13_Building.building.nZones] TSet = SimpleDistrict_13_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_13_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_13_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_13.SimpleDistrict_13_Building
        SimpleDistrict_13_Building
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_13;
  end SimpleDistrict_13;

  package SimpleDistrict_14

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_14_Structure "Structure of SimpleDistrict_14"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_14_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_14_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_14.Structure.SimpleDistrict_14_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_14_Building;

    model SimpleDistrict_14
        Modelica.SIunits.Temperature[SimpleDistrict_14_Building.building.nZones] TSensor = SimpleDistrict_14_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_14_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_14_Building.building.nZones] AZones = SimpleDistrict_14_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_14_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_14_Building.building.nZones] TSet = SimpleDistrict_14_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_14_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_14_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_14.SimpleDistrict_14_Building
        SimpleDistrict_14_Building
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_14;
  end SimpleDistrict_14;

  package SimpleDistrict_15

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_15_Structure "Structure of SimpleDistrict_15"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_15_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_15_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_15.Structure.SimpleDistrict_15_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_15_Building;

    model SimpleDistrict_15
        Modelica.SIunits.Temperature[SimpleDistrict_15_Building.building.nZones] TSensor = SimpleDistrict_15_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_15_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_15_Building.building.nZones] AZones = SimpleDistrict_15_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_15_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_15_Building.building.nZones] TSet = SimpleDistrict_15_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_15_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_15_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_15.SimpleDistrict_15_Building
        SimpleDistrict_15_Building
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_15;
  end SimpleDistrict_15;

  package SimpleDistrict_16

    extends Modelica.Icons.Package;

    package Structure "Package of the particular building structure"

      extends Modelica.Icons.Package;

      package Data "Data for transient thermal building simulation"

        extends Modelica.Icons.MaterialPropertiesPackage;

        package Materials "Library of construction materials"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record HeavyMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.10,
                c=840,
                rho=1850,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: HeavyMasonryForExteriorApplications, Material ID: 0abaee5a-83ff-11e6-a1cb-2cd444b2e704";
          record LargeCavityHorizontalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.18,
                c=20,
                rho=0.1,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityHorizontalHeatTransfer, Material ID: 0abbb1a0-83ff-11e6-9986-2cd444b2e704";
          record ExpandedPolystrenemOrEPS =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.036,
                c=1470,
                rho=26,
                epsLw=0.8,
                epsSw=0.8)
            "Material name: ExpandedPolystrenemOrEPS, Material ID: 0abaa033-83ff-11e6-ae46-2cd444b2e704";
          record MediumMasonryForExteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.75,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForExteriorApplications, Material ID: 0aba790e-83ff-11e6-8468-2cd444b2e704";
          record GypsumPlasterForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=975,
                epsLw=0.85,
                epsSw=0.65)
            "Material name: GypsumPlasterForFinishing, Material ID: 0aba51fd-83ff-11e6-b93d-2cd444b2e704";
          record CeramicTileForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: CeramicTileForFinishing, Material ID: 0aba520e-83ff-11e6-920d-2cd444b2e704";
          record LargeCavityVerticalHeatTransfer =
              IDEAS.Buildings.Data.Interfaces.Material (
                d=0.1,
                k=0.1/0.16,
                c=20,
                rho=100,
                epsLw=0.88,
                epsSw=0.55,
                final gas=true)
            "Material name: LargeCavityVerticalHeatTransfer, Material ID: 0abaa039-83ff-11e6-b385-2cd444b2e704";
          record Glasswool = IDEAS.Buildings.Data.Interfaces.Material (
                k=0.040,
                c=840,
                rho=80)
            "Material name: Glasswool, Material ID: 0aba5208-83ff-11e6-abf6-2cd444b2e704";
          record DenseCastConcreteAlsoForFinishing =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=1.4,
                c=840,
                rho=2100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: DenseCastConcreteAlsoForFinishing, Material ID: 0abb8a82-83ff-11e6-8ff5-2cd444b2e704";
          record ScreedOrLightCastConcrete =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.6,
                c=840,
                rho=1100,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: ScreedOrLightCastConcrete, Material ID: 0abb6391-83ff-11e6-8633-2cd444b2e704";
          record MediumMasonryForInteriorApplications =
              IDEAS.Buildings.Data.Interfaces.Material (
                k=0.54,
                c=840,
                rho=1400,
                epsLw=0.88,
                epsSw=0.55)
            "Material name: MediumMasonryForInteriorApplications, Material ID: 0aba7915-83ff-11e6-8883-2cd444b2e704";
          record TimberForFinishing = IDEAS.Buildings.Data.Interfaces.Material
              ( k=0.11,
                c=1880,
                rho=550,
                epsLw=0.86,
                epsSw=0.44)
            "Material name: TimberForFinishing, Material ID: 0abaa02c-83ff-11e6-b0b6-2cd444b2e704";
        end Materials;

        package Constructions "Library of building envelope constructions"

          extends Modelica.Icons.MaterialPropertiesPackage;

          record OuterWall  "Construction data of OuterWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.HeavyMasonryForExteriorApplications(d=0.1),Data.Materials.LargeCavityHorizontalHeatTransfer(d=0.1),Data.Materials.ExpandedPolystrenemOrEPS(d=0.01),Data.Materials.MediumMasonryForExteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end OuterWall;

          record Rooftop  "Construction data of Rooftop"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.CeramicTileForFinishing(d=0.025),Data.Materials.LargeCavityVerticalHeatTransfer(d=0.1),Data.Materials.Glasswool(d=0.04),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Rooftop;

          record GroundFloor  "Construction data of GroundFloor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.15),Data.Materials.ExpandedPolystrenemOrEPS(d=0.03),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.CeramicTileForFinishing(d=0.02)});
          end GroundFloor;

          record InnerWall  "Construction data of InnerWall"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.GypsumPlasterForFinishing(d=0.02),Data.Materials.MediumMasonryForInteriorApplications(d=0.14),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end InnerWall;

          record Floor  "Construction data of Floor"
            extends IDEAS.Buildings.Data.Interfaces.Construction(
              final mats={Data.Materials.TimberForFinishing(d=0.02),Data.Materials.ScreedOrLightCastConcrete(d=0.08),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.DenseCastConcreteAlsoForFinishing(d=0.1),Data.Materials.GypsumPlasterForFinishing(d=0.02)});
          end Floor;

          record Window_Glazing =
                        IDEAS.Buildings.Data.Glazing.EpcDouble
            "Glazing data of Window";
          record Window_Frame    "Frame data of Window"
              extends IDEAS.Buildings.Data.Interfaces.Frame(
              present=true,
              U_value=4.55);
          end Window_Frame;
        end Constructions;
      end Data;

      model SimpleDistrict_16_Structure "Structure of SimpleDistrict_16"
          extends IDEAS.Templates.Interfaces.BaseClasses.Structure(
              redeclare each package Medium = IDEAS.Media.Air,
              nZones = 2,
              VZones = {
                  DayZone.V,
                  NightZone.V},
              AZones = {
                  DayZone.A,
                  NightZone.A},
              Q_design = {
                  DayZone.Q_design,
                  NightZone.Q_design},
              nEmb = 0);

          parameter Modelica.SIunits.Area OuterWall_1_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_1(
              A=OuterWall_1_1_A,
              inc=OuterWall_1_1_inc,
              azi=OuterWall_1_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={10,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_2_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_2(
              A=OuterWall_1_2_A,
              inc=OuterWall_1_2_inc,
              azi=OuterWall_1_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_3_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_3(
              A=OuterWall_1_3_A,
              inc=OuterWall_1_3_inc,
              azi=OuterWall_1_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,-60})));

          parameter Modelica.SIunits.Area OuterWall_1_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_1_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_1_4(
              A=OuterWall_1_4_A,
              inc=OuterWall_1_4_inc,
              azi=OuterWall_1_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,-60})));

          parameter Modelica.SIunits.Area Window_1_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_1_A,
              inc=Window_1_1_inc,
              azi=Window_1_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-110,-60})));

          parameter Modelica.SIunits.Area Window_1_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_2_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_1_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_2_A,
              inc=Window_1_2_inc,
              azi=Window_1_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,-60})));

          parameter Modelica.SIunits.Area Window_1_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_3_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_1_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_3_A,
              inc=Window_1_3_inc,
              azi=Window_1_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,-60})));

          parameter Modelica.SIunits.Area Window_1_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_1_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_1_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_1_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_1_4_A,
              inc=Window_1_4_inc,
              azi=Window_1_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,-60})));

          IDEAS.Buildings.Components.SlabOnGround GroundFloor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.GroundFloor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,-60})));

          IDEAS.Buildings.Components.InternalWall InnerWall_1_1(
              A=186.666666667,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-290,-60})));

          IDEAS.Buildings.Components.InternalWall Floor_1_1(
              A=64.0,
              inc=0.0,
              azi=0.0,
              redeclare parameter Data.Constructions.Floor constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,-60})));

          IDEAS.Buildings.Components.Zone DayZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: DayZone"
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));

          parameter Modelica.SIunits.Area OuterWall_2_1_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_1(
              A=OuterWall_2_1_A,
              inc=OuterWall_2_1_inc,
              azi=OuterWall_2_1_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-20,0})));

          parameter Modelica.SIunits.Area OuterWall_2_2_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_2_azi =  3.14159265359;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_2(
              A=OuterWall_2_2_A,
              inc=OuterWall_2_2_inc,
              azi=OuterWall_2_2_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-50,0})));

          parameter Modelica.SIunits.Area OuterWall_2_3_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_3_azi =  1.57079632679;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_3(
              A=OuterWall_2_3_A,
              inc=OuterWall_2_3_inc,
              azi=OuterWall_2_3_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-80,0})));

          parameter Modelica.SIunits.Area OuterWall_2_4_A =  22.4;
          parameter Modelica.SIunits.Angle OuterWall_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle OuterWall_2_4_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall OuterWall_2_4(
              A=OuterWall_2_4_A,
              inc=OuterWall_2_4_inc,
              azi=OuterWall_2_4_azi,
              redeclare parameter Data.Constructions.OuterWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-110,0})));

          parameter Modelica.SIunits.Area Window_2_1_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_1_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_1_azi =  -1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_1(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_1_A,
              inc=Window_2_1_inc,
              azi=Window_2_1_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-140,0})));

          parameter Modelica.SIunits.Area Window_2_2_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_2_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_2_azi =  3.14159265359;

          IDEAS.Buildings.Components.Window Window_2_2(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_2_A,
              inc=Window_2_2_inc,
              azi=Window_2_2_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-170,0})));

          parameter Modelica.SIunits.Area Window_2_3_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_3_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_3_azi =  1.57079632679;

          IDEAS.Buildings.Components.Window Window_2_3(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_3_A,
              inc=Window_2_3_inc,
              azi=Window_2_3_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-200,0})));

          parameter Modelica.SIunits.Area Window_2_4_A =  5.6;
          parameter Modelica.SIunits.Angle Window_2_4_inc =  1.57079632679;
          parameter Modelica.SIunits.Angle Window_2_4_azi =  0.0;

          IDEAS.Buildings.Components.Window Window_2_4(
              redeclare parameter Data.Constructions.Window_Glazing glazing,
              redeclare parameter Data.Constructions.Window_Frame fraType,
              redeclare IDEAS.Buildings.Components.Shading.None shaType,
              A=Window_2_4_A,
              inc=Window_2_4_inc,
              azi=Window_2_4_azi)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-230,0})));

          parameter Modelica.SIunits.Area Rooftop_2_1_A =  64.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_inc =  0.0;
          parameter Modelica.SIunits.Angle Rooftop_2_1_azi =  0.0;

          IDEAS.Buildings.Components.OuterWall Rooftop_2_1(
              A=Rooftop_2_1_A,
              inc=Rooftop_2_1_inc,
              azi=Rooftop_2_1_azi,
              redeclare parameter Data.Constructions.Rooftop constructionType)
              annotation (Placement(transformation(
                  extent={{-5.5,-10.5},{5.5,10.5}},
                  rotation=90,
                  origin={-260,0})));

          IDEAS.Buildings.Components.InternalWall InnerWall_2_1(
              A=168.0,
              inc=1.57079632679,
              azi=3.14159265359,
              redeclare parameter Data.Constructions.InnerWall constructionType)
              annotation (Placement(transformation(
                  extent={{-5,-10},{5,10}},
                  rotation=90,
                  origin={-320,0})));

          IDEAS.Buildings.Components.Zone NightZone(
              nSurf=12,
              V=224.0,
              A=64.0,
              n50=8.0,
              fRH=45,
              allowFlowReversal=false,
              redeclare package Medium = Medium) "Thermal zone: NightZone"
              annotation (Placement(transformation(extent={{40,0},{60,20}})));

      equation
          connect(DayZone.propsBus[1], OuterWall_1_1.propsBus_a);
          connect(DayZone.propsBus[2], OuterWall_1_2.propsBus_a);
          connect(DayZone.propsBus[3], OuterWall_1_3.propsBus_a);
          connect(DayZone.propsBus[4], OuterWall_1_4.propsBus_a);
          connect(DayZone.propsBus[5], Window_1_1.propsBus_a);
          connect(DayZone.propsBus[6], Window_1_2.propsBus_a);
          connect(DayZone.propsBus[7], Window_1_3.propsBus_a);
          connect(DayZone.propsBus[8], Window_1_4.propsBus_a);
          connect(DayZone.propsBus[9], GroundFloor_1_1.propsBus_a);
          connect(DayZone.propsBus[10], InnerWall_1_1.propsBus_b);
          connect(DayZone.propsBus[11], InnerWall_1_1.propsBus_a);
          connect(DayZone.propsBus[12], Floor_1_1.propsBus_a);
          connect(DayZone.TSensor, TSensor[1]);
          connect(DayZone.port_a, port_a[1]);
          connect(DayZone.port_b, port_b[1]);
          connect(DayZone.gainCon, heatPortCon[1]);
          connect(DayZone.gainRad, heatPortRad[1]);

          connect(NightZone.propsBus[1], Floor_1_1.propsBus_b);
          connect(NightZone.propsBus[2], OuterWall_2_1.propsBus_a);
          connect(NightZone.propsBus[3], OuterWall_2_2.propsBus_a);
          connect(NightZone.propsBus[4], OuterWall_2_3.propsBus_a);
          connect(NightZone.propsBus[5], OuterWall_2_4.propsBus_a);
          connect(NightZone.propsBus[6], Window_2_1.propsBus_a);
          connect(NightZone.propsBus[7], Window_2_2.propsBus_a);
          connect(NightZone.propsBus[8], Window_2_3.propsBus_a);
          connect(NightZone.propsBus[9], Window_2_4.propsBus_a);
          connect(NightZone.propsBus[10], Rooftop_2_1.propsBus_a);
          connect(NightZone.propsBus[11], InnerWall_2_1.propsBus_b);
          connect(NightZone.propsBus[12], InnerWall_2_1.propsBus_a);
          connect(NightZone.TSensor, TSensor[2]);
          connect(NightZone.port_a, port_a[2]);
          connect(NightZone.port_b, port_b[2]);
          connect(NightZone.gainCon, heatPortCon[2]);
          connect(NightZone.gainRad, heatPortRad[2]);

      end SimpleDistrict_16_Structure;
    end Structure;

    package Occupant "Package of the particular building occupant"

      extends Modelica.Icons.Package;

      model ISO13790 "Occupant model, based on ISO13790
  (if 1-zone model: internal gains are defined
  as the average between living area and others,
  if 2-zone model: internal gains of night zone are defined as
  the weighted average between weekdays and weekends)"
        extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(
                                                      nZones=2, nLoads=1);

        parameter Modelica.SIunits.Area[nZones] AFloor = {
                  64.0,
                  64.0}
          "Floor area of different zones";

      protected
        final parameter Modelica.SIunits.Time interval=3600 "Time interval";
        final parameter Modelica.SIunits.Time period=86400/interval
          "Number of intervals per repetition";
        final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
          "Specific power for dayzone";
        final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
          "Specific power for nightzone";
        final parameter Real[3] TDay(unit="degC") = {16,21,18}
          "Temperature set-points for dayzone {day, evening, night}";
        final parameter Real[3] TNight(unit="degC") = {16,18,20}
          "Temperature set-points for nightzone {day, evening, night}";
        Integer t "Time interval";

      algorithm
        when sample(0, interval) then
          t := if pre(t) + 1 <= period then pre(t) + 1 else 1;
        end when;

      equation
        mDHW60C = 0;
        heatPortRad.Q_flow = heatPortCon.Q_flow;
        P = {heatPortCon[1].Q_flow + heatPortRad[1].Q_flow +
        heatPortCon[2].Q_flow + heatPortRad[2].Q_flow};
        Q = {0};

        if noEvent(t <= 7 or t >= 23) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[3]*0.5, -AFloor[2]*QNight[3]*0.5};
          TSet = {TDay[3]+273.15, TNight[3]+273.15};
        elseif noEvent(t > 7 and t <= 17) then
          heatPortCon.Q_flow = {-AFloor[1]*QDay[1]*0.5, -AFloor[2]*QNight[1]*0.5};
          TSet = {TDay[1]+273.15, TNight[1]+273.15};
        else
          heatPortCon.Q_flow = {-AFloor[1]*QDay[2]*0.5, -AFloor[2]*QNight[2]*0.5};
          TSet = {TDay[2]+273.15, TNight[2]+273.15};
        end if;

        annotation (Diagram(graphics));
      end ISO13790;
    end Occupant;

    package HeatingSystem "Package of the particular building heating system"

      extends Modelica.Icons.Package;

    end HeatingSystem;

    package VentilationSystem "Package of the particular building ventilation system"

      extends Modelica.Icons.Package;

    end VentilationSystem;

    model SimpleDistrict_16_Building
        extends IDEAS.Templates.Interfaces.Building(
            redeclare
          SimpleDistrict_2zoneBuilding.SimpleDistrict_16.Structure.SimpleDistrict_16_Structure
          building,
            redeclare IDEAS.Templates.Ventilation.None ventilationSystem,
            redeclare
          IDEAS.BoundaryConditions.Occupants.Standards.ISO13790 occupant,
            redeclare IBPSAdestest.Consumer.HeatingSystems.Substation_no_DHW heatingSystem(
                QNom = building.Q_design,
          Tsup_prim=Tsup_prim,
          Tret_prim=Tret_prim,
          Tsup_sec=Tsup_sec,
          Tret_sec=Tret_sec),
        redeclare IDEAS.Templates.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid);

        parameter Modelica.SIunits.Temperature Tsup_prim "Primary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tsup_sec "Secondary district heating supply temperature";
        parameter Modelica.SIunits.Temperature Tret_prim "Space heating nominal supply temperature";
        parameter Modelica.SIunits.Temperature Tret_sec "Space heating ominal return temperature";

    equation
      connect(heatingSystem.mDHW60C, occupant.mDHW60C)
        annotation (Line(points={{6,-10.2},{6,-30}}, color={0,0,127}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}})),
        experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"),
        __Dymola_experimentSetupOutput,
        __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_16_Building;

    model SimpleDistrict_16
        Modelica.SIunits.Temperature[SimpleDistrict_16_Building.building.nZones] TSensor = SimpleDistrict_16_Building.building.TSensor;
        Modelica.SIunits.Power QHeaSys = SimpleDistrict_16_Building.heatingSystem.QHeaSys;
        Modelica.SIunits.Area[SimpleDistrict_16_Building.building.nZones] AZones = SimpleDistrict_16_Building.building.AZones;
        Modelica.SIunits.Temperature Te = sim.Te;
        Modelica.SIunits.MassFlowRate mDHW60C = SimpleDistrict_16_Building.heatingSystem.mDHW60C;
        Modelica.SIunits.Temperature[SimpleDistrict_16_Building.building.nZones] TSet = SimpleDistrict_16_Building.heatingSystem.TSet;
        Modelica.SIunits.Power QHeating = -(sum(SimpleDistrict_16_Building.heatingSystem.heatPortCon.Q_flow) + sum(SimpleDistrict_16_Building.heatingSystem.heatPortRad.Q_flow));
        Modelica.SIunits.Power QDHW = QHeaSys - QHeating;
    protected
        inner IDEAS.BoundaryConditions.SimInfoManager sim
            annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        SimpleDistrict_2zoneBuilding.SimpleDistrict_16.SimpleDistrict_16_Building
        SimpleDistrict_16_Building
        annotation (Placement(transformation(extent={{0,0},{20,20}})));
     annotation (experiment(
          StartTime=-2.592e+006,
          StopTime=3.1536e+007,
          Interval=600,
          __Dymola_Algorithm="Dassl"), __Dymola_experimentFlags(
          Advanced(GenerateVariableDependencies=false, OutputModelicaCode=true),
          Evaluate=true,
          OutputCPUtime=true,
          OutputFlatModelica=true));
    end SimpleDistrict_16;
  end SimpleDistrict_16;
  annotation ();
end SimpleDistrict_2zoneBuilding;
