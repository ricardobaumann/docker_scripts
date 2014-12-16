#!/bin/bash
apt-get update && apt-get install -y ruby-full
apt-get update && apt-get install -y git
gem install rake
gem install bundler
git clone https://github.com/ricardobaumann/redmine
cd redmine
bundle install
rake db:migrate
rails s &

