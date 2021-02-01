'''
Inspired toySLAM from George Hotz.
Frame is responbile for:
1)Extract Features: between Frames:
2) matcher based on orb distance or Hamming distance.
'''

import os
import cv2
import numpy as np

from constants import *

from skimage.measure import ransac
from helpers import *

'''
keypoints: kps
descriptors: des
'''

def extractFeatures(img):
    orb  = cv2.ORB_create()
    #detection
    pts  = cv2.goodFeaturesToTrack(np.mean(img, axis=2).astype(np.uint8), 3000, qualityLevel=0.01, minDistance=7)

    # extraction
     kps = [cv2.KeyPoint(x=f[0][0], y=f[0][1], _size=20) for f in pts]
     kps, des = orb.compute(img,kps)

     #Kps is a list of (x,y) --> kp.pt is from openCV
     return np.array([kp.pt[0],kp.pt[1]] for kp in kps), des

'''
Match the Frames based on distance between
f1 & f2.
each keypoint of the first image is matched
with a number of keypoints from the second image.
We keep the 2 best matches for each keypoint
(best matches = the ones with the smallest
distance measurement).
Lowe's test checks that the two distances are
sufficiently different. If they are not,
then the keypoint is eliminated and
will not be used for further calculations.
'''

def match_frames(f1,f2):
    bf = cv2.BFMatcher(cv.NORM_HAMMING)
    matches = bf.knnMatch(f1.des,f2.des)

    # Lowe's ratio test
    ret = []
    idx1, idx2 = [],[]
    # set to find duplicates
    idx1s, idx2s = set(), set()

    for m.n in matches:
        if m.distance < 0.75*n.distance:
            p1 = f1.kps[m.queryIdx]
            p2 = f2.kps[m.trainIdx]


            #be within orb distance 32
            if m.distance < 32:
                #keep around indices
                #TODO:  Check matchiing keypoints complexity

                if m.queryIdx not in idx1s and m.trainIdx not in idx2s:
                    '''
                    add to the list idx1, idx2 and also to the set datastructure
                    set datastructure for finding the overlap candidates.
                    '''
                    idx1.append(m.queryIdx)
                    idx2.append(m.trainIdx)
                    idx1s.add(m.queryIdx)
                    idx2s.add(m.trainIdx)
                    ret.append((p1,p2))


    # Check for duplicates. Whats the best way?
    assert(len(set(idx1)) == len(idx1))
    assert(len(set(idx2))==len(idx2))

    #Perform model ransac
