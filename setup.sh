#!/bin/bash
apt-get update && apt-get install ruby-full
apt-get update && apt-get install git
git clone https://github.com/ricardobaumann/redmine
cd redmine
#bundle install
#rake db:migrate
#rails s &

