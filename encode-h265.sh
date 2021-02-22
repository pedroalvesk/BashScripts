#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Usage: $0 video-file"
	exit 1
fi

ffmpeg -i "${1}" -c:a copy -c:v libx265 video-h265.mp4
