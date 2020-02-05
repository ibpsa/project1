# -*- coding: utf-8 -*-

import datetime
import uesgraphs as ug
from shapely.geometry import Point
import pandas as pd
import os

# from uesmodels.uesmodel import UESModel
# import uesmodels as um

from uesgraphs.uesmodels.utilities import utilities as utils
from uesgraphs.systemmodels import utilities as sysmod_utils


def main():
    """
    Defines a building node dictionary and adds it to the graph.
    Adds network nodes to the graph and creates a district heating network
    graph.
    Exported to a json
    """

    # Read node and pipe data
    # node_data = pd.read_csv(
    #     'https://raw.githubusercontent.com/ibpsa/project1/WP3/'
    #     'wp_3_2_destest/Network/NetworkSizing/Node%20data.csv', sep=',')

    # pipe_data = pd.read_csv(
    #     'https://raw.githubusercontent.com/ibpsa/project1/WP3/'
    #     'wp_3_2_destest/Network/NetworkSizing/Pipe%20data.csv', sep=',')

    # 8 Buildings
    node_data = pd.read_csv('Node_data_8_buildings.csv', sep=',')
    pipe_data = pd.read_csv('Pipe_data_8_buildings.csv', sep=',')

    # 16 Buildings
    # node_data = pd.read_csv(
    #     'https://raw.githubusercontent.com/ibpsa/project1/WP3/'
    #     'wp_3_2_destest/Network/NetworkSizing/Node%20data.csv', sep=',')
    # pipe_data = pd.read_csv(
    #     'https://raw.githubusercontent.com/ibpsa/project1/WP3/'
    #     'wp_3_2_destest/Network/NetworkSizing/Pipe%20data.csv', sep=',')

    # 32 Buildings
    # node_data = pd.read_csv('Node_data_32_buildings.csv', sep=',')
    # pipe_data = pd.read_csv('Pipe_data_32_buildings.csv', sep=',')

    node_data = node_data.set_index('Node')

    # renaming for usability
    pipe_data = pipe_data.replace(to_replace='i', value='Destest_Supply')

    simple_district = ug.UESGraph()

    # Add supply exemplary as a single addition
    supply_heating_1 = simple_district.add_building(
        name="Destest_Supply", position=Point(44.0, -12.0),
        is_supply_heating=True)

    # Add building and network nodes
    for node_name, values in node_data.iterrows():
        if node_name.startswith("Simple"):
            simple_district.add_building(
                name=node_name,
                position=Point(
                    values['X-Position [m]'], values['Y-Position [m]']),
                is_supply_heating=False)
        else:
            simple_district.add_network_node(
                'heating',
                name=node_name,
                position=Point(
                    values['X-Position [m]'], values['Y-Position [m]']),
                is_supply_heating=False)

    # Help dictionary for drawing the connections / edges 8 buildings
    connection_dict_heating_nodes = {
        "c": ["d", "SimpleDistrict_10", "SimpleDistrict_11"],
        "g": ["h", "SimpleDistrict_9", "SimpleDistrict_12"],
        "d": ["Destest_Supply", "SimpleDistrict_16", "SimpleDistrict_15"],
        "h": ["Destest_Supply", "SimpleDistrict_14", "SimpleDistrict_13"],
    }

    # Help dictionary for drawing the connections / edges 16 buildings
    # connection_dict_heating_nodes = {
    #     "a": ["b", "SimpleDistrict_2", "SimpleDistrict_3"],
    #     "b": ["c", "SimpleDistrict_5", "SimpleDistrict_6"],
    #     "c": ["d", "SimpleDistrict_10", "SimpleDistrict_11"],
    #     "g": ["h", "SimpleDistrict_9", "SimpleDistrict_12"],
    #     "d": ["Destest_Supply", "SimpleDistrict_16", "SimpleDistrict_15"],
    #     "e": ["f", "SimpleDistrict_1", "SimpleDistrict_4"],
    #     "f": ["g", "SimpleDistrict_8", "SimpleDistrict_7"],
    #     "h": ["Destest_Supply", "SimpleDistrict_14", "SimpleDistrict_13"],
    # }

    # Help dictionary for drawing the connections / edges 32 buildings
    # connection_dict_heating_nodes = {
    #     "a": ["b", "SimpleDistrict_2", "SimpleDistrict_3"],
    #     "b": ["c", "SimpleDistrict_5", "SimpleDistrict_6"],
    #     "c": ["d", "SimpleDistrict_10", "SimpleDistrict_11"],
    #     "g": ["h", "SimpleDistrict_9", "SimpleDistrict_12"],
    #     "d": ["Destest_Supply", "SimpleDistrict_16", "SimpleDistrict_15"],
    #     "e": ["f", "SimpleDistrict_1", "SimpleDistrict_4"],
    #     "f": ["g", "SimpleDistrict_8", "SimpleDistrict_7"],
    #     "h": ["Destest_Supply", "SimpleDistrict_14", "SimpleDistrict_13"],
    #     "j": ["k", "SimpleDistrict_18", "SimpleDistrict_19"],
    #     "k": ["l", "SimpleDistrict_21", "SimpleDistrict_22"],
    #     "l": ["m", "SimpleDistrict_26", "SimpleDistrict_27"],
    #     "m": ["a", "SimpleDistrict_31", "SimpleDistrict_32"],
    #     "n": ["o", "SimpleDistrict_17", "SimpleDistrict_20"],
    #     "o": ["p", "SimpleDistrict_24", "SimpleDistrict_23"],
    #     "p": ["q", "SimpleDistrict_25", "SimpleDistrict_28"],
    #     "q": ["e", "SimpleDistrict_30", "SimpleDistrict_29"],
    # }

    # Adding the edges
    for key, values in connection_dict_heating_nodes.items():
        for value in values:
            simple_district.add_edge(
                simple_district.nodes_by_name[key],
                simple_district.nodes_by_name[value])

    # Add Diameter and Length information
    for index, row in pipe_data.iterrows():
        simple_district.edges[
            simple_district.nodes_by_name[row['Beginning Node']],
            simple_district.nodes_by_name[row['Ending Node']]][
                'diameter'] = row['Inner Diameter [m]']
        simple_district.edges[
            simple_district.nodes_by_name[row['Beginning Node']],
            simple_district.nodes_by_name[row['Ending Node']]][
                'length'] = row['Length [m]']
        simple_district.edges[
            simple_district.nodes_by_name[row['Beginning Node']],
            simple_district.nodes_by_name[row['Ending Node']]][
                'dIns'] = row['Insulation Thickness [m]']
        simple_district.edges[
            simple_district.nodes_by_name[row['Beginning Node']],
            simple_district.nodes_by_name[row['Ending Node']]][
                'kIns'] = row['U-value [W/mK]']

    # Plotting / Visualization with pipe diameters scaling
    vis = ug.Visuals(simple_district)
    vis.show_network(
        save_as="uesgraph_destest_8.png",
        show_diameters=True,
        scaling_factor=15,
        labels="name",
        label_size=10,
        scaling_factor_diameter=100
    )

    # write demand data to graph

    demand_data = pd.read_csv(
        'https://raw.githubusercontent.com/ibpsa/project1/WP3/'
        'wp_3_2_destest/Results/SimpleDistrict/SimpleDistrict_district.csv',
        sep=';',
        index_col=0)

    # x = range(0, 31536000, 900)
    # index_to_drop = []
    # j = 1
    # print('starting to iterate over df')
    # for i, row in enumerate(demand_data.iterrows()):
    #     if demand_data.index[i] not in x:
    #         index_to_drop.append(demand_data.index[i])
    # demand_data = demand_data.drop(index_to_drop)

    demand_data.columns = demand_data.columns.str.replace(' / W', '')

    # currently every building gets the same load, therefore we shorten this to
    # load one heatload (SimpleDistrict_1) and assign it to all buildings
    # old code is commented

    # for bldg in simple_district.nodelist_building:
    #     if not simple_district.nodes[bldg]['is_supply_heating']:
    #         demand = demand_data[
    #             simple_district.nodes[bldg]['name']].values.tolist()
    #         demand = demand_data[
    #             simple_district.nodes[bldg]['name']].values
    #         demand = [round(x, 1) for x in demand]
    #         # demand = [x if x else 83.6 for x in demand]
    #         simple_district.nodes[bldg]['input_heat'] = demand
    #         simple_district.nodes[bldg]['max_demand_heating'] = max(demand)
    #     else:
    #         simple_district.nodes[bldg]['T_supply'] = [273.15 + 50]
    #         simple_district.nodes[bldg]['p_supply'] = [3.4e5]

    demand = demand_data["SimpleDistrict_1"].values
    demand = [round(x, 1) for x in demand]

    for bldg in simple_district.nodelist_building:
        if not simple_district.nodes[bldg]['is_supply_heating']:
            simple_district.nodes[bldg]['input_heat'] = demand
            simple_district.nodes[bldg]['max_demand_heating'] = max(demand)
        else:
            simple_district.nodes[bldg]['T_supply'] = [273.15 + 50]
            simple_district.nodes[bldg]['p_supply'] = [3.4e5]

    # write general simulation data to graph
    # values needs to be revised for common excersise

    end_time = 365 * 24 * 3600
    time_step = 600
    n_steps = end_time / time_step

    simple_district.graph['network_type'] = 'heating'
    simple_district.graph['T_nominal'] = 273.15 + 50
    simple_district.graph['p_nominal'] = 3e5
    simple_district.graph['T_ground'] = [285.15] * int(n_steps)

    for node in simple_district.nodelist_building:
        simple_district.nodes[node]['dT_design'] = 20

    for edge in simple_district.edges():
        simple_district.edges[edge[0], edge[1]]['name'] = \
            str(edge[0]) + 'to' + str(edge[1])
        simple_district.edges[edge[0], edge[1]]['m_flow_nominal'] = 1
        simple_district.edges[edge[0], edge[1]]['fac'] = 1.0
        simple_district.edges[edge[0], edge[1]]['roughness'] = 2.5e-5   # Ref

    print("####")

    # simple_district = utils.size_hydronic_network(
    #     graph=simple_district,
    #     network_type="heating",
    #     delta_t_heating=5,
    #     dp_set=100.0,
    #     loop=False)

    # for edge in simple_district.edges:
    #     print(simple_district.edges[edge[0], edge[1]]["diameter"])

    # special m_flow estimation
    simple_district = sysmod_utils.estimate_m_flow_nominal_tablebased(
        simple_district,
        network_type='heating')

    # peak power m_flow estimation
    simple_district = sysmod_utils.estimate_m_flow_nominal(
        simple_district,
        dT_design=20,
        network_type='heating')

    dir_model = os.path.join(os.path.dirname(__file__), 'model')
    if not os.path.exists(dir_model):
        os.mkdir(dir_model)

    for edge in simple_district.edges:
        print(simple_district.edges[edge[0], edge[1]]["diameter"])

    for edge in simple_district.edges:
        simple_district.edges[edge[0], edge[1]]["diameter"] = 0

    # for bldg_node in simple_district.nodelist_building:
    #     if not simple_district.nodes[bldg_node]["is_supply_heating"]:
    #         simple_district.nodes[bldg_node]["max_demand_heating"] = max(
    #             simple_district.nodes[bldg_node]["input_heat"])

    print("####")

    simple_district = utils.size_hydronic_network(
        graph=simple_district,
        network_type="heating",
        delta_t_heating=20,
        dp_set=100.0,
        loop=False)

    # Plotting / Visualization with pipe diameters scaling
    vis = ug.Visuals(simple_district)
    vis.show_network(
        save_as="uesgraph_destest_8_selfsized.png",
        show_diameters=True,
        scaling_factor=15,
        labels="name",
        label_size=10,
        scaling_factor_diameter=100
    )

    for edge in simple_district.edges:
        print(simple_district.edges[edge[0], edge[1]]["diameter"])

    new_model = UESModel(network_type=simple_district.graph['network_type'])
    new_model.stop_time = end_time
    new_model.timestep = time_step
    new_model.tolerance = 1e-5
    new_model.T_nominal = 273.15 + 35
    new_model.p_nominal = 3e5
    new_model.import_from_uesgraph(simple_district)
    new_model.set_connection(remove_network_nodes=True)
    new_model.add_ground_around_pipe = False
    new_model.ground_buried_cylindric = False
    new_model.ground_model = 't_ground_table'
    new_model.with_heat_flow_output = True
    new_model.with_heat_loss_output = True

    new_model.set_control_pressure(
        name_building='max_distance',
        # name_building='T1010_W',
        dp=1.2e5,
        name_supply='Destest_Supply',
        p_max=13e5
    )

    package = 'AixLib.Fluid.DistrictHeatingCooling.'
    model_supply_ideal = package + 'Supplies.OpenLoop.SourceIdeal'
    model_supply_power = package + 'Supplies.OpenLoop.SourcePowerDoubleMvar'
    model_demand = package +\
        'Demands.OpenLoop.VarTSupplyDpFixedTempDifferenceBypass'
    model_pipe = 'AixLib.Fluid.FixedResistances.PlugFlowPipe'

    new_model.add_return_network = True
    new_model.medium = 'AixLib.Media.Specialized.Water.ConstantProperties_pT'
    new_model.t_nominal = 273.15 + 35
    new_model.p_nominal = 3e5

    for node in new_model.nodelist_building:
        is_supply = 'is_supply_{}'.format(new_model.network_type)
        if new_model.nodes[node][is_supply]:
            new_model.nodes[node]['comp_model'] = model_supply_ideal
            new_model.nodes[node]['p_return'] = 3e5
            new_model.nodes[node]['T_return'] = 273.15 + 30
        else:
            new_model.nodes[node]['comp_model'] = model_demand
            input_heat = new_model.nodes[node]['input_heat']
            if new_model.network_type == 'heating':
                new_model.nodes[node]['Q_flow_nominal'] = max(input_heat)
                new_model.nodes[node]['m_flow_bypass'] = 0.0007

    for node in new_model.nodelist_pipe:
        new_model.nodes[node]['comp_model'] = model_pipe

    simulation_setup = {'data': {'start_time': 0,
                                 'stop_time': new_model.stop_time,
                                 'output_interval': new_model.timestep},
                        }

    print('dir_model', dir_model)
    time_stamp = int(round(datetime.datetime.now().timestamp(), 0))
    time_stamp = datetime.datetime.now().strftime("%Y%m%d%H%M%S")
    # Write Modelica code
    new_model.model_name = 'Sim' + str(time_stamp) + "Destest" +\
        '_open_loop_dT_var'
    new_model.write_modelica_package(save_at=dir_model)


# Main function
if __name__ == '__main__':
    main()
