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
    if local_window is None:
        local_frames = frames
    else:
        local_frames  = frames[-local_window:]


    #Create g2o # OPTIMIZEr
    #What is the SparseOptimizer()?
    #Cholesky Decomposition or is it: Sparse variant
    #TODO: Levenberg-Marquardt Algorithm.

    opt = g2o.SparseOptimizer()
    solver = g2o.BlockSolverSE3(g2o.LinearSolverCSparseSE3())
    solver = g2o.OptimizationAlgorithmLevenberg(solver)
    opt.set_algorithm(solver)

    #add normalized camera
    cam  = g2o.CameraParameters(1.0,(0.0,0.0),0)
    cam.set_id(0)
    opt.add_parameter(cam)


    #Really good kernel
    robust_kernel = g2o.RobustKernelHuber(np.sqrt(5.991))
    graph_frames, graph_points = {}, {}

    #add frames to graph
    for f in (local_frames if fix_points else frames):
        pose = f.pose
        #Homogenous Function: 3x3 R Matrix, pose
        se3  = g2o.SE3Quat(pose[0:3, 0:3], pose[0:3,3])
        v_se3 = g2o.VertexSE3Expmap()
        v_se3.set_estimate(se3)


    v_se3.set_id(f.id*2)
