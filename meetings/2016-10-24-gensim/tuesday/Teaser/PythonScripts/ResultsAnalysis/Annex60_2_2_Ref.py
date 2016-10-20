# -*- coding: utf-8 -*-
"""
This module contains the building results class to process simulation data

"""

import modelicares as mr
import os
import matplotlib.pyplot as plt

'''Set paths'''

relative_path = os.path.dirname(os.path.dirname(os.path.dirname(__file__)))
results_path = os.path.join(relative_path, 'Results', 'Annex60_2_2_Ref')

'''Load results for both buildings we would like to compare'''

simulations = mr.SimResList(results_path + '/D*_North1_*')

'''Extract variables and mean values'''

print('Mean temperatures of well insulated building, living room: ',
      simulations[simulations.fnames.index(
      'D1_North1_LivingRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', bed room: ',
      simulations[simulations.fnames.index(
      'D1_North1_BedRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', sanitary room: ',
      simulations[simulations.fnames.index(
      'D1_North1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneTwoElements.TAir'].mean())

print('Mean temperatures of bad insulated building,  living room: ',
      simulations[simulations.fnames.index(
      'D2_North1_LivingRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', bed room: ',
      simulations[simulations.fnames.index(
      'D2_North1_BedRoom.mat')][
      'thermalZoneTwoElements.TAir'].mean(), ', sanitary room: ',
      simulations[simulations.fnames.index(
      'D2_North1_WCandsanitaryroomsinnonresidentialbuildings.mat')][
      'thermalZoneTwoElements.TAir'].mean())

'''Plot living room temperature profiles'''

extracted_simulations = mr.SimResList([
      simulations[simulations.fnames.index(
      'D1_North1_LivingRoom.mat')],
      simulations[simulations.fnames.index(
      'D2_North1_LivingRoom.mat')]])

extracted_simulations.plot('thermalZoneTwoElements.TAir',
                           ylabel1="Temperature",
                           leg1_kwargs=dict(loc='upper right'),
                           title="Temperatures of living rooms")
plt.show()
