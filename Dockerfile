FROM ubuntu:18.04
LABEL version="1.0.0"
COPY ./toySLAM
CMD python /toySLAM/test/test_slam.py