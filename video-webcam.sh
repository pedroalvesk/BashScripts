#!/bin/bash

#	Create webcam
# sudo modprobe v4l2loopback card_label="Fake Webcam" exclusive_caps=1
#

#	Link Video Stream To Webcam
sudo ffmpeg -stream_loop -1 -re -i $1 -vcodec rawvideo -threads 0 -f v4l2 /dev/video2


#	Remove fake webcam
#sudo modprobe --remove v4l2loopback