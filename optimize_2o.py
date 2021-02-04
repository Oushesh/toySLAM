import g2o
import numpy as np
from helpers import poseRt

'''
Optimisation based on g2o python binding library

We use Levenberg Marquardt Algorithm as solver.
We feed solver like the following:
solver(reporjection_error)

reporjection_error = frame.pose - inverse(keypoints): inverse(keypoints)--> coordinates in 3D
'''

def optimize(frames, points, local_window, fix_points,verbose=false,rounds=50):
    #TODO: to check why we need this
    #if local_window is None:
    
