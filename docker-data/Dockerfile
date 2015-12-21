FROM ubuntu
RUN apt-get update

# Data stores for jenkins
RUN groupadd -g 1000 jenkins && useradd -u 1000 -g jenkins -b /var/jenkins_home jenkins
RUN mkdir /var/jenkins_home
RUN chown jenkins /var/jenkins_home
USER jenkins
RUN mkdir /var/jenkins_home/workspace
VOLUME /var/jenkins_home/workspace
RUN mkdir /var/jenkins_home/jobs
VOLUME /var/jenkins_home/jobs
USER root

# Data stores for gitlab 
# config
RUN mkdir /etc/gitlab
VOLUME /etc/gitlab
# logs
RUN mkdir /var/log/gitlab
VOLUME /var/log/gitlab
# data
RUN mkdir /var/opt/gitlab
VOLUME /var/opt/gitlab

EXPOSE 22
ENTRYPOINT echo "DATA only Container"
