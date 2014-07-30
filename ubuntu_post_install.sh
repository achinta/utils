#install google chrome from command line 
#Follow steps from http://www.liberiangeek.net/2011/12/install-google-chrome-using-apt-get-in-ubuntu-11-10-oneiric-ocelot/

#sudo apt-get update

#utils
sudo apt-get install curl

#version control
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get install subversion git

#media player
sudo apt-get install vlc

#google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get install google-chrome-stable

#Ruby version manager
curl -sSL https://get.rvm.io | bash -s stable








