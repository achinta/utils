#install google chrome from command line 
#Follow steps from http://www.liberiangeek.net/2011/12/install-google-chrome-using-apt-get-in-ubuntu-11-10-oneiric-ocelot/

#sudo apt-get update

#version control
sudo apt-get install subversion git

#media player
sudo apt-get install vlc

sudo apt-get install curl
###################### Begin of vim install and config ############################
sudo apt-get install vim-gtk

# create the .vim from the git
git clone https://github.com/achinta/dotvim.git ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc

#from http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
#mv ~/.vimrc ~/.vim/vimrc
#Create symbolic links so that ~/.vimrc points to the ~/.vim/vimrc file:


#install pathogen - from https://github.com/tpope/vim-pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim


#install the plugins
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/vim-scripts/dbext.vim

###################### End of vim install and config ############################







