#! /bin/bash

export DISPLAY=":1"
Xvfb :1 -screen 0 1280x1024x24 &
cd /robot/
avconv -f x11grab -r 25 -s 1280x1024 -i :1.0 -vcodec libx264 selenium.flv &
python -m robot.run .
sleep 5
