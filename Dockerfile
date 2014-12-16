FROM ubuntu:14.04
MAINTAINER Ricardo Baumann <ricardo.luis.baumann@gmail.com>
ADD https://github.com/ricardobaumann/docker_scripts/blob/master/setup.sh setup.sh
RUN ls
RUN chmod 777 setup.sh
RUN ./setup.sh
EXPOSE 3000



