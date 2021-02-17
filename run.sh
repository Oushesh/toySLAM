#This contains a list of command to be run
#and executed automatically

#Pangolin installation
echo 'Starting installation on Windows'
#git clone https://github.com/uoip/pangolin.git
cd pangolin
mkdir build
cd build
cmake -G "MinGW Makefiles"..

#Custom design CMAKe
MinGW32-make -j8
#make -j8
cd ..

#TODO: Fix the start by testing glew
python setup.py install
echo 'Done!'

#TODO: write an installation blog of using cmake & cmake -G with
#MinGW MakeFiles and how to add the path on windows. Super important

#TODO: update the run.sh for

#TODO: optimimze_g2o how to install this: install Qt5 & Eigen on windows
      ### Steps are here: How to build the interface for our product ?
      ### Tesla uses Qt for interface.
      ### Install and work with Qt5 for Windows, https://www.qt.io/download-thank-you

#TODO TOREAD: installation of ExPose paper and how to make the things better.
       #https://ps.is.tuebingen.mpg.de/uploads_file/attachment/attachment/620/0983.pdf
       #https://ps.is.tuebingen.mpg.de/uploads_file/attachment/attachment/620/0983.pdf
       #https://openaccess.thecvf.com/content_CVPR_2020/papers/Xu_GHUM__GHUML_Generative_3D_Human_Shape_and_Articulated_Pose_CVPR_2020_paper.pdf

#TODO: Build an iOS App to render the face based on FLAME-fitting algorithm:
        #https://github.com/Rubikplayer/flame-fitting
