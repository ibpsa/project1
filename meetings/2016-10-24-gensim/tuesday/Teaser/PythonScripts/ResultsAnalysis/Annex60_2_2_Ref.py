# -*- coding: utf-8 -*-
"""
This module contains the building results class to process simulation data

"""

import pandas as pd
from modelicares import SimRes
import os
import glob
import numpy as np

'''Set pathes'''

relative_path = os.path.dirname(os.path.dirname(os.path.dirname(__file__)))
results_path = os.path.join(relative_path, 'Results', 'Annex60_2_2_Ref')

'''Load results'''

# simulations = []
#
# '''Find all simulation results files in results_path'''
#
# search_str = results_path + '/*.mat'
# simulation_paths = glob.glob(search_str)
#
# for simulation_path in simulation_paths:
#     simulations.append(SimRes(simulation_path))
#
# '''Find both buildings we would like to compare'''
#
# D1_North_1 = []
# D2_North_1 = []
#
# for simulation in simulations:
#     if 'D1_North1' in simulation.fbase:
#         D1_North_1.append(simulation)
#     elif 'D2_North1' in simulation.fbase:
#         D2_North_1.append(simulation)
#
# '''Identify indoor air temperature'''
#
# T_Air_string = '*.TAir'
#
# T_Air_variables_D1_North1 = []
# for simulation in D1_North_1:
#     T_Air_variables_D1_North1.append(simulation.names(T_Air_string))
#
# T_Air_variables_D2_North1 = []
# for simulation in D2_North_1:
#     T_Air_variables_D2_North1.append(simulation.names(T_Air_string))
#
#
# print(T_Air_variables_D1_North_1)
# print(T_Air_variables_D2_North_1)
# print(len(simulations))