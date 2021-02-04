'''
Test module for a warping function
'''

import numpy as np
import cv2
from collections import deque

class Transformation:
    def warp(src,T):
        '''
        src: source image
        T  : Transformation
        return: warped image
        '''
        #Convert all to numpy First
        src = np.array(src)
        T   = np.array(T)
        assert (isInstance(src.size,list)) #make sure the image is min. 2 Dimensional

        #Check that T is a 3x3 Matrix
        assert (T.size[0]==3)
        assert (T.size[1]==3)
        w   = src.size[0]
        h   = src.size[1]

        #Build a list/set of (x,y)s
        coord = deque()
        transformed = deque()

        #For multiplication to occur: [x,y,1]
        for x in range(w):
            for y in range(h):
                coord.deque([x,y,1])
                des = np.linalg.dot([x,y,1],T)
                transformed.append(des)

                #At this moment we have the corresponding (x,y)-->(x_trans,y_trans)

        #We have here a list of tuples: [(x1,y1),(x2,y2),(x3,y3),....(xn,yn)]
        #query the colours from the



        #Think how you do in Mathematics:
        (X*T = transformed)
        for i in range(w):
            for j in range(h):
                warped_img

        #To represent the output we take the


        warped_img = np.linalg.dot(src,T)

        #To write the warping I would need
        return warped_img

if __name__ == "__main__":


#TODO: complete this code
