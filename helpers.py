'''
The main role of helpers

1. Essential Matrix
2. Fundamental Matrix
'''

import os
import numpy as np


#Hamming Distance --> 2 string, the number of bit positions in which 2 bits are different

def hamming(a,b):
    return dist


#Triangulate between 2 poses
'''
Find the intersection of the 2 poses to get the observational point
'''
def triangulate(pose1,pose2,):
    return ret




#Convert R,t to Homogeneous Coordinte System
'''
H = [R|t]
'''
def poseRt(R,t):
    homogeneous = np.eye(4)
    homogeneous[:3,:3] = R
    homogeneous[:3,3]  = t
    return homogeneous


'''
Fundamental Matrix: when the points lie on a plane
'''


''''
Essential Matrix 3x3 
''''

class EssentialMatrixTransform():
