#!/bin/bash
apt-get install -y git
apt-get install -y libxml2
apt-get install -y libxslt
apt-get install curl
curl -sSL https://get.rvm.io | bash -s stable --rails
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

