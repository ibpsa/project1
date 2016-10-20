# -*- coding: utf-8 -*-
"""
This module contains the building results class to process simulation data

"""

import modelicares as mr
import os
import matplotlib.pyplot as plt

'''Set paths'''

relative_path = os.path.dirname(os.path.dirname(os.path.dirname(__file__)))
results_path_ref = os.path.join(relative_path, 'Results',
                               'Annex60_2_2_Ref')
results_path_retrofit = os.path.join(relative_path, 'Results',
                               'Annex60_2_2_Retrofit')

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

print('Mean temperatures of retrofitted   D2_North1 building, living room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'D2_North1_LivingRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', traffic area: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'D2_North1_TrafficArea.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', bed room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'D2_North1_BedRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', sanitary room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'D2_North1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneTwoElements.TAir'].mean())

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

print('Mean temperatures of retrofitted S2_North_R1 building, living room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'S2_North_R1_LivingRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ',  traffic area: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'S2_North_R1_TrafficArea.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', bed room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'S2_North_R1_BedRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', sanitary room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'S2_North_R1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneTwoElements.TAir'].mean())

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

print('Mean temperatures of retrofitted   T2_North1 building, living room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'T2_North1_LivingRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', traffic area: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'T2_North1_TrafficArea.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', bed room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'T2_North1_BedRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ',  sanitary room: ',
      simulations_retrofit[simulations_retrofit.fnames.index(
      'T2_North1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneTwoElements.TAir'].mean())
'''Plot living room temperature profiles'''

extracted_simulations = mr.SimResList([
      simulations_ref[simulations_ref.fnames.index(
      'D2_North1_LivingRoom.mat')],
      simulations_retrofit[simulations_retrofit.fnames.index(
      'D2_North1_LivingRoom.mat')]])

extracted_simulations.plot('thermalZoneTwoElements.TAir',
                           ylabel1="Temperature",
                           leg1_kwargs=dict(loc='upper right'),
                           title="Temperatures of living rooms")
plt.show()
