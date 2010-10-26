#! /bin/sh

sudo apt-get install ruby ri rdoc ruby1.8-dev irb1.8 rdoc1.8 ri1.8 ruby1.8 irb libopenssl-ruby libopenssl-ruby1.8
cd
wget http://production.cf.rubygems.org/rubygems/rubygems-1.3.7.tgz
tar xvzf rubygems-1.3.7.tgz
cd rubygems-1.3.7/
sudo ruby setup.rb
sudo ln -s /usr/bin/gem1.8 /usr/local/bin/gem
sudo gem install chef --no-ri --no-rdoc

