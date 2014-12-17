FROM ubuntu:14.04
MAINTAINER Ricardo Baumann <ricardo.luis.baumann@gmail.com>
ADD https://raw.githubusercontent.com/ricardobaumann/docker_scripts/master/setup.sh setup.sh
ADD https://raw.githubusercontent.com/ricardobaumann/docker_scripts/master/run.sh run.sh
RUN ls
RUN chmod 777 *.sh
RUN cat setup.sh
RUN cat run.sh
RUN ./setup.sh
CMD ["./run.sh"]
EXPOSE 3000



