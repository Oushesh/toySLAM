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
