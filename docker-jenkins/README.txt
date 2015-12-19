# run docker from inside docker container
docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker -v /jenkins/workspace:/var/jenkins_home/workspace -p 8080:8080 julora/jenkins

#then in jenkins job run docker commands with sudo e.g.
sudo docker ps 

#configure jenkins job with
# git plugin
# add additional behaviors: clean before checkout
sudo docker run -v /jenkins/workspace/robottest:/robot julora/robot
