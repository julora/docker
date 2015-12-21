#! /bin/bash

# create new display with width=1280 and height=1024 (run in background)
export DISPLAY=":1"
Xvfb :1 -screen 0 1280x1024x24 &

# goto work directory
cd $1

# run video grabber, save pid of video grab command (run in background)
avconv -y -f x11grab -r 25 -s 1280x1024 -i :1.0 selenium.mp4 &

# run robot framework automating stuff
python -m robot.run .
# wait at end of automation to capture automation result
sleep 5

# kill video grabber, to finish captured video file (sleep to finish writing video file)
kill $!
sleep 3

# embed video in robot - log
# html tag to embed video content:
# <video controls preload=metadata width=640 height=480>
#   <source src="selenium.mp4" type="video/mp4">
#   <img src="...">Error cannot display video! please update browser!
# </video>
sed 's$<h2>Test Execution Log</h2>$<h2>Test Execution Log</h2><br/><video controls preload=metadata width=640 height=480><source src="selenium.mp4" type="video/mp4"><img src="...">Error cannot display video! please update browser!</video>$' log.html > log-video.html
