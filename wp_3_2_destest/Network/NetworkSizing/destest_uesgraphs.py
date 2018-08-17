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

    # Read node and pipe data
    node_data = pd.read_csv(
        'https://raw.githubusercontent.com/ibpsa/project1/master/'
        'wp_3_2_destest/Network/NetworkSizing/Node%20data.csv', sep=',')

    pipe_data = pd.read_csv(
        'https://raw.githubusercontent.com/ibpsa/project1/master/'
        'wp_3_2_destest/Network/NetworkSizing/Pipe%20data.csv', sep=',')

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

    # Help dictionary for drawing the connections / edges
    connection_dict_heating_nodes = {
        "a": ["b", "SimpleDistrict_2", "SimpleDistrict_3"],
        "b": ["c", "SimpleDistrict_5", "SimpleDistrict_6"],
        "c": ["d", "SimpleDistrict_10", "SimpleDistrict_11"],
        "e": ["f", "SimpleDistrict_1", "SimpleDistrict_4"],
        "f": ["g", "SimpleDistrict_8", "SimpleDistrict_7"],
        "g": ["h", "SimpleDistrict_9", "SimpleDistrict_12"],
        "d": ["Destest_Supply", "SimpleDistrict_16", "SimpleDistrict_15"],
        "h": ["Destest_Supply", "SimpleDistrict_14", "SimpleDistrict_13"]}

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

    # Plotting / Visualization with pipe diameters scaling
    vis = ug.Visuals(simple_district)
    vis.show_network(
        save_as="uesgraph_destest.png",
        show_diameters=True,
        scaling_factor=25,
        labels="name",
        label_size=10,
        scaling_factor_diameter=100
    )


# Main function
if __name__ == '__main__':
    main()
