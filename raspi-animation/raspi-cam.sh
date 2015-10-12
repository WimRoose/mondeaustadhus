#!/bin/bash

# receiver: vlc http://X.X.X.X:12345

# andere opties: raspivid -o - -t 0 -hf -w 640 -h 480 -fps 10 | cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8160}' :demux=h264
# python?
# tee? https://en.wikipedia.org/wiki/Tee_(command)

cvlc v4l2:///dev/video0 --v4l2-width 640 --v4l2-height 480 --v4l2-chroma h264 --sout '#standard{access=http,mux=ts,dst=0.0.0.12345}'
