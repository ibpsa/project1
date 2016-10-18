# Created July 2015
# TEASER 4 Development Team
"""
This scripts shows how to create a building from scratch (or arbitrary sources)
calculate parameters for a Modelica model and save this example building in a
XML based format. The used classes are imported one after another. Of course
you can import all the classes at the beginning.
"""

'''
First we need to import the classes we want to use
'''

from teaser.logic.buildingobjects.boundaryconditions.boundaryconditions import \
    BoundaryConditions
from teaser.logic.buildingobjects.building import Building
from teaser.logic.buildingobjects.buildingphysics.groundfloor import \
    GroundFloor
from teaser.logic.buildingobjects.buildingphysics.innerwall import InnerWall
from teaser.logic.buildingobjects.buildingphysics.layer import Layer
from teaser.logic.buildingobjects.buildingphysics.material import Material
from teaser.logic.buildingobjects.buildingphysics.outerwall import OuterWall
from teaser.logic.buildingobjects.buildingphysics.rooftop import Rooftop
from teaser.logic.buildingobjects.buildingphysics.window import Window
from teaser.logic.buildingobjects.buildingphysics.ceiling import Ceiling
from teaser.logic.buildingobjects.buildingphysics.floor import Floor
from teaser.logic.buildingobjects.thermalzone import ThermalZone
from teaser.project import Project


def D1_North(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 2
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 53.9
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    '''Instantiate BoundaryConditions class with thermal zone as parent,
    and load the use conditions for the usage 'Living' '''

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction,
     construction type,
     area,
     tilt,
     orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      8.736, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      17.516, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      27.176, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      10.146, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             4.8, 90.0, 90.0],
                "Window 2": [bldg.year_of_construction, "light_annex",
                             7.04, 90.0, 180.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             4.47, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 43.694
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 53.9

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 26.95

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 31.3
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    '''Instantiate BoundaryConditions class with thermal zone as parent,
    and load the use conditions for the usage 'Living' '''

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction,
     construction type,
     area,
     tilt,
     orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      38.912, 90.0, 0.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      7.784, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             1.24, 90.0, 90.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 15.792
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 7.55

    roof = Rooftop(parent=tz2)
    roof.name = "Roof1"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 15.1 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 15.1 / 2
    roof.tilt = 45
    roof.orientation = 180

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'light_annex')
    groundFloor.area = 16.2

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 8.1

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 48.8
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    '''Instantiate BoundaryConditions class with thermal zone as parent,
    and load the use conditions for the usage 'Living' '''

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction,
     construction type,
     area,
     tilt,
     orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      9.66, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      11.648, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      30.372, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      19, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             1.68, 90.0, 90.0],
                "Window 2": [bldg.year_of_construction, "light_annex",
                             4.32, 90.0, 180.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             2.7, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 46.914
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 24.4

    roof = Rooftop(parent=tz3)
    roof.name = "Roof1"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 48.8 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 48.8 / 2
    roof.tilt = 45
    roof.orientation = 180

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    '''Instantiate BoundaryConditions class with thermal zone as parent,
    and load the use conditions for the usage 'Living' '''

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction,
     construction type,
     area,
     tilt,
     orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      8.96, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      8.252, 90.0, 90.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             0.96, 90.0, 90.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 11.97
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 3

    roof = Rooftop(parent=tz4)
    roof.name = "Roof1"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 6 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz4)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 6 / 2
    roof.tilt = 45
    roof.orientation = 180


def D2_North(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 2
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 53.9
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    '''Instantiate BoundaryConditions class with thermal zone as parent,
    and load the use conditions for the usage 'Living' '''

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction,
     construction type,
     area,
     tilt,
     orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      8.736, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      17.516, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'heavy_annex',
                                      27.176, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      10.146, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             4.8, 90.0, 90.0],
                "Window 2": [bldg.year_of_construction, "heavy_annex",
                             7.04, 90.0, 180.0],
                "Window 3": [bldg.year_of_construction, "heavy_annex",
                             4.47, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 43.694
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ground.area = 53.9

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 26.95

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 31.3
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    '''Instantiate BoundaryConditions class with thermal zone as parent,
    and load the use conditions for the usage 'Living' '''

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction,
     construction type,
     area,
     tilt,
     orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      38.912, 90.0, 0.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      7.784, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             1.24, 90.0, 90.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 15.792
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 7.55

    roof = Rooftop(parent=tz2)
    roof.name = "Roof1"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 15.1 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 15.1 / 2
    roof.tilt = 45
    roof.orientation = 180

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    groundFloor.area = 16.2

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 8.1

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 48.8
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    '''Instantiate BoundaryConditions class with thermal zone as parent,
    and load the use conditions for the usage 'Living' '''

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction,
     construction type,
     area,
     tilt,
     orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      9.66, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      11.648, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'heavy_annex',
                                      30.372, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      19, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             1.68, 90.0, 90.0],
                "Window 2": [bldg.year_of_construction, "heavy_annex",
                             4.32, 90.0, 180.0],
                "Window 3": [bldg.year_of_construction, "heavy_annex",
                             2.7, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 46.914
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 24.4

    roof = Rooftop(parent=tz3)
    roof.name = "Roof1"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 48.8 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 48.8 / 2
    roof.tilt = 45
    roof.orientation = 180

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    '''Instantiate BoundaryConditions class with thermal zone as parent,
    and load the use conditions for the usage 'Living' '''

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction,
     construction type,
     area,
     tilt,
     orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      8.96, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      8.252, 90.0, 90.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             0.96, 90.0, 90.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 11.97
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 3

    roof = Rooftop(parent=tz4)
    roof.name = "Roof1"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 6 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz4)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 6 / 2
    roof.tilt = 45
    roof.orientation = 180


def S1_North_L(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 2
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 58.3
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      14.502, 90.0, 0.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      10.212, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      25.04, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             8.71, 90.0, 0.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             2.22, 90.0, 180.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             6.6, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 41.79
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 58.3

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 29.15

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 26
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      10.14, 90.0, 180.0]}

    win_dict = {"Window 3": [bldg.year_of_construction, "light_annex",
                             0.64, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 32.648
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 3.85

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 180

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'light_annex')
    groundFloor.area = 18.3

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 9.15

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 42.6
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      21.212, 90.0, 0.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      12.068, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      25.88, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             2, 90.0, 0.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             5.76, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 49.882
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 21.3

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 180

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.9
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      10.144, 90.0, 180.0]}

    win_dict = {"Window 3": [bldg.year_of_construction, "light_annex",
                             1, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 18.9
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 3.45

    roof = Rooftop(parent=tz4)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 6.3 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz4)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 6.3 / 2
    roof.tilt = 45
    roof.orientation = 180


def S2_North_L(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 2
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 58.3
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      14.502, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      25.04, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'heavy_annex',
                                      10.212, 90.0, 180.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             8.71, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "heavy_annex",
                             6.6, 90.0, 90.0],
                "Window 3": [bldg.year_of_construction, "heavy_annex",
                             2.22, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 41.79
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ground.area = 58.3

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 29.15

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 26
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 3": [bldg.year_of_construction, 'heavy_annex',
                                      10.14, 90.0, 180.0]}

    win_dict = {"Window 3": [bldg.year_of_construction, "heavy_annex",
                             0.64, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 32.648
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 3.85

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 180

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    groundFloor.area = 18.3

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 9.15

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 42.6
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      21.212, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      25.88, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'heavy_annex',
                                      12.068, 90.0, 180.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             2.0, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "heavy_annex",
                             5.76, 90.0, 90.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 49.882
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 21.3

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 180

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.9
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 3": [bldg.year_of_construction, 'heavy_annex',
                                      10.144, 90.0, 180.0]}

    win_dict = {"Window 3": [bldg.year_of_construction, "heavy_annex",
                             1, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 18.9
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 3.45

    roof = Rooftop(parent=tz4)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz4)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 180


def T1_North(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 3
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 52.6
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      21.686, 90.0, 0.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      9.048, 90.0, 180.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             7.91, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "light_annex",
                             2.28, 90.0, 90.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             2.88, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 63.736
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 43.6

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 21.8

    floor = Floor(parent=tz1)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 4.5

    roof = Rooftop(parent=tz1)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 9 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz1)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 9 / 2
    roof.tilt = 45
    roof.orientation = 180

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 24.69
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      4.964, 90.0, 0.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      15.084, 90.0, 180.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             1, 90.0, 0.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             2.08, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 37.954
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 8.03

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 9.13 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 9.13 / 2
    roof.tilt = 45
    roof.orientation = 180

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'light_annex')
    groundFloor.area = 8.63

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 7.78

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 48
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      8.684, 90.0, 0.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      18.318, 90.0, 180.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             2.88, 90.0, 0.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             4.88, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 69.097
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 24

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 16 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 16 / 2
    roof.tilt = 45
    roof.orientation = 180

    ceiling = Ceiling(parent=tz3)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 16

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.3
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      5.004, 90.0, 0.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             0.96, 90.0, 0.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 15.099
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ceiling = Ceiling(parent=tz4)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 3.15

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 3.15


def T2_North(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 3
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 52.6
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      21.686, 90.0, 0.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'heavy_annex',
                                      9.048, 90.0, 180.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             7.91, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "heavy_annex",
                             2.28, 90.0, 90.0],
                "Window 3": [bldg.year_of_construction, "heavy_annex",
                             2.88, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 63.736
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ground.area = 43.6

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 21.8

    floor = Floor(parent=tz1)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 4.5

    roof = Rooftop(parent=tz1)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 9 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz1)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 9 / 2
    roof.tilt = 45
    roof.orientation = 180

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 24.69
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      4.964, 90.0, 0.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'heavy_annex',
                                      15.084, 90.0, 180.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             1, 90.0, 0.0],
                "Window 3": [bldg.year_of_construction, "heavy_annex",
                             2.08, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 37.954
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 8.03

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 9.13 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 9.13 / 2
    roof.tilt = 45
    roof.orientation = 180

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    groundFloor.area = 8.63

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 7.78

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 48
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      8.684, 90.0, 0.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'heavy_annex',
                                      18.318, 90.0, 180.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             2.88, 90.0, 0.0],
                "Window 3": [bldg.year_of_construction, "heavy_annex",
                             4.88, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 69.097
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 24

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 16 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 16 / 2
    roof.tilt = 45
    roof.orientation = 180

    ceiling = Ceiling(parent=tz3)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 16

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.3
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      5.004, 90.0, 0.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             0.96, 90.0, 0.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 15.099
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ceiling = Ceiling(parent=tz4)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 3.15

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 3.15


def S1_West(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 2
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 58.3
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      10.212, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      25.04, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      14.502, 90.0, 270.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "light_annex",
                             2.22, 90.0, 90.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             6.6, 90.0, 180.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             8.71, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 41.79
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 58.3

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 29.15

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 26
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      10.14, 90.0, 90.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "light_annex",
                             0.64, 90.0, 90.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 32.648
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 3.85

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 270

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'light_annex')
    groundFloor.area = 18.3

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 9.15

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 42.6
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      12.068, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      25.88, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      21.212, 90.0, 270.0]}

    win_dict = {"Window 3": [bldg.year_of_construction, "light_annex",
                             5.76, 90.0, 180.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             2, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 49.882
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 21.3

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 270

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.9
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      10.144, 90.0, 90.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "light_annex",
                             1, 90.0, 90.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 18.9
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 3.45

    roof = Rooftop(parent=tz4)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz4)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 270


def S2_West(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 2
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 58.3
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      25.04, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      10.212, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      14.502, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             6.6, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "heavy_annex",
                             2.22, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "heavy_annex",
                             8.71, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 41.79
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ground.area = 58.3

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 29.15

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 26
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      10.14, 90.0, 90.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "heavy_annex",
                             0.64, 90.0, 90.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 32.648
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 3.85

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 270

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    groundFloor.area = 18.3

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 9.15

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 42.6
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      25.88, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      12.068, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      21.212, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             5.76, 90.0, 0.0],
                "Window 4": [bldg.year_of_construction, "heavy_annex",
                             2, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 49.882
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 21.3

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 270

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.9
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      10.144, 90.0, 90.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "heavy_annex",
                             1, 90.0, 90.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 18.9
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 3.45

    roof = Rooftop(parent=tz4)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz4)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 270


def T1_West(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 3
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 52.6
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      9.048, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      21.686, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             2.28, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "light_annex",
                             2.88, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             7.91, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 63.736
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 43.6

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 21.8

    floor = Floor(parent=tz1)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 4.5

    roof = Rooftop(parent=tz1)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 9 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz1)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 9 / 2
    roof.tilt = 45
    roof.orientation = 270

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 24.69
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      15.084, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      4.964, 90.0, 270.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "light_annex",
                             2.08, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             1, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 37.954
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 8.03

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 9.13 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 9.13 / 2
    roof.tilt = 45
    roof.orientation = 270

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'light_annex')
    groundFloor.area = 8.63

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 7.78

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 48
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      18.318, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      8.684, 90.0, 270.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "light_annex",
                             4.88, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             2.88, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 69.097
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 24

    ceiling = Ceiling(parent=tz3)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 16

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 16 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 16 / 2
    roof.tilt = 45
    roof.orientation = 270

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.3
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      5.004, 90.0, 270.0]}

    win_dict = {"Window 4": [bldg.year_of_construction, "light_annex",
                             0.96, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 15.099
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ceiling = Ceiling(parent=tz4)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 3.15

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 3.15


def T2_West(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 3
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 52.6
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      9.048, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      21.686, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             2.28, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "heavy_annex",
                             2.88, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "heavy_annex",
                             7.91, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 63.736
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ground.area = 43.6

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 21.8

    floor = Floor(parent=tz1)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 4.5

    roof = Rooftop(parent=tz1)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 9 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz1)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 9 / 2
    roof.tilt = 45
    roof.orientation = 270

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 24.69
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      15.084, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      4.964, 90.0, 270.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "heavy_annex",
                             2.08, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "heavy_annex",
                             1, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 37.954
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 8.03

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 9.13 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 9.13 / 2
    roof.tilt = 45
    roof.orientation = 270

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    groundFloor.area = 8.63

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 7.78

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 48
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      18.318, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      8.684, 90.0, 270.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "heavy_annex",
                             4.88, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "heavy_annex",
                             2.88, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 69.097
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 24

    ceiling = Ceiling(parent=tz3)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 16

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 16 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 16 / 2
    roof.tilt = 45
    roof.orientation = 270

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.3
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      5.004, 90.0, 270.0]}

    win_dict = {"Window 4": [bldg.year_of_construction, "heavy_annex",
                             0.96, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 15.099
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ceiling = Ceiling(parent=tz4)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 3.15

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 3.15


def S1_East(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 2
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 58.3
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      14.502, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      25.04, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      10.212, 90.0, 270.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "light_annex",
                             8.71, 90.0, 90.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             6.6, 90.0, 180.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             2.22, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 41.79
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 58.3

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 29.15

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 26
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      10.14, 90.0, 270.0]}

    win_dict = {"Window 4": [bldg.year_of_construction, "light_annex",
                             0.64, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 32.648
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 3.85

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 270

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'light_annex')
    groundFloor.area = 18.3

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 9.15

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 42.6
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      21.212, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      25.88, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      12.068, 90.0, 270.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "light_annex",
                             2, 90.0, 90.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             5.76, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 49.882
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 21.3

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 270

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.9
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      10.144, 90.0, 270.0]}

    win_dict = {"Window 4": [bldg.year_of_construction, "light_annex",
                             1, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 18.9
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 3.45

    roof = Rooftop(parent=tz4)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz4)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 270


def S2_East(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 2
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 58.3
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      25.04, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      14.502, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      10.212, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             6.6, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "heavy_annex",
                             8.71, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "heavy_annex",
                             2.22, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 41.79
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ground.area = 58.3

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 29.15

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 26
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      10.14, 90.0, 270.0]}

    win_dict = {"Window 4": [bldg.year_of_construction, "heavy_annex",
                             0.64, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 32.648
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 3.85

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 270

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    groundFloor.area = 18.3

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 9.15

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 42.6
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      25.88, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      21.212, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      12.068, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             5.76, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "heavy_annex",
                             2, 90.0, 90.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 49.882
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 21.3

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 270

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.9
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      10.144, 90.0, 270.0]}

    win_dict = {"Window 4": [bldg.year_of_construction, "heavy_annex",
                             1, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 18.9
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 3.45

    roof = Rooftop(parent=tz4)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz4)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 270


def A1_North(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 5
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 302
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      102.32, 90.0, 180.0]}

    win_dict = {"Window 3": [bldg.year_of_construction, "light_annex",
                             76.6, 90.0, 180.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             3.15, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 72.86

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 120.8

    floor = Floor(parent=tz1)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 120.8

    roof = Rooftop(parent=tz1)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 72.86

    '''NEW THERMAL ZONE'''

    # tz2 = ThermalZone(parent=bldg)
    # tz2.name = "Traffic Area"
    # tz2.area = 119
    # tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    # tz2.infiltration_rate = 0.5
    #
    # tz2.use_conditions = BoundaryConditions(parent=tz2)
    # tz2.use_conditions.load_use_conditions("Traffic area")
    #
    # '''We save information of the Outer and Inner walls as well as Windows
    # in dicts, the key is the name, while the value is a list (if applicable)
    # [year of construction, construction type, area, tilt, orientation]'''
    #
    # out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
    #                                   0, 90.0, 0.0],
    #                  "Outer Wall 2": [bldg.year_of_construction, 'light_annex',
    #                                   0, 90.0, 90.0],
    #                  "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
    #                                   0, 90.0, 180.0],
    #                  "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
    #                                   0, 90.0, 270.0]}
    #
    # win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
    #                         0, 90.0, 0.0],
    #             "Window 2": [bldg.year_of_construction, "light_annex",
    #                          0, 90.0, 90.0],
    #             "Window 3": [bldg.year_of_construction, "light_annex",
    #                          0, 90.0, 180.0],
    #             "Window 4": [bldg.year_of_construction, "light_annex",
    #                          0, 90.0, 270.0]}
    #
    # for key, value in out_wall_dict.items():
    #     '''instantiate OuterWall class'''
    #     out_wall = OuterWall(parent=tz2)
    #     out_wall.name = key
    #     '''load typical construction, based on year of construction and
    #     construction type'''
    #     out_wall.load_type_element(year=value[0],
    #                                construction=value[1])
    #     out_wall.area = value[2]
    #     out_wall.tilt = value[3]
    #     out_wall.orientation = value[4]
    #
    # for key, value in win_dict.items():
    #     '''instantiate Window class'''
    #     win = Window(parent=tz2)
    #     win.name = key
    #     win.area = value[2]
    #     win.tilt = value[3]
    #     win.orientation = value[4]
    #     win.load_type_element(year=value[0],
    #                           construction=value[1])
    #
    # '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    # orientation because we take the default values'''
    #
    # floor = Floor(parent=tz2)
    # floor.name = "Floor"
    # floor.load_type_element(bldg.year_of_construction, 'light_annex')
    # floor.area = 47.6
    #
    # roof = Rooftop(parent=tz2)
    # roof.name = "Roof"
    # roof.load_type_element(bldg.year_of_construction, 'light_annex')
    # roof.area = 28.7
    #
    # groundFloor = GroundFloor(parent=tz2)
    # groundFloor.name = "Ground Floor"
    # groundFloor.load_type_element(bldg.year_of_construction, 'light_annex')
    # groundFloor.area = 28.7
    #
    # ceiling = Ceiling(parent=tz2)
    # ceiling.name = "Ceiling"
    # ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    # ceiling.area = 47.6

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 235.5
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      115.12, 90.0, 0.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             37.2, 90.0, 0.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz3)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 56.82

    ceiling = Ceiling(parent=tz3)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 94.2

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 94.2

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 56.82

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 43.5
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      23.44, 90.0, 0.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             5.4, 90.0, 0.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz4)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 10.5

    ceiling = Ceiling(parent=tz4)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 17.4

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 17.4

    roof = Rooftop(parent=tz4)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 10.5


def T1_East(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 3
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 52.6
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      21.686, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      9.048, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             2.28, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "light_annex",
                             7.91, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             2.88, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 63.736
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 43.6

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 21.8

    floor = Floor(parent=tz1)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 4.5

    roof = Rooftop(parent=tz1)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 9 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz1)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 9 / 2
    roof.tilt = 45
    roof.orientation = 270

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 24.69
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      4.964, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      15.084, 90.0, 270.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "light_annex",
                             1, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             2.08, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 37.954
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 8.03

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 9.13 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 9.13 / 2
    roof.tilt = 45
    roof.orientation = 270

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'light_annex')
    groundFloor.area = 8.63

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 7.78

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 48
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      8.684, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      18.318, 90.0, 270.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "light_annex",
                             2.88, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             4.88, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 69.097
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ceiling = Ceiling(parent=tz3)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 16

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 24

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 16 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 16 / 2
    roof.tilt = 45
    roof.orientation = 270

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.3
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      5.004, 90.0, 90.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "light_annex",
                             0.96, 90.0, 90.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 15.099
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ceiling = Ceiling(parent=tz4)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 3.15

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 3.15


def T2_East(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 3
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 52.6
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      21.686, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      9.048, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             2.28, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "heavy_annex",
                             7.91, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "heavy_annex",
                             2.88, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 63.736
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ground.area = 43.6

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 21.8

    floor = Floor(parent=tz1)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 4.5

    roof = Rooftop(parent=tz1)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 9 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz1)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 9 / 2
    roof.tilt = 45
    roof.orientation = 270

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 24.69
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      4.964, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      15.084, 90.0, 270.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "heavy_annex",
                             1, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "heavy_annex",
                             2.08, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 37.954
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 8.03

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 9.13 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 9.13 / 2
    roof.tilt = 45
    roof.orientation = 270

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    groundFloor.area = 8.63

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 7.78

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 48
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      8.684, 90.0, 90.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      18.318, 90.0, 270.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "heavy_annex",
                             2.88, 90.0, 90.0],
                "Window 4": [bldg.year_of_construction, "heavy_annex",
                             4.88, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 69.097
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ceiling = Ceiling(parent=tz3)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 16

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 24

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 16 / 2
    roof.tilt = 45
    roof.orientation = 90

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 16 / 2
    roof.tilt = 45
    roof.orientation = 270

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.3
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 2": [bldg.year_of_construction, 'heavy_annex',
                                      5.004, 90.0, 90.0]}

    win_dict = {"Window 2": [bldg.year_of_construction, "heavy_annex",
                             0.96, 90.0, 90.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 15.099
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ceiling = Ceiling(parent=tz4)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 3.15

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 3.15


def S1_North_R(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 2
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 58.3
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      14.502, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      25.04, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      10.212, 90.0, 180.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             8.71, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "light_annex",
                             6.6, 90.0, 90.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             2.22, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 41.79
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 58.3

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 29.15

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 26
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      10.14, 90.0, 180.0]}

    win_dict = {"Window 3": [bldg.year_of_construction, "light_annex",
                             0.64, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 32.648
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 3.85

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 180

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'light_annex')
    groundFloor.area = 18.3

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 9.15

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 42.6
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      21.212, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      25.88, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      12.068, 90.0, 180.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             2, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "light_annex",
                             5.76, 90.0, 90.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 49.882
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 21.3

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 180

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.9
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      10.144, 90.0, 180.0]}

    win_dict = {"Window 3": [bldg.year_of_construction, "light_annex",
                             1, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 18.9
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 3.45

    roof = Rooftop(parent=tz4)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz4)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 180


def S2_North_R(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 2
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 58.3
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      14.502, 90.0, 0.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'heavy_annex',
                                      10.212, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      25.04, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             8.71, 90.0, 0.0],
                "Window 3": [bldg.year_of_construction, "heavy_annex",
                             2.22, 90.0, 180.0],
                "Window 4": [bldg.year_of_construction, "heavy_annex",
                             6.6, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 41.79
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ground.area = 58.3

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 29.15

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 26
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 3": [bldg.year_of_construction, 'heavy_annex',
                                      10.14, 90.0, 180.0]}

    win_dict = {"Window 3": [bldg.year_of_construction, "heavy_annex",
                             0.64, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 32.648
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 3.85

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz2)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 7.7 / 2
    roof.tilt = 45
    roof.orientation = 180

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    groundFloor.area = 18.3

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'heavy_annex')
    ceiling.area = 9.15

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 42.6
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'heavy_annex',
                                      21.212, 90.0, 0.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'heavy_annex',
                                      12.068, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'heavy_annex',
                                      25.88, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "heavy_annex",
                             2, 90.0, 0.0],
                "Window 4": [bldg.year_of_construction, "heavy_annex",
                             5.76, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 49.882
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 21.3

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz3)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 42.6 / 2
    roof.tilt = 45
    roof.orientation = 180

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 6.9
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 3": [bldg.year_of_construction, 'heavy_annex',
                                      10.144, 90.0, 180.0]}

    win_dict = {"Window 3": [bldg.year_of_construction, "heavy_annex",
                             1, 90.0, 180.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 18.9
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'heavy_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'heavy_annex')
    floor.area = 3.45

    roof = Rooftop(parent=tz4)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 0

    roof = Rooftop(parent=tz4)
    roof.name = "Roof2"
    roof.load_type_element(bldg.year_of_construction, 'heavy_annex')
    roof.area = 6.9 / 2
    roof.tilt = 45
    roof.orientation = 180


def blueprint(prj, name):
    bldg = Building(parent=prj)

    '''Set some building parameters'''

    bldg.name = name
    bldg.city = "Annex"
    bldg.year_of_construction = 2014
    bldg.number_of_floors = 1
    bldg.height_of_floors = 2.8

    '''Instantiate a ThermalZone class, with building as parent and set  some
    parameters of the thermal zone'''

    tz1 = ThermalZone(parent=bldg)
    tz1.name = "Living Room"
    tz1.area = 53.9
    tz1.volume = tz1.area * bldg.number_of_floors * bldg.height_of_floors
    tz1.infiltration_rate = 0.5

    tz1.use_conditions = BoundaryConditions(parent=tz1)
    tz1.use_conditions.load_use_conditions("Living")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      8.736, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      17.516, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      27.176, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      10.146, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             4.8, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "light_annex",
                             7.04, 90.0, 90.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             4.47, 90.0, 180.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             4.47, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz1)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz1)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz1)
    inner_wall.area = 10.0
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz1)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 53.9

    ceiling = Ceiling(parent=tz1)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 53.9

    floor = Floor(parent=tz1)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 15.1

    roof = Rooftop(parent=tz1)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 23.29

    '''NEW THERMAL ZONE'''

    tz2 = ThermalZone(parent=bldg)
    tz2.name = "Traffic Area"
    tz2.area = 31.3
    tz2.volume = tz2.area * bldg.number_of_floors * bldg.height_of_floors
    tz2.infiltration_rate = 0.5

    tz2.use_conditions = BoundaryConditions(parent=tz2)
    tz2.use_conditions.load_use_conditions("Traffic area")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      8.736, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      17.516, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      27.176, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      10.146, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             4.8, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "light_annex",
                             7.04, 90.0, 90.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             4.47, 90.0, 180.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             4.47, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz2)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz2)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz2)
    inner_wall.area = 10.0
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    floor = Floor(parent=tz2)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 15.1

    roof = Rooftop(parent=tz2)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 23.29

    groundFloor = GroundFloor(parent=tz2)
    groundFloor.name = "Ground Floor"
    groundFloor.load_type_element(bldg.year_of_construction, 'light_annex')
    groundFloor.area = 16.2

    ceiling = Ceiling(parent=tz2)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 16.2

    tz3 = ThermalZone(parent=bldg)
    tz3.name = "Bed Room"
    tz3.area = 48.8
    tz3.volume = tz3.area * bldg.number_of_floors * bldg.height_of_floors
    tz3.infiltration_rate = 0.5

    tz3.use_conditions = BoundaryConditions(parent=tz3)
    tz3.use_conditions.load_use_conditions("Bed room")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      8.736, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      17.516, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      27.176, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      10.146, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             4.8, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "light_annex",
                             7.04, 90.0, 90.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             4.47, 90.0, 180.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             4.47, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz3)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz3)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz3)
    inner_wall.area = 10.0
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz3)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 53.9

    ceiling = Ceiling(parent=tz3)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 53.9

    floor = Floor(parent=tz3)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 15.1

    roof = Rooftop(parent=tz3)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 23.29

    tz4 = ThermalZone(parent=bldg)
    tz4.name = "WC and sanitary rooms in non-residential buildings"
    tz4.area = 48.8
    tz4.volume = tz4.area * bldg.number_of_floors * bldg.height_of_floors
    tz4.infiltration_rate = 0.5

    tz4.use_conditions = BoundaryConditions(parent=tz4)
    tz4.use_conditions.load_use_conditions(
        "WC and sanitary rooms in non-residential buildings")

    '''We save information of the Outer and Inner walls as well as Windows
    in dicts, the key is the name, while the value is a list (if applicable)
    [year of construction, construction type, area, tilt, orientation]'''

    out_wall_dict = {"Outer Wall 1": [bldg.year_of_construction, 'light_annex',
                                      8.736, 90.0, 0.0],
                     "Outer Wall 2": [bldg.year_of_construction, 'light_annex',
                                      17.516, 90.0, 90.0],
                     "Outer Wall 3": [bldg.year_of_construction, 'light_annex',
                                      27.176, 90.0, 180.0],
                     "Outer Wall 4": [bldg.year_of_construction, 'light_annex',
                                      10.146, 90.0, 270.0]}

    win_dict = {"Window 1": [bldg.year_of_construction, "light_annex",
                             4.8, 90.0, 0.0],
                "Window 2": [bldg.year_of_construction, "light_annex",
                             7.04, 90.0, 90.0],
                "Window 3": [bldg.year_of_construction, "light_annex",
                             4.47, 90.0, 180.0],
                "Window 4": [bldg.year_of_construction, "light_annex",
                             4.47, 90.0, 270.0]}

    for key, value in out_wall_dict.items():
        '''instantiate OuterWall class'''
        out_wall = OuterWall(parent=tz4)
        out_wall.name = key
        '''load typical construction, based on year of construction and
        construction type'''
        out_wall.load_type_element(year=value[0],
                                   construction=value[1])
        out_wall.area = value[2]
        out_wall.tilt = value[3]
        out_wall.orientation = value[4]

    for key, value in win_dict.items():
        '''instantiate Window class'''
        win = Window(parent=tz4)
        win.name = key
        win.area = value[2]
        win.tilt = value[3]
        win.orientation = value[4]
        win.load_type_element(year=value[0],
                              construction=value[1])

    inner_wall = InnerWall(parent=tz4)
    inner_wall.area = 10.0
    inner_wall.name = "InnerWall1"
    inner_wall.load_type_element(bldg.year_of_construction, 'light_annex')

    '''Define a Rooftop and a Groundfloor, we don't need to set tilt and
    orientation because we take the default values'''

    ground = GroundFloor(parent=tz4)
    ground.name = "Ground floor"
    ground.load_type_element(bldg.year_of_construction, 'light_annex')
    ground.area = 53.9

    ceiling = Ceiling(parent=tz4)
    ceiling.name = "Ceiling"
    ceiling.load_type_element(bldg.year_of_construction, 'light_annex')
    ceiling.area = 53.9

    floor = Floor(parent=tz4)
    floor.name = "Floor"
    floor.load_type_element(bldg.year_of_construction, 'light_annex')
    floor.area = 15.1

    roof = Rooftop(parent=tz4)
    roof.name = "Roof"
    roof.load_type_element(bldg.year_of_construction, 'light_annex')
    roof.area = 23.29


if __name__ == '__main__':
    prj = Project(load_data=True)
    prj.name = 'Annex60_2_2_FourEl'
    D1_North(prj, name="D1_North1")
    D1_North(prj, name="D1_North2")
    D1_North(prj, name="D1_North3")
    D1_North(prj, name="D1_North4")
    D2_North(prj, name="D2_North1")
    D2_North(prj, name="D2_North2")

    S1_North_L(prj, name="S1_North_L1")
    T1_North(prj, name="T1_North1")
    T2_North(prj, name="T2_North1")
    T1_North(prj, name="T1_North2")
    S2_North_L(prj, name="S2_North_L1")

    S2_North_R(prj, name="S2_North_R1")
    T1_North(prj, name="T1_North3")
    A1_North(prj, name="A1_North1")
    S1_North_R(prj, name="S1_North_R1")

    S1_West(prj, name="S1_West1")
    T1_West(prj, name="T1_West")
    T2_West(prj, name="T2_West")
    S2_West(prj, name="S2_West")

    S1_East(prj, name="S1_East1")
    T2_East(prj, name="T2_East1")
    T1_East(prj, name="T1_East1")
    S2_East(prj, name="S2_East1")

    '''
    We calculate the RC Values according to ebc procedure
    '''
    prj.used_library_calc = 'Annex60'
    prj.number_of_elements_calc = 4
    prj.merge_windows_calc = False
    prj.calc_all_buildings(raise_errors=True)

    # prj.used_library_calc = 'AixLib'
    # prj.number_of_elements_calc = 2
    # prj.merge_windows_calc = False
    # prj.calc_all_buildings(raise_errors=True)

    '''
    Export the Modelica Record
    '''
    # prj.export_aixlib(building_model="MultizoneEquipped",
    #                   zone_model="ThermalZoneEquipped",
    #                   corG=False,)

    prj.export_annex()
    '''
    Save new TEASER XML
    '''
    prj.save_project("Annex60_2_2_FourEl")

    print("That's it :)")
