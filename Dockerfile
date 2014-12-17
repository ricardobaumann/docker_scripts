FROM ubuntu:14.10

RUN apt-get update -q
RUN apt-get install -qy curl
RUN apt-get install -qy git

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s stable
RUN /bin/bash -c -l 'rvm requirements'
RUN /bin/bash -c -l 'rvm install 1.9.3-p551'
RUN /bin/bash -c -l 'rvm use 1.9.3-p551'
RUN /bin/bash -c -l 'gem install bundler --no-ri --no-rdoc'

RUN /bin/bash -c -l 'bundle config path "$HOME/bundler"'

RUN git clone https://github.com/ricardobaumann/inventory_on_rails
WORKDIR inventory_on_rails
RUN /bin/bash -c -l 'bundle install'

EXPOSE 80
CMD /bin/bash -c -l 'rails s -p 80'