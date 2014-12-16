#!/bin/bash
apt-get update && apt-get install -y ruby-full
apt-get install -y git
apt-get install -y libxml2
apt-get install -y libxslt
gem install rake
gem install bundler
gem install nokogiri -- --use-system-libraries
git clone https://github.com/ricardobaumann/redmine
cd redmine
bundle install
rake db:migrate
rails s &

