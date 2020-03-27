This file gives an overview of the stochastic occupant profiles. 16 different households are included in this DESTEST case. An overview of these households can be found in "strobe_overview.csv".
Each household/occupant profiles is described through 8 files. The content of these files is specified below:
- xxx_info.txt: This file contains some general data on the household, which can also be found in "strobe_overview.csv".
- xxx_mDHW.txt: This file contains two columns. The first column is the time in seconds. The second column is the hot water draw-off for the household in liter/min = kg/min. The hot water is considered to be at 38 degC. [NOT USED IN THIS DESTEST CASE]
- xxx_P.txt: This file contains two columns. The first column is the time in seconds. The second column is the active electrical power in W for the household's appliances and lighting. [NOT USED IN THIS DESTEST CASE]
- xxx_Q.txt: This file contains two columns. The first column is the time in seconds. The second column is the reactive electrical power in W for the household's appliances and lighting. [NOT USED IN THIS DESTEST CASE]
- xxx_QCon.txt: This file contains two columns. The first column is the time in seconds. The second column are the convective internal gains in W. These are the internal gains for the whole building and are divided over the two zones by a volume-weighted ratio (in this DESTEST case: 50% to the day zone and 50% to the night zone). 
- xxx_QRad.txt: This file contains two columns. The first column is the time in seconds. The second column are the radiative internal gains in W. These are the internal gains for the whole building and are divided over the two zones by a volume-weighted ratio (in this DESTEST case: 50% to the day zone and 50% to the night zone). 
- xxx_sh_day.txt: This file contains two columns. The first column is the time in seconds. The second column is the set-point temperature for space heating for the day zone in degC. 
- xxx_sh_night.txt: This file contains two columns. The first column is the time in seconds. The second column is the set-point temperature for space heating for the night zone in degC. 

