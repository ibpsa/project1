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
results_path_three_el = os.path.join(relative_path, 'Results',
                               'Annex60_2_2_ThreeEl')
results_path_four_el = os.path.join(relative_path, 'Results',
                               'Annex60_2_2_FourEl')

'''Load results for buildings we would like to compare'''

simulations_ref = mr.SimResList(results_path_ref + '/D2_North1_*')
simulations_ref.append(results_path_ref + '/S2_North_R1_*')
simulations_ref.append(results_path_ref + '/T2_North1_*')

simulations_three_el = mr.SimResList(results_path_three_el + '/D2_North1_*')
simulations_three_el.append(results_path_three_el + '/S2_North_R1_*')
simulations_three_el.append(results_path_three_el + '/T2_North1_*')

simulations_four_el = mr.SimResList(results_path_four_el + '/D2_North1_*')
simulations_four_el.append(results_path_four_el + '/S2_North_R1_*')
simulations_four_el.append(results_path_four_el + '/T2_North1_*')

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

print('Mean temperatures of ThreeElements D2_North1 building, living room: ',
      simulations_three_el[simulations_three_el.fnames.index(
      'D2_North1_LivingRoom.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', traffic area: ',
      simulations_three_el[simulations_three_el.fnames.index(
      'D2_North1_TrafficArea.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', bed room: ',
      simulations_three_el[simulations_three_el.fnames.index(
      'D2_North1_BedRoom.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', sanitary room: ',
      simulations_three_el[simulations_three_el.fnames.index(
      'D2_North1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneThreeElements.TAir'].mean())

print('Mean temperatures of FourElements  D2_North1 building, living room: ',
      simulations_four_el[simulations_four_el.fnames.index(
      'D2_North1_LivingRoom.mat')][
      'thermalZoneFourElements.TAir'].mean(), ',  traffic area: ',
      simulations_four_el[simulations_four_el.fnames.index(
      'D2_North1_TrafficArea.mat')][
      'thermalZoneFourElements.TAir'].mean(), ', bed room: ',
      simulations_four_el[simulations_four_el.fnames.index(
      'D2_North1_BedRoom.mat')][
      'thermalZoneFourElements.TAir'].mean(), ', sanitary room: ',
      simulations_four_el[simulations_four_el.fnames.index(
      'D2_North1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneFourElements.TAir'].mean())

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
      simulations_three_el[simulations_three_el.fnames.index(
      'S2_North_R1_LivingRoom.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', traffic area: ',
      simulations_three_el[simulations_three_el.fnames.index(
      'S2_North_R1_TrafficArea.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', bed room: ',
      simulations_three_el[simulations_three_el.fnames.index(
      'S2_North_R1_BedRoom.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', sanitary room: ',
      simulations_three_el[simulations_three_el.fnames.index(
      'S2_North_R1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneThreeElements.TAir'].mean())

print('Mean temperatures of FourElement S2_North_R1 building, living room: ',
      simulations_four_el[simulations_four_el.fnames.index(
      'S2_North_R1_LivingRoom.mat')][
      'thermalZoneFourElements.TAir'].mean(), ', traffic area: ',
      simulations_four_el[simulations_four_el.fnames.index(
      'S2_North_R1_TrafficArea.mat')][
      'thermalZoneFourElements.TAir'].mean(), ', bed room: ',
      simulations_four_el[simulations_four_el.fnames.index(
      'S2_North_R1_BedRoom.mat')][
      'thermalZoneFourElements.TAir'].mean(), ', sanitary room: ',
      simulations_four_el[simulations_four_el.fnames.index(
      'S2_North_R1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneFourElements.TAir'].mean())

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
      simulations_three_el[simulations_three_el.fnames.index(
      'T2_North1_LivingRoom.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', traffic area: ',
      simulations_three_el[simulations_three_el.fnames.index(
      'T2_North1_TrafficArea.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', bed room: ',
      simulations_three_el[simulations_three_el.fnames.index(
      'T2_North1_BedRoom.mat')][
      'thermalZoneThreeElements.TAir'].mean(), ', sanitary room: ',
      simulations_three_el[simulations_three_el.fnames.index(
      'T2_North1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneThreeElements.TAir'].mean())

print('Mean temperatures of FourElement   T2_North1 building, living room: ',
      simulations_four_el[simulations_four_el.fnames.index(
      'T2_North1_LivingRoom.mat')][
      'thermalZoneFourElements.TAir'].mean(), ', traffic area: ',
      simulations_four_el[simulations_four_el.fnames.index(
      'T2_North1_TrafficArea.mat')][
      'thermalZoneFourElements.TAir'].mean(), ', bed room: ',
      simulations_four_el[simulations_four_el.fnames.index(
      'T2_North1_BedRoom.mat')][
      'thermalZoneFourElements.TAir'].mean(), ', sanitary room: ',
      simulations_four_el[simulations_four_el.fnames.index(
      'T2_North1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneFourElements.TAir'].mean())

'''Plot living room temperature profiles'''

extracted_simulations = mr.SimResList([
      simulations_ref[simulations_ref.fnames.index(
      'D2_North1_LivingRoom.mat')],
      simulations_three_el[simulations_three_el.fnames.index(
      'D2_North1_LivingRoom.mat')],
      simulations_four_el[simulations_four_el.fnames.index(
      'D2_North1_LivingRoom.mat')]])

two_elements = extracted_simulations[0]['thermalZoneTwoElements.TAir'].values()
three_elements = extracted_simulations[1][
    'thermalZoneThreeElements.TAir'].values()
four_elements = extracted_simulations[2][
    'thermalZoneFourElements.TAir'].values()

t = np.arange(2550, 2800)
plt.plot(t, two_elements[2550:2800], t, three_elements[2550:2800], t,
         four_elements[2550:2800])
plt.legend(['TwoElements', 'ThreeElements', 'FourElements'])
plt.ylabel('Temperature / K')
plt.xlabel('Time / s')
plt.title('Temperatures of living rooms')

plt.show()
