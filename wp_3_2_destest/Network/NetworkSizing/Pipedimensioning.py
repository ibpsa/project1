# -*- coding: utf-8 -*-
"""
Created on Thu Apr  5 14:16:21 2018

@author: Felix Bünning, Empa/ETH-Z

This program calculates pipe dimensions and insulation for a radial heating network for IBPSA Project 1's DESTEST
"""
import pandas as pd
import numpy as np
import networkx as nx
import matplotlib.pyplot as plt
import math
from scipy.optimize import fsolve

"""General parameters"""
dT=20.                  #Temperature difference between supply and return in K"""
eps=0.05/1000           #Pipe roughness in m"""
nu=0.45E-6              #Kinematic viscosity of water in m**2/s
dP_s=250.               #Specific pressure loss in Pa/m

def main():
    nodelist, edgelist = importData()       #Import Data from csv files
    g = createGraph(edgelist,nodelist)      #Create a networkx graph
    g = calculatePeakNodes(g)               #Calculate peak power for all nodes of the graph
    g = calculatePeakEdges(g)               #Calculate peak power for all edges of the graph
    
    """Compute Diameter and Pressureloss for longest Paths"""
    currentpath=nx.shortest_path(g,'SimpleDistrict_2','i')
    g=calculateWholePath(g,currentpath,dP_s)
    currentpath=nx.shortest_path(g,'SimpleDistrict_4','i')
    g=calculateWholePath(g,currentpath,dP_s)
    
    """Compute Diameter and Pressureloss for rest of paths"""
    highestPressureLoss = pressureLossSum(g,currentpath)+1
    for i in list(g.edges):
        edge=g.edges[i]
        if edge['attr_dict']['dP']==0:
            remainingPressureLoss=highestPressureLoss-pressureLossSum(g,nx.shortest_path(g,i[1],'i'))
            g=calculateWholePath(g,[i[0],i[1]],remainingPressureLoss/(2*edge['weight']))

    g = calculateInsulationThickness(g)     #Calculate the thickness of insulation for all graphs
    plotGraph(g)                            #Plot the graph and save figure
    generateNodeFile(g)                     #Generate csv file containing information about the nodes
    generatePipeFile(g)                     #Generate csv file containg ingotmation about all edges/pipes
    generatePipeFileWithoutNames(g)         #Generate csv file containg ingotmation about all edges/pipes w/o names for Modelica
    
    return g
    
def importData():    
    """Import data from csv files"""
    energyData = pd.read_csv('https://raw.githubusercontent.com/ibpsa/project1/master/wp_3_2_destest/Results/SimpleDistrict/SimpleDistrict_energyKPI.csv', sep=';')[:-1]
    geometryData = pd.read_csv('https://raw.githubusercontent.com/ibpsa/project1/master/wp_3_2_destest/Results/SimpleDistrict/SimpleDistrict_geometryKPI.csv', sep=';')
    
    """Create a node list"""
    nodelist=pd.DataFrame(data=geometryData['Name of building'])
    nodelist['X']=geometryData['        Building latitude [m]']
    nodelist['Y']=geometryData[' Building longitude [m]']
    nodelist = nodelist.set_index('Name of building')
    energyData = energyData.set_index('Unnamed: 0')
    nodelist=nodelist.assign(peakPower=energyData['Peak power [kW]'])
    
    """Adding all nodes to a list"""
    nodelist= nodelist.append(pd.DataFrame([['a',(nodelist['X'].SimpleDistrict_2+nodelist['X'].SimpleDistrict_3)/2,nodelist['Y'].SimpleDistrict_2,4.]],columns=['name','X','Y','weight']).set_index('name'))
    nodelist= nodelist.append(pd.DataFrame([['b',(nodelist['X'].SimpleDistrict_5+nodelist['X'].SimpleDistrict_6)/2,nodelist['Y'].SimpleDistrict_5]],columns=['name','X','Y']).set_index('name'))
    nodelist= nodelist.append(pd.DataFrame([['c',(nodelist['X'].SimpleDistrict_10+nodelist['X'].SimpleDistrict_11)/2,nodelist['Y'].SimpleDistrict_10]],columns=['name','X','Y']).set_index('name'))
    nodelist= nodelist.append(pd.DataFrame([['d',(nodelist['X'].SimpleDistrict_16+nodelist['X'].SimpleDistrict_15)/2,nodelist['Y'].SimpleDistrict_16]],columns=['name','X','Y']).set_index('name'))
    nodelist= nodelist.append(pd.DataFrame([['e',(nodelist['X'].SimpleDistrict_1+nodelist['X'].SimpleDistrict_4)/2,nodelist['Y'].SimpleDistrict_2]],columns=['name','X','Y']).set_index('name'))
    nodelist= nodelist.append(pd.DataFrame([['f',(nodelist['X'].SimpleDistrict_8+nodelist['X'].SimpleDistrict_7)/2,nodelist['Y'].SimpleDistrict_8]],columns=['name','X','Y']).set_index('name'))
    nodelist= nodelist.append(pd.DataFrame([['g',(nodelist['X'].SimpleDistrict_9+nodelist['X'].SimpleDistrict_12)/2,nodelist['Y'].SimpleDistrict_9]],columns=['name','X','Y']).set_index('name'))
    nodelist= nodelist.append(pd.DataFrame([['h',(nodelist['X'].SimpleDistrict_14+nodelist['X'].SimpleDistrict_13)/2,nodelist['Y'].SimpleDistrict_14]],columns=['name','X','Y']).set_index('name'))
    nodelist= nodelist.append(pd.DataFrame([['i',(nodelist['X'].SimpleDistrict_15+nodelist['X'].SimpleDistrict_14)/2,nodelist['Y'].SimpleDistrict_13-12]],columns=['name','X','Y']).set_index('name'))
    
    """Adding all edges to a list"""
    edgelist=pd.DataFrame([['SimpleDistrict_2','a','SimpleDistrict2-a',nodelist['X'].a-nodelist['X'].SimpleDistrict_2,0,0]],columns=['node1','node2','trail','distance','D','dP'])
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_3','a','SimpleDistrict3-a',nodelist['X'].SimpleDistrict_3-nodelist['X'].a,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_5','b','SimpleDistrict5-b',nodelist['X'].b-nodelist['X'].SimpleDistrict_5,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_6','b','SimpleDistrict6-b',nodelist['X'].SimpleDistrict_6-nodelist['X'].b,0,0]],columns=['node1','node2','trail','distance','D','dP']))   
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_10','c','SimpleDistrict10-c',nodelist['X'].c-nodelist['X'].SimpleDistrict_10,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_11','c','SimpleDistrict11-c',nodelist['X'].SimpleDistrict_11-nodelist['X'].c,0,0]],columns=['node1','node2','trail','distance','D','dP']))  
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_16','d','SimpleDistrict16-d',nodelist['X'].d-nodelist['X'].SimpleDistrict_16,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_15','d','SimpleDistrict15-d',nodelist['X'].SimpleDistrict_15-nodelist['X'].d,0,0]],columns=['node1','node2','trail','distance','D','dP']))  
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_1','e','SimpleDistrict1-e',nodelist['X'].e-nodelist['X'].SimpleDistrict_1,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_4','e','SimpleDistrict4-e',nodelist['X'].SimpleDistrict_4-nodelist['X'].e,0,0]],columns=['node1','node2','trail','distance','D','dP']))   
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_8','f','SimpleDistrict8-f',nodelist['X'].f-nodelist['X'].SimpleDistrict_8,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_7','f','SimpleDistrict7-f',nodelist['X'].SimpleDistrict_7-nodelist['X'].f,0,0]],columns=['node1','node2','trail','distance','D','dP'])) 
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_9','g','SimpleDistrict9-g',nodelist['X'].g-nodelist['X'].SimpleDistrict_9,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_12','g','SimpleDistrict12-g',nodelist['X'].SimpleDistrict_12-nodelist['X'].g,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_14','h','SimpleDistrict14-h',nodelist['X'].h-nodelist['X'].SimpleDistrict_14,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['SimpleDistrict_13','h','SimpleDistrict13-h',nodelist['X'].SimpleDistrict_13-nodelist['X'].h,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['d','i','d-i',nodelist['X'].i-nodelist['X'].d+nodelist['Y'].d-nodelist['Y'].i,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['h','i','h-i',nodelist['X'].h-nodelist['X'].i+nodelist['Y'].h-nodelist['Y'].i,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['a','b','a-b',nodelist['Y'].a-nodelist['Y'].b,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['b','c','b-c',nodelist['Y'].b-nodelist['Y'].c,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['c','d','c-d',nodelist['Y'].c-nodelist['Y'].d,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['e','f','e-f',nodelist['Y'].e-nodelist['Y'].f,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['f','g','f-g',nodelist['Y'].f-nodelist['Y'].g,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    edgelist=edgelist.append(pd.DataFrame([['g','h','g-h',nodelist['Y'].g-nodelist['Y'].h,0,0]],columns=['node1','node2','trail','distance','D','dP']))
    
    nodelist['id']=nodelist.index
    nodelist=nodelist.reset_index(drop=True)
    nodelist=nodelist[['id','X','Y','peakPower']]
    return nodelist,edgelist

def createGraph(edgelist,nodelist):    
    """Create graph"""
    g = nx.DiGraph()
    for i, elrow in edgelist.iterrows():
        g.add_edge(elrow[0], elrow[1], weight=elrow['distance'],attr_dict=elrow[2:].to_dict())
        
        
    for i, nlrow in nodelist.iterrows():
        g.node[nlrow['id']].update(nlrow[1:].to_dict())
    return g

def calculatePeakNodes(g):  
    """Calculate max capacity for each node"""
    while True:
        for i in list(g.nodes):
            if not(g.nodes[i]['peakPower'] > 0.):
                predecessorList = list(g.predecessors(i))
                predecessorSum=0
                for k in predecessorList:
                    predecessorSum=predecessorSum+g.nodes[k]['peakPower']
                updatedPower=predecessorSum
                g.nodes[i]['peakPower']=updatedPower
        totalsum=0
        for i in list(g.nodes):
            totalsum=totalsum+ g.nodes[i]['peakPower']
        if totalsum >0:
            break
    return g

def calculatePeakEdges(g):    
    """Transfer capacity from node to edge"""
    counter=0
    for i in list(g.edges):
        g.edges[i]['attr_dict']['peakPower']=g.nodes[list(g.edges)[counter][0]]['peakPower']
        print('Peakpower of edge '+str(g.edges[i]['attr_dict']['trail'])+"  "+str(g.edges[i]['attr_dict']['peakPower']))
        counter=counter+1
    del counter
    return g

def calculateInsulationThickness(g):            
    """Add insulation thickness"""
    for i in list(g.edges):
        g.edges[i]['attr_dict']['D_ins']=giveInsulation(g.edges[i]['attr_dict']['D'])
    return g

def plotGraph(g):  
    """Plot Graph"""    
    node_positions = {node[0]: (node[1]['X'], node[1]['Y']) for node in g.nodes(data=True)}
    plt.figure(figsize=(18, 13))
    nx.draw_networkx(g,pos=node_positions)
    """nx.draw(g, pos=node_positions, edge_color='red', node_size=10, node_color='black',)"""
    plt.ylabel('Longitude in m')
    plt.xlabel('Latitude in m')
    plt.show()     
    plt.savefig('DistrictHeatingStructure.png')
    return g

def calculateWholePath(graph,path,p_p):
    """Calculate diameter and pressureLoss for a path"""
    g=graph
    for i in range(0,len(path)-1):
        edge = g.edges[(path[i],path[i+1])]
        f,D= solvediameterequations(edge['attr_dict']['peakPower'],dT,p_p)
        D_din=getDinDiameter(D)
        pressureLoss=edge['weight']*2*getspecificPressureLoss(D_din,edge['attr_dict']['peakPower'],dT)
        g.edges[(path[i],path[i+1])]['attr_dict']['D']=D_din
        g.edges[(path[i],path[i+1])]['attr_dict']['dP']=pressureLoss
    return g

def getLongestPath(graph):
    """Get longest path of a graph"""
    g=graph
    longestpath=nx.dag_longest_path(g)
    return longestpath
    
def diameterequations(p, *data):
    """Define equations for Dancy Weisenbach pressure equations"""
    f_d,D=p
    m_dot,nu,rho,p_p=data
    dancy_weisenbach=D-(f_d*8*m_dot**2/(p_p*rho*math.pi**2))**(1/5)
    """friction_coefficient=1/((f_d)**(1/2))+1.93*math.log(1.90/(4*m_dot/((math.pi*rho*nu*(D))*((f_d)**(1/2)))))"""
    """friction_coefficient=f_d-0.11*(0.01/D +(68/(4*m_dot/(math.pi*rho*nu*D))))**(0.25)"""
    """friction_coefficient=f_d-0.1"""
    friction_coefficient=f_d-0.0055*(1+(2*10**4*(eps/D)+(1E06/(4*m_dot/(math.pi*rho*nu*D))))**(1/3))
    return (dancy_weisenbach,friction_coefficient)

def solvediameterequations(Q_peak,dT,p_p):
    """Solve Dancy Weisenbach pressure equations"""
    m_dot=Q_peak/(dT*4.182)   
    rho=1000.
    data=(m_dot,nu,rho,p_p)
    f_dsolve,D_solve=fsolve(diameterequations,(0.1,1),args=data)
    return f_dsolve,D_solve

def getDinDiameter(D):
    """Get next biggest DIN diameter for diameter"""
    dintable=[0.006,0.008,0.01,0.015,0.02,0.025,0.032,0.04,0.05,0.065,0.08,0.09,0.1,0.125,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5,0.6,0.75,0.9]
    return dintable[np.searchsorted(dintable,[D-0.0001],side='right')[0]]

def getspecificPressureLoss(D,Q_peak,dT):
    """Return specific pressureloss for pipe segment"""
    m_dot=Q_peak/(dT*4.182)
    rho=1000.
    f_d=0.0055*(1+(2*10**4*(eps/D)+(1E06/(4*m_dot/(math.pi*rho*nu*D))))**(1/3))
    return f_d*(8*m_dot**2/(math.pi**2*D**5*rho))

def pressureLossSum(graph,path):
    """Return the total pressureloss for a path"""
    pressureLoss = 0
    for i in range(0,len(path)-1):
        edge = graph.edges[(path[i],path[i+1])]
        pressureLoss = pressureLoss + edge['attr_dict']['dP']
    return pressureLoss

def giveInsulation(D):
    """Return insulation thickness for given pipe diameter"""
    ins=np.array([[0.005,0.09],[0.010,0.09],[0.015,0.09],[0.02,0.110],[0.025,0.110],[0.032,0.125],[0.04,0.125],[0.05,0.140],
                [0.065,0.160],[0.080,0.180],[0.1,0.225],[0.125,0.25],[0.150,0.28],[0.2,0.355],[0.25,0.450],[0.3,0.5],[0.35,0.56],[0.4,0.63],[
                  0.45,0.67],[0.5,0.8],[0.6,0.9],[0.7,1.],[0.8,1.1],[0.9,1.2]])
    diameterindex=np.searchsorted(ins[:,0],[D-0.0001],side='right')
    return np.amax(ins[diameterindex,1])
    
def generatePipeFile(g):
    """Generate a csv file that describes the pipes"""
    file=pd.DataFrame(columns=['Beginning Node','Ending Node','Length [m]','Inner Diameter [m]', 'Insulation Thickness [m]', 'Peak Load [kW]', 'Total pressure loss [Pa/m]', 'U-value [W/mK]'])
    for i in list(g.edges):
        edge=g.edges[i]
        currentFrame=pd.DataFrame([[i[0],i[1],edge['weight'],edge['attr_dict']['D'],edge['attr_dict']['D_ins'],edge['attr_dict']['peakPower'],edge['attr_dict']['dP'],0.035]],columns=['Beginning Node','Ending Node','Length [m]','Inner Diameter [m]', 'Insulation Thickness [m]', 'Peak Load [kW]', 'Total pressure loss [Pa/m]', 'U-value [W/mK]'])
        file = file.append(currentFrame)
    file.to_csv('Pipe data.csv', index=False)
    return file

def generatePipeFileWithoutNames(g):
    """Generate a csv file that describes the pipes without the node names (for Modelica modeling)"""
    file=pd.DataFrame(columns=['Length [m]','Inner Diameter [m]', 'Insulation Thickness [m]', 'Peak Load [kW]', 'Total pressure loss [Pa/m]', 'U-value [W/mK]'])
    for i in list(g.edges):
        edge=g.edges[i]
        currentFrame=pd.DataFrame([[edge['weight'],edge['attr_dict']['D'],edge['attr_dict']['D_ins'],edge['attr_dict']['peakPower'],edge['attr_dict']['dP'],0.035]],columns=['Length [m]','Inner Diameter [m]', 'Insulation Thickness [m]', 'Peak Load [kW]', 'Total pressure loss [Pa/m]', 'U-value [W/mK]'])
        file = file.append(currentFrame)
    file.to_csv('Pipe data wo names.csv', index=False)
    return file
        
def generateNodeFile(g):
    """Generate a csv file that describes the nodes"""
    file=pd.DataFrame(columns=['Node','X-Position [m]','Y-Position [m]','Peak power [kW]'])
    for i in list(g.nodes):
        node=g.nodes[i]
        currentFrame=pd.DataFrame([[i,node['X'],node['Y'],node['peakPower']]],columns=['Node','X-Position [m]','Y-Position [m]','Peak power [kW]'])
        file = file.append(currentFrame)
    file.to_csv('Node data.csv', index=False)
    return file
    
    
 



    
    
    
    

    
    

    