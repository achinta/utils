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
