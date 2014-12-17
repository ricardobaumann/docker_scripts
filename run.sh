#!/bin/bash
source /usr/local/rvm/scripts/rvm
rvm use 1.9.3
cd inventory_on_rails
rails s &