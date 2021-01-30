#This contains a list of command to be run
#and executed automatically

#Pangolin installation
echo 'Starting installation on Windows'
#git clone https://github.com/uoip/pangolin.git
cd pangolin
mkdir build
cd build
cmake ..
make -j8
cd ..
python setup.py install
echo 'Done!'


#TODO: write an installation blog of using cmake & cmake -G with
#MinGW MakeFiles and how to add the path on windows. Super important

#TODO: update the run.sh for 
