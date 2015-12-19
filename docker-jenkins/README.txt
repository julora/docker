run docker from inside docker container
docker run -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/bin/docker -ti ubuntu
