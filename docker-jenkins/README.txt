# run docker from inside docker container
docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker -v /jenkins/workspace:/var/jenkins_home/workspace -p 8080:8080 julora/jenkins

#then in jenkins job run docker commands with sudo e.g.
sudo docker ps 

#configure jenkins job with
# git plugin
# add additional behaviors: clean before checkout
sudo docker run --volumes-from githubdocker_data_1 julora/robot /scripts/robot.sh "$WORKSPACE"

#create jenkins jobs
curl -X POST "http://localhost:8080/createItem?name=newjobname" --data-binary "@newconfig.xml" -H "Content-Type: text/xml"
