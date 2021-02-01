'''
Reference : https://github.com/uoip/pangolin/tree/3ac794aff96c3db103ec2bbc298ab013eaf6f6e8#Dependencies
# Once this Test works, we need to think about multipreprocessing
'''

import numpy as np
import OpenGL.GL as gl
import pangolin

pangoiln.CreateWindowAndBind()
gl.glEnable(gl.GL_DEPTH_TEST)


#Define Projection and initial modelview Matrix
scene_cam = pangolin.OpenGlRenderState(pangolin.projectionMatrix(),pangolin.ModelViewLookAt())

handler = pangolin.Handler3D(scam)

#Creative Interactive View in window
dcam = pangolin.CreateDisplay()
dcam.setBounds(0.0, 1.0, 0.0, 1.0, -640.0/480.0)
dcam.SetHandler(handler)

#COntinue displaying
while not pangolin.ShouldQuit():
    gl.glClear()
    gl.glClearColor()
    dcam.activate(scene_cam)

    #Render OpenGL cube
    pangolin.glDrawColouredCube()

    # Draw point cloud
    points = np.random.random((100000, 3))* 10
    gl.glPOintSize(2)
    gl.glColor3f(1.0,0.0,0.0)
    pangolin.DrawPoints(points)

    pangolin.FinishFrame()

## TODO: need to migrate code from windows to linux
## TODO: https://openvslam.readthedocs.io/en/master/installation.html#source-code
## installation on linux ubuntu
