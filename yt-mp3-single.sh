#!/bin/bash


if [ $# -eq 0 ]; then
	echo "Usage: $0 video-url [URL ...]"
	exit 1
fi

youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" "$@"
