#install google chrome from command line 
#Follow steps from http://www.liberiangeek.net/2011/12/install-google-chrome-using-apt-get-in-ubuntu-11-10-oneiric-ocelot/

#sudo apt-get update

#utils
sudo apt-get install curl python-software-properties

#version control
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get install subversion git

#media player
sudo apt-get install vlc

#google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get install google-chrome-stable

######   Ruby 
#environment manager (from https://github.com/sstephenson/rbenv)
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone git://github.com/carsomyr/rbenv-bundler.git ~/.rbenv/plugins/bundler
#list of ruby versions available for installation : rbenv install -l
#install a ruby version : rbenv install 2.1.2
#set version for use : rbenv global 2.1.2
#echo 'export RBENV_VERSION="2.1.2"' >> ~/.bashrc
#bundler
sudo gem install bundler --no-ri --no-rdoc


#Node Js
sudo apt-add-repository -y ppa:chris-lea/node.js







