#!/bin/bash
apt-get install -y git
apt-get install -y libxml2
apt-get install -y libxslt
apt-get install -y curl
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --rails
source /usr/local/rvm/scripts/rvm
rvm install 1.9.3
rvm use 1.9.3
gem install rake
gem install bundler
gem install nokogiri -v '1.6.5'
git clone https://github.com/ricardobaumann/redmine
cd redmine
bundle install
rake db:migrate
rails s &

