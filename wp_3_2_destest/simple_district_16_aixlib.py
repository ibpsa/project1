# -*- coding: utf-8 -*-
# @Author: MichaMans
# @Date:   2018-09-20 11:05:56
# @Last Modified by:   MichaMans
# @Last Modified time: 2018-10-29 09:27:01

"""This module contains an example how to generate archetype buildings using
TEASER API functions. THis script currently only works with TEASER branch
issue539_setpoints
"""
import os
from teaser.project import Project
from dymola.dymola_interface import DymolaInterface
import pandas as pd


def example_generate_simple_district_building():
    """"This function demonstrates the generation of residential and
    non-residential archetype buildings using the API function of TEASER"""

    """First step: Import the TEASER API (called Project) into your Python module
    To use the API instantiate the Project class and rename the Project. The
    parameter load_data=True indicates that we load `iwu` typology archetype
    data into our Project (e.g. for Material properties and typical wall
    constructions. This can take a few seconds, depending on the size of the
    used data base). Be careful: Dymola does not like whitespaces in names and
    filenames, thus we will delete them anyway in TEASER."""

    prj = Project(load_data=True)
    prj.name = "Simple_District_Destest_AixLib"

    # There are two different types of archetype groups: residential and
    # non-residential buildings. Two API functions offer the opportunity to
    # generate specific archetypes.

    """To generate residential archetype buildings the function
    Project.add_residential() is used. Seven parameters are compulsory,
    additional parameters can be set according to the used method. `method`
    and `usage` are used to distinguish between different archetype
    methods. The name, year_of_construction, number and height of floors
    and net_leased_area need to be set to provide enough information for
    archetype generation. For specific information on the parameters please
    read the docs."""

    bldg = prj.add_residential(
        method='tabula_de',
        usage='single_family_house',
        name="SimpleDistrictBuilding",
        year_of_construction=1980,
        number_of_floors=2,
        height_of_floors=3.5,
        net_leased_area=128,
        construction_type='tabula_standard')

    bldg.zone_area_factors = {
        "SingleDwelling": [0.5, "Living"],
        "BedRoom": [0.5, "Bed room"]}

    bldg.generate_archetype()

    return prj


def results_to_csv(res_path):
    """
    This function loads the mat file and save it to csv.

    It loads the dymola result mat file and saves the indoor air temp of
    the two modelled zones and the total heating power in W.
    """
    res_all = pd.DataFrame()

    signals = [
        'Time',
        'multizone.PHeater[1]',
        'multizone.PHeater[2]',
        'multizone.TAir[1]',
        'multizone.TAir[2]']

    dymola = DymolaInterface()
    print('Reading signals: ', signals)

    dym_res = dymola.readTrajectory(
        fileName=res_path,
        signals=signals,
        rows=dymola.readTrajectorySize(fileName=res_path)
    )
    results = pd.DataFrame().from_records(dym_res).T
    results = results.rename(
        columns=dict(zip(results.columns.values, signals)))
    results.index = results['Time']

    results["AixLib_Heating_Power_W"] = results["multizone.PHeater[1]"] +\
        results["multizone.PHeater[1]"]

    # drop Time and single zones columns
    results = results.drop(
        ['Time', 'multizone.PHeater[1]', 'multizone.PHeater[2]'],
        axis=1)

    results = results.rename(
        index=str,
        columns={
            "multizone.TAir[1]": "AixLib_T_dayzone",
            "multizone.TAir[2]": "AixLib_T_nightzone"})

    # results = results.drop(index_to_drop)
    # results = results.groupby(level=0).first()
    # results.to_csv(path=res_path, delimiter=';')
    dymola.close()

    res_csv = os.path.join(
        os.path.dirname(
            os.path.abspath(__file__)),
        "AixLib_SingleBuilding.csv")

    results.to_csv(res_csv)

    return results


if __name__ == '__main__':
    prj = example_generate_simple_district_building()

    prj.used_library_calc = 'AixLib'
    prj.number_of_elements_calc = 2
    prj.weather_file_path = os.path.join(
        os.path.dirname(
            os.path.abspath(__file__)),
        "BEL_Brussels.064510_IWEC.mos")

    # To make sure the parameters are calculated correctly we recommend to
    # run calc_all_buildings() function

    prj.calc_all_buildings()

    # To export the ready-to-run models simply call Project.export_aixlib().
    # You can specify the path, where the model files should be saved.
    # None means, that the default path in your home directory
    # will be used. If you only want to export one specific building, you can
    # pass over the internal_id of that building and only this model will be
    # exported. In this case we want to export all buildings to our home
    # directory, thus we are passing over None for both parameters.

# final parameter Real[3] QDay(unit="W/m2") = {8,20,2}
#     "Specific power for dayzone {day, evening, night}";
#   final parameter Real[3] QNight(unit="W/m2") = {1.286,1.857,6}
#     "Specific power for nightzone {day, evening, night}";
#   final parameter Real[3] TDay(unit="degC") = {16,21,18}
#     "Temperature set-points for dayzone {day, evening, night}";
#   final parameter Real[3] TNight(unit="degC") = {16,18,20}
#     "Temperature set-points for nightzone {day, evening, night}";
#         With the first value daily between 7am and 5 pm, the second value
#         between 5 pm and 11 pm and the third value during night.

    profile_living = [291.15, 291.15, 291.15, 291.15, 291.15, 291.15, 291.15,
                      289.15, 289.15, 289.15, 289.15, 289.15, 289.15, 289.15,
                      289.15, 289.15, 289.15, 294.15, 294.15, 294.15, 294.15,
                      294.15, 294.15, 294.15, 291.15]
    profile_bed_room = [293.15, 293.15, 293.15, 293.15, 293.15, 293.15,
                        293.15, 289.15, 289.15, 289.15, 289.15, 289.15,
                        289.15, 289.15, 289.15, 289.15, 289.15, 291.15,
                        291.15, 291.15, 291.15, 291.15, 291.15, 291.15, 293.15]

    prj.buildings[0].thermal_zones[0].use_conditions.profile_heating_temp =\
        profile_living

    prj.buildings[0].thermal_zones[1].use_conditions.profile_heating_temp =\
        profile_bed_room

    prj.buildings[0].library_attr.use_set_point_temperature_profile_heating =\
        True

    # need to calculate the number of persons for day and night zone.
    # one persons = 100W/m², area = 64 m²
    # total max power of ina QDay_max = 20 "/m² * 64 m²= 1280 W
    # number of max persons for dayzone 12.8
    # total max power of in QNight_zone = 6 W/m² * 64 m² = 384 W
    # number of max persons for nightzone 3.84

    prj.buildings[0].thermal_zones[0].use_conditions.persons = 12.8
    prj.buildings[0].thermal_zones[0].use_conditions.machines = 0
    prj.buildings[0].thermal_zones[0].use_conditions.lighting_power = 0
    prj.buildings[0].thermal_zones[0].infiltration_rate = 0.4
    prj.buildings[0].thermal_zones[1].use_conditions.persons = 3.84
    prj.buildings[0].thermal_zones[1].use_conditions.machines = 0
    prj.buildings[0].thermal_zones[1].use_conditions.lighting_power = 0
    prj.buildings[0].thermal_zones[1].infiltration_rate = 0.4

    # profiles for day and night zone representing the share of total number
    # of persons

    prj.buildings[0].thermal_zones[0].use_conditions.profile_persons = [
        0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4,
        0.4, 0.4, 0.4, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]
    prj.buildings[0].thermal_zones[0].use_conditions.activity_type_persons = 2

    prj.buildings[0].thermal_zones[0].use_conditions.profile_persons = [
        1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.21, 0.21, 0.21, 0.21, 0.21,
        0.21, 0.21, 0.21, 0.21, 0.21, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3]
    prj.buildings[0].thermal_zones[1].use_conditions.activity_type_persons = 2

    prj.export_aixlib(
        internal_id=None,
        path=None)

    print("Example 1: That's it! :)")

    res_path = "D:\\dymola\\SimpleDistrictBuilding.mat"

    # results_to_csv(res_path)

