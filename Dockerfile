FROM ubuntu:14.04
MAINTAINER Ricardo Baumann <ricardo.luis.baumann@gmail.com>
ADD /home/ricardo/github_ricardo/docker_scripts/setup.sh /
RUN setup.sh
EXPOSE 3000



