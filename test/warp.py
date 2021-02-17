'''
Test module for a warping function
'''

import numpy as np
import cv2
from collections import deque

class Transformation:
    def __init__(self,src,T):
        self.src = src
        self.T   = T
    def warp(self,src,T):
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
        pairs = deque()
        #For multiplication to occur: [x,y,1]
        for x in range(w):
            for y in range(h):
                des = np.linalg.dot([x,y,1],T)
                pairs.append([x,y,1],[des])
                #At this moment we have the corresponding (x,y)-->(x_trans,y_trans)

        '''
        Build a warped image plane
        1. Query new max-width
        2. Query new max-height
        3. initialise with 0s
        4. Fill the right colours:
            corresponding element.
        '''
        warped_w = max([i[0] for i in transformed])
        warped_h = max([i[1] for i in transformed])

        '''
        init 0s
        '''

        '''
        a = np.array((1,2,3))
        b = np.array((2,3,4))
        np.dstack((a,b))
        array([[[1, 2],
            [2, 3],
            [3, 4]]])
        '''

        warped_img = [[0 for x in warped_w] for y in warped_h]
        for [x,y,1],[x_trans,y_trans,1] in pairs:
            #Query the pixel value
            pix = src[x][y]
            #PUt this into the new warped_img
            pix = warped_img[x_trans][y_trans]
        #At this moment we have updated the pixel values into the
        #new image frame
        return warped_img

'''
Conceptionally, the code is really good.
'''

if __name__ == "__main__":
    #All data are to be compliant to numpy array category
    #HOmography Transformation Matrix, T
    dir = "*.jpg"
    src = np.array(cv2.imread(dir))
    Homography = np.array()
