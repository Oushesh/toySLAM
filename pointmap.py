'''
This module contains the definition of the class Point
'''

from helpers import poseRt, hamming_distance, add_ones
from constants import CULLING_ERR_THRES
from frame import Frame

import time
import numpy as np
import g2o
import json

from  optimimze_g2o import optimize

LOCAL_WINDOW = 20

class Point():
    def 


'''
Map class contains:
1. frames
2. points
3. max_frame
4. max_point

serializing the data into json is bootyfull!!
'''
class Map():
    def __init__(self):
        self.frames = []
        self.points = []
        self.max_point = 0
        self.max_frame = 0

    def serialize(self):
        ret = {}
        return json.dumps(ret)

    def deserialize(self,s):
        return None

    #TODO: add a method to add points, add frames, optimize like g2o

    def add_point(self,point):
        return ret

    def add_frame(slef,frame):
        return ret


    #**** Optimizer ****

    def optimize(self,local_window=LOCAL_WINDOW, fix_points=False, verbose=False, rounds=50):
        err = optimize(self.frames, self.points,)
