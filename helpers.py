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

# turns [[x,y]]-> [[x,y,1]]
def add_ones(x):
    if len(x.shape)==1:
        return np.concateate([x,np.array([1.0])],axis=0)
    else:
        return np.concateate([x,np.ones((x.shape[0],1))],axis=1)

'''
Fundamental Matrix: when the points lie on a plane
'''
def fundamentalToRt(F):

    U,diag,Vt = np.linalg.svd(F)
    ##If U is -ve reproject
    if np.linalg.det(U)<0:
        U*=-1.0
    if np.linalg.det(V)<0:
        V*=-1.0
    ##Rotation is the matrix multiplication
    R = np.dot(np.dot(U,diag),Vt)
    ##T: distance travelled positive definite
    t = U[:,2]
    ###TODO: Check for +ve definiteness of distance

    return np.linalg.inv(poseRt(R,t))

##Get normalised coordinates in pictures U,V, T[:,0:2]--> last column
def normalize(Kinv,pts):
    return np.dot(Kinv,add_ones(pts).T).T[:,0:2]

''''
Essential Matrix 3x3
__call__ vs __init__: https://stackoverflow.com/questions/9663562/what-is-the-difference-between-init-and-call
''''
class EssentialMatrixTransform(object):
    def __init__(self):
        self.params = np.eye(3)
    def __call__(self,coords):
        coords_homogeneous =
    return None
