#!/bin/bash
#Install the dependencies
sudo apt-get update
sudo apt-get install ffmpeg
sudo apt-get install python3-pip
sudo pip3 install numpy jupyter

#Download the video
cd resources
wget -O person-bicycle-car-detection.mp4 https://github.com/intel-iot-devkit/sample-videos/raw/master/person-bicycle-car-detection.mp4

#Download the model
cd /opt/intel/openvino/deployment_tools/tools/model_downloader
sudo ./downloader.py --name person-vehicle-bike-detection-crossroad-0078
