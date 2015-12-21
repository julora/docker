FROM ubuntu
RUN apt-get update

# Data stores for jenkins
RUN groupadd -g 1000 jenkins && useradd -u 1000 -g jenkins -b /var/jenkins_home -s /bin/bash jenkins
RUN mkdir /var/jenkins_home
RUN chown jenkins /var/jenkins_home
USER jenkins
RUN mkdir /var/jenkins_home/workspace
VOLUME /var/jenkins_home/workspace
RUN mkdir /var/jenkins_home/jobs
VOLUME /var/jenkins_home/jobs
USER root

EXPOSE 22
CMD echo "DATA only Container"
