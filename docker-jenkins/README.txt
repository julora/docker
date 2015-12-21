# run docker from inside docker container
docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker -v /jenkins/workspace:/var/jenkins_home/workspace -p 8080:8080 julora/jenkins

# run from outside container
docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v /usr/local/bin/docker:/usr/bin/docker -v /jenkins/workspace:/var/jenkins_home/workspace -p 8080:8080 julora/jenkins

# jenkins needs to write in workspace folder. So if workspace folder is mapped to docker host user rights should be changed
# run on docker host machine
sudo chmod 777 -R /jenkins/workspace/

#then in jenkins job run docker commands with sudo e.g.
sudo docker ps 

#configure jenkins job with
# git plugin
# add additional behaviors: clean before checkout
sudo docker run -v /jenkins/workspace/robottest:/robot julora/robot

#create jenkins jobs
curl -X POST "http://localhost:8080/createItem?name=newjobname" --data-binary "@newconfig.xml" -H "Content-Type: text/xml"
