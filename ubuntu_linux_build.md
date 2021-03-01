## ubuntu_linux_build.mdmade until OpenGL installation
   * made until OpenGL installation
   * OpenGL installation from here: http://www.codebind.com/linux-tutorials/install-opengl-ubuntu-linux/

   * g2opy:
   	https://github.com/uoip/g2opy

   	* Qt5:
   		* sudo apt-get install build-essential

		* sudo apt-get install qtcreator

		* sudo apt-get install qt5-default

	* renderer: pip install renderer
	* cv2 install


### ubuntu_usage
    * export REVERSE=1   # Hack for reverse video
    * export F=500       # Focal length (in px)

      ./slam.py <video.mp4>

      # good example
      F=525 ./slam.py videos/test_freiburgxyz525.mp4

      # ground truth
      F=525 ./slam.py videos/test_freiburgrpy525.mp4 videos/test_freiburgrpy525.npz

      # kitti example
      REVERSE=1 F=984 ./slam.py videos/test_kitti984_reverse.mp4

      # extract ground truth
      tools/parse_ground_truth.py videos/groundtruth/freiburgrpy.txt videos/test_freiburgrpy525.npz 
