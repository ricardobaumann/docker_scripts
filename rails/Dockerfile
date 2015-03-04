FROM ubuntu

RUN apt-get update -q
RUN apt-get install -qy curl
RUN apt-get install -qy git
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s stable
RUN /bin/bash -c -l 'source /etc/profile.d/rvm.sh'
RUN /bin/bash -c -l 'rvm requirements'
RUN /bin/bash -c -l 'rvm install 1.9.3-p448'
RUN /bin/bash -c -l 'rvm use 1.9.3-p448'
RUN /bin/bash -c -l 'gem install bundler --no-ri --no-rdoc'
RUN /bin/bash -c -l 'gem install rails --no-ri --no-rdoc'

RUN /bin/bash -c -l 'bundle config path "$HOME/bundler"'

RUN git clone https://github.com/ricardobaumann/sales_on_rails
WORKDIR sales_on_rails
RUN /bin/bash -c -l 'bundle install'
RUN /bin/bash -c -l 'rake db:migrate'

EXPOSE 80
CMD /bin/bash -c -l 'source /etc/profile.d/rvm.sh && bundle install && git pull origin master && HOME=/redmine rails server -p 80'
