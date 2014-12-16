FROM ubuntu:14.04
MAINTAINER Ricardo Baumann <ricardo.luis.baumann@gmail.com>
ADD https://raw.githubusercontent.com/ricardobaumann/docker_scripts/master/setup.sh setup.sh
RUN ls
RUN chmod 777 setup.sh
RUN cat setup.sh
RUN ./setup.sh
EXPOSE 3000



