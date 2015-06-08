FROM ubuntu

RUN apt-get update -q
RUN apt-get install -qy curl
RUN apt-get install -qy git
RUN apt-get install -qy imagemagick --fix-missing
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s stable
RUN /bin/bash -c -l 'source /etc/profile.d/rvm.sh'
RUN /bin/bash -c -l 'rvm requirements'
RUN /bin/bash -c -l 'rvm install 1.9.3'
RUN /bin/bash -c -l 'rvm use 1.9.3'
RUN /bin/bash -c -l 'gem install bundler --no-ri --no-rdoc'
RUN /bin/bash -c -l 'gem install rails --no-ri --no-rdoc'
RUN /bin/bash -c -l  'gem install rake'
RUN apt-get install -qy pkg-config
RUN apt-get install -qy libmysqlclient-dev
RUN apt-get install -qy libmagickwand-dev
RUN /bin/bash -c -l 'bundle config path "$HOME/bundler"'
RUN git clone https://github.com/ricardobaumann/redmine
WORKDIR redmine
RUN /bin/bash -c -l 'bundle install --path vendor/cache'
RUN /bin/bash -c -l 'rake db:migrate'
EXPOSE 3000
CMD /bin/bash -c -l 'source /etc/profile.d/rvm.sh && rvm use 1.9.3 && git pull origin master && HOME=/redmine bundle update && HOME=/redmine bundle install --path vendor/cache && HOME=/redmine rake db:migrate && HOME=/redmine rails s'
