FROM ubuntu
USER root
RUN apt-get update 
# install python and pip
RUN apt-get install -y python python-pip 
# install xvfb frame buffer
RUN apt-get install -y xvfb dbus-x11
RUN apt-get upgrade -y xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic
# install firefox
RUN apt-get install -y firefox
# install robot framework
RUN pip install robotframework robotframework-selenium2library
# install robot-xvfb
# RUN pip install robotframework-xvfb
# install libav-tools for video-capture
RUN apt-get install -y libav-tools 
RUN apt-get install -y libavcodec-extra-54 libavdevice-extra-53 libavformat-extra-54 libavutil-extra-52 libswscale-extra-2
# define environment variables
# ENV DISPLAY ":1"
# create a new volume
RUN mkdir /robot/
VOLUME /robot/
# copy test files
COPY robot/* /robot/
RUN mkdir /scripts/
COPY robot.sh /scripts/
CMD /scripts/robot.sh /robot
