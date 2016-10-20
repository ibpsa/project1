# -*- coding: utf-8 -*-
"""
This module contains the building results class to process simulation data

"""

import modelicares as mr
import os
import matplotlib.pyplot as plt
import numpy as np

'''Set paths'''

relative_path = os.path.dirname(os.path.dirname(os.path.dirname(__file__)))
results_path_ref = os.path.join(relative_path, 'Results',
                               'Annex60_2_2_Ref')
results_path_retrofit = os.path.join(relative_path, 'Results',
                               'Annex60_2_2_ThreeEl')

'''Load results for buildings we would like to compare'''

simulations_ref = mr.SimResList(results_path_ref + '/D2_North1_*')
simulations_ref.append(results_path_ref + '/S2_North_R1_*')
simulations_ref.append(results_path_ref + '/T2_North1_*')

simulations_retrofit = mr.SimResList(results_path_retrofit + '/D2_North1_*')
simulations_retrofit.append(results_path_retrofit + '/S2_North_R1_*')
simulations_retrofit.append(results_path_retrofit + '/T2_North1_*')

'''Extract variables and mean values'''

print('Mean temperatures of reference     D2_North1 building, living room: ',
      simulations_ref[simulations_ref.fnames.index(
      'D2_North1_LivingRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', traffic area: ',
      simulations_ref[simulations_ref.fnames.index(
      'D2_North1_TrafficArea.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', bed room: ',
      simulations_ref[simulations_ref.fnames.index(
      'D2_North1_BedRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', sanitary room: ',
      simulations_ref[simulations_ref.fnames.index(
      'D2_North1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneTwoElements.TAir'].mean())

print('Mean temperatures of ThreeElemen D2_North1 building, living room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'D2_North1_LivingRoom.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', traffic area: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'D2_North1_TrafficArea.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', bed room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'D2_North1_BedRoom.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', sanitary room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'D2_North1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneThreeElements.TAir'].mean())

print('Mean temperatures of reference   S2_North_R1 building, living room: ',
      simulations_ref[simulations_ref.fnames.index(
      'S2_North_R1_LivingRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', traffic area: ',
      simulations_ref[simulations_ref.fnames.index(
      'S2_North_R1_TrafficArea.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', bed room: ',
      simulations_ref[simulations_ref.fnames.index(
      'S2_North_R1_BedRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', sanitary room: ',
      simulations_ref[simulations_ref.fnames.index(
      'S2_North_R1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneTwoElements.TAir'].mean())

print('Mean temperatures of ThreeElemen S2_North_R1 building, living room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'S2_North_R1_LivingRoom.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ',  traffic area: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'S2_North_R1_TrafficArea.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', bed room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'S2_North_R1_BedRoom.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', sanitary room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'S2_North_R1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneThreeElements.TAir'].mean())

print('Mean temperatures of reference     T2_North1 building, living room: ',
      simulations_ref[simulations_ref.fnames.index(
      'T2_North1_LivingRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', traffic area: ',
      simulations_ref[simulations_ref.fnames.index(
      'T2_North1_TrafficArea.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ',  bed room: ',
      simulations_ref[simulations_ref.fnames.index(
      'T2_North1_BedRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', sanitary room: ',
      simulations_ref[simulations_ref.fnames.index(
      'T2_North1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneTwoElements.TAir'].mean())

print('Mean temperatures of ThreeElemen   T2_North1 building, living room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'T2_North1_LivingRoom.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', traffic area: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'T2_North1_TrafficArea.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', bed room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'T2_North1_BedRoom.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ',  sanitary room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'T2_North1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneThreeElements.TAir'].mean())
'''Plot living room temperature profiles'''

extracted_simulations = mr.SimResList([
      simulations_ref[simulations_ref.fnames.index(
      'D2_North1_LivingRoom.mat')],
      simulations_retrofit[simulations_retrofit.fnames.index(
      'D2_North1_LivingRoom.mat')]])

two_elements = extracted_simulations[0]['thermalZoneTwoElements.TAir'].values()
three_elements = extracted_simulations[1][
    'thermalZoneThreeElements.TAir'].values()


print(len(two_elements))
t = np.arange(2550, 2800)
plt.plot(t, two_elements[2550:2800], t, three_elements[2550:2800])

plt.show()

# plt.show()
# print(extracted_sims)

# for simulation in simulations:
#     if simulation.fname in

# '''Load results for both buildings we would like to compare'''
#
# D1_North1_str = results_path + '/D1_North1_*'
# D1_North1 = mr.SimResList(D1_North1_str)
#
# D2_North1_str = results_path + '/D2_North1_*'
# D2_North1 = mr.SimResList(D2_North1_str)
#
# '''Extract variables and mean values'''
#
# mean_temp_D1_North1 = D1_North1['thermalZoneTwoElements.TAir'].mean()
# max_temp_D1_North1 = D1_North1['thermalZoneTwoElements.TAir'].max()
# rms_temp_D1_North1 = D1_North1['thermalZoneTwoElements.TAir'].RMS()
#
# mean_temp_D2_North1 = D2_North1['thermalZoneTwoElements.TAir'].mean()
# max_temp_D2_North1 = D2_North1['thermalZoneTwoElements.TAir'].max()
# rms_temp_D2_North1 = D2_North1['thermalZoneTwoElements.TAir'].RMS()
#
# print('Mean temperatures of well insulated building, living room: ',
#       mean_temp_D1_North1[0], ', bed room: ', mean_temp_D1_North1[1], ', '
#       'sanitary rooms: ', mean_temp_D1_North1[2])
# print('Mean temperatures of bad insulated building,  living room: ',
#       mean_temp_D2_North1[0], ', bed room: ', mean_temp_D2_North1[1], ', '
#       'sanitary rooms: ', mean_temp_D2_North1[2])
# # print('Max temperatures of well insulated building: ', max_temp_D1_North1)
# # print('Max temperatures of bad insulated building: ', max_temp_D2_North1)
# # print('Root mean square value for temperatures of well insulated building: ',
# #       rms_temp_D1_North1)
# # print('Root mean square value for temperatures of bad insulated building: ',
# #       rms_temp_D2_North1)
#
# # print(D1_North1['thermalZoneTwoElements.TAir'])
#
# if D1_North1[0] in D1_North1:
#     print('Yes!')
# # print(D1_North1[0].fname())
#
# print(D1_North1[0])
#
# living_rooms = mr.SimResList([D1_North1[0], D2_North1[0]])

#print(living_rooms)

# sims.plot('L.i', ylabel1="Voltage", leg1_kwargs=dict(loc='upper right'),
#           title="Chua circuit\nwith varying inductance")

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


# simulations = []
#
# '''Find all simulation results files in results_path'''
#
# search_str = results_path + '/*.mat'
# simulation_paths = glob.glob(search_str)
#
# for simulation_path in simulation_paths:
#     simulations.append(SimRes(simulation_path))