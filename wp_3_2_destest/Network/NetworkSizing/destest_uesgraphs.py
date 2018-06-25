# -*- coding: utf-8 -*-

import uesgraphs as ug
from shapely.geometry import Point
import pandas as pd


def main():
    """
    Defines a building node dictionary and adds it to the graph.
    Adds network nodes to the graph and creates a district heating network
    graph.
    Exported to a json
    """
    node_data = pd.read_csv(
        'https://raw.githubusercontent.com/ibpsa/project1/master/'
        'wp_3_2_destest/Network/NetworkSizing/Node%20data.csv', sep=',')

    node_data = node_data.set_index('Node')

    simple_district = ug.UESGraph()
    supply_heating_1 = simple_district.add_building(
        name="Destest_Supply", position=Point(44.0, -12.0),
        is_supply_heating=True)

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

    connection_dict_heating_nodes = {
        "a": ["b", "SimpleDistrict_2", "SimpleDistrict_3"],
        "b": ["c", "SimpleDistrict_5", "SimpleDistrict_6"],
        "c": ["d", "SimpleDistrict_10", "SimpleDistrict_11"],
        "e": ["f", "SimpleDistrict_1", "SimpleDistrict_4"],
        "f": ["g", "SimpleDistrict_8", "SimpleDistrict_7"],
        "g": ["h", "SimpleDistrict_9", "SimpleDistrict_12"],
        "d": ["Destest_Supply", "SimpleDistrict_16", "SimpleDistrict_15"],
        "h": ["Destest_Supply", "SimpleDistrict_14", "SimpleDistrict_13"]}

    for key, values in connection_dict_heating_nodes.items():
        for value in values:
            simple_district.add_edge(
                simple_district.nodes_by_name[key],
                simple_district.nodes_by_name[value])

    vis = ug.Visuals(simple_district)
    vis.show_network(
        save_as="uesgraph_destest.png",
        scaling_factor=12,
        labels="name",
        label_size=10
    )


# Main function
if __name__ == '__main__':
    main()
