#!/bin/sh

machine_type="`cat /etc/hostname`"

filename="/media/forlinx/video/1080p_60fps_h264.mp4"

echo ""
echo "Run H.264 Decoding on VPU"
echo ""

gst-launch-1.0 filesrc location=$filename  typefind=true ! \
	video/quicktime ! aiurdemux ! queue max-size-time=0 ! vpudec ! imxvideoconvert_g2d ! \
	video/x-raw, format=RGB16, width=1024, height=600 ! waylandsink



