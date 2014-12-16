#!/bin/bash
apt-get update && apt-get install -y ruby-full
apt-get update && apt-get install -y git
gem install bundler
gem install rails
git clone https://github.com/ricardobaumann/redmine
cd redmine
bundle install
rake db:migrate
rails s &

