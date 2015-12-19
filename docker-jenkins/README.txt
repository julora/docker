# run docker from inside docker container
docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker -p 8080:8080 julora/jenkins

#then in jenkins job run docker commands with sudo e.g.
sudo docker ps 
