### ToySLAM inspired by George Hotz
      I am implementing this for my company project -- see_through_future

##### Steps for the SLAM
      1. Input Image Sequence.
      2. Feature Detector (ORB, BFF Matcher)
      3. Matching Criteria (Error Definition)--> Distance Measurement (hamming distance, mahalanobis)
      4. Error Optimiser, (Bundle Adjustment)
      5. Loop Closure.
      6.


##### Directory Explanation
      data -- storing the test videos


##### Libraries Used:
      * cv2 for feature extraction
      * pangolin for 3-D Display, python wrapper
        around pangolin
      * g2opy for optimization

##### Walkthrough
      *
      *
      *

###### CI/CD
       * Use github CI/CD pipline --> .yml
