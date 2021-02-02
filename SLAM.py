###This is the main function
import os
import sys


'''
TODO: append the path for linux built
'''
import time
import cv2
from display import Display2D, Display3D
from frame import Frame, match_frames
import numpy as np

import g20 ###Optimisation tool
from pointmap import Map, Point
from helpers import triangulate, add_ones

#TODO: check the class pointmap

'''
W: window width --> pangolin 3D viewer
H: window height --> pangolin 3D Viewer
'''
class SLAM():
    def __init__(self,W,H,K):
        self.mapp = Map()     #Check the map class

        #parameters for windows
        self.W, self.H = W,H
        self.K = K

    def process_frame(self,img, pose=None,verts=None):
        start_time = time.time() #starting the timer
        assert img.shape[0:2] == (self.H, self.W)
        frame = Frame(self.mapp, img, self.K, verts=verts)

        #Don't do anything until we have 2 or 3 frames in
        if frame.id == 0:
            return

        f1 = self.mapp.frames[-1]
        f2 = self.mapp.frames[-2]

        idx1, idx2, Rt = match_frames(f1,f2)

        #add new observations if the point is already observed in the prvious frame
        # TODO: consider tradeoff doing this before/after seearch by projection

        ###I am not sure why do we need this?
        for i,idx in enumerate(idx2):
            if f2.pts[idx] is not None and f1.pts[idx[i]] is None:
                f2.pts[idx].add_observation(f1,idx1[i])

            #For Fundamental Matrix we need 4 pair points --> 4 Frames
            if frame.id < 5 or True:
                #H*f1.pose = f2.pose
                #Rt computed here is inv(H)
                f1.pose = np.dot(Rt,f2.pose)

            else:
                '''
                Kinematic model
                f2.pose -->
                '''
                velocity = np.dot(f2.pose, np.linalg.inv(self.mapp.frames[-3].pose))
                f.pose = np.dot(velocity,f2.pose)

            #pose potimisation
            #TODO: call g2o for optimisation

            '''
            Use g2o optiiser to # OPTIMIZE: the pose with Bundle Adjustment
            else use ground truth
            '''
            if pose is None:
                print ("the pose before optiisation is:  %f" %f1.pose)
                pose_opt = self.mapp.optimimze() ###optimise using g2o

            else:
                pose =
