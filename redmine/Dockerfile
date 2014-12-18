FROM ubuntu

RUN apt-get update -q
RUN apt-get install -qy curl
RUN apt-get install -qy git
RUN apt-get install -qy imagemagick --fix-missing
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s stable
RUN /bin/bash -c -l 'source /etc/profile.d/rvm.sh'
RUN /bin/bash -c -l 'rvm requirements'
RUN /bin/bash -c -l 'rvm install 1.9.3-p448'
RUN /bin/bash -c -l 'rvm use 1.9.3-p448'
RUN /bin/bash -c -l 'gem install bundler --no-ri --no-rdoc'
RUN /bin/bash -c -l 'gem install rails --no-ri --no-rdoc'
RUN /bin/bash -c -l  'gem install rake'
RUN apt-get install -qy pkg-config
RUN apt-get install -qy libmysqlclient-dev
RUN apt-get install -qy libmagickwand-dev
RUN /bin/bash -c -l "gem install mysql2 -v '0.3.17'"
RUN /bin/bash -c -l "gem install railties -v '3.2.19'"
RUN /bin/bash -c -l  "gem install rmagick"
RUN /bin/bash -c -l  "gem install mime-types -v 1.25.1"
RUN /bin/bash -c -l  "gem install polyglot -v 0.3.5"
RUN /bin/bash -c -l 'bundle config path "$HOME/bundler"'
RUN git clone https://github.com/ricardobaumann/redmine
WORKDIR redmine
RUN /bin/bash -c -l 'bundle install'
RUN /bin/bash -c -l 'rake db:migrate'
RUN /bin/bash -c -l  'gem install treetop -v 1.4.15'
RUN /bin/bash -c -l  'gem install mail -v 2.5.4'
RUN /bin/bash -c -l  'gem install actionmailer -v 3.2.19'
RUN /bin/bash -c -l  'gem install arel -v 3.0.3'
RUN /bin/bash -c -l  'gem install tzinfo -v 0.3.42' 
RUN /bin/bash -c -l  'gem install activerecord -v 3.2.19'
RUN /bin/bash -c -l  'gem install activeresource -v 3.2.19'
RUN /bin/bash -c -l  'gem install mini_portile -v 0.6.1'
RUN /bin/bash -c -l  'gem install nokogiri -v 1.6.5'
RUN /bin/bash -c -l  'gem install xpath -v 2.0.0'
RUN /bin/bash -c -l  'gem install capybara -v 2.1.0'
RUN /bin/bash -c -l  'gem install ffi -v 1.9.6'
RUN /bin/bash -c -l  'gem install childprocess -v 0.5.5'
RUN /bin/bash -c -l  'gem install coderay -v 1.1.0'
RUN /bin/bash -c -l  'gem install rdoc -v 3.12.2'
RUN /bin/bash -c -l  'gem install jquery-rails -v 2.0.3'
RUN /bin/bash -c -l  'gem install metaclass -v 0.0.4'
RUN /bin/bash -c -l  'gem install mocha -v 1.0.0'
RUN /bin/bash -c -l  'gem install net-ldap -v 0.3.1'
RUN /bin/bash -c -l  'gem install ruby-openid -v 2.3.0'
RUN /bin/bash -c -l  'gem install rack-openid -v 1.4.2'
RUN /bin/bash -c -l  'gem install rails -v 3.2.19'
RUN /bin/bash -c -l  'gem install redcarpet -v 2.3.0'
RUN /bin/bash -c -l  'gem install request_store -v 1.0.5'
RUN /bin/bash -c -l  'gem install rubyzip -v 1.1.6'
RUN /bin/bash -c -l  'gem install websocket -v 1.2.1'
RUN /bin/bash -c -l  'gem install selenium-webdriver -v 2.44.0'
RUN /bin/bash -c -l  'gem install shoulda-context -v 1.0.2'
RUN /bin/bash -c -l  'gem install shoulda-matchers -v 1.4.1'
RUN /bin/bash -c -l  'gem install shoulda -v 3.3.2'
RUN /bin/bash -c -l  'gem install sqlite3 -v 1.3.10'
RUN /bin/bash -c -l  'gem install yard -v 0.8.7.6'
EXPOSE 80
CMD /bin/bash -c -l 'source /etc/profile.d/rvm.sh && bundle install && git pull origin master && HOME=/redmine rails server -p 80'
