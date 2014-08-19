###################### Begin of vim install and config ############################
sudo apt-get install vim-gtk

#delete .vimrc symbolic link
if [ -L ~/.vimrc ]; then
  echo "symbolic link to .vimrc exists. Deleting it"
  unlink ~/.vimrc
fi

#if .vim directory exists, delete it
if [ -d ~/.vim ]; then
    echo ".vim directory exists. Deleting it"
    rm -rf ~/.vim 
fi

# create the .vim from the git
git clone https://github.com/achinta/dotvim.git ~/.vim
echo "Clone https://github.com/achinta/dotvim.git into ~/.vim"

#from http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
#Create symbolic links so that ~/.vimrc points to the ~/.vim/vimrc file:
ln -s ~/.vim/.vimrc ~/.vimrc

#install pathogen - from https://github.com/tpope/vim-pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


#install the plugins
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/vim-scripts/dbext.vim
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/actionshrimp/vim-xpath.git
git clone https://github.com/tpope/vim-rails.git
git clone https://github.com/tpope/vim-bundler.git
git clone https://github.com/kshenoy/vim-signature.git #to handle marks
git clone https://github.com/tpope/vim-ragtag.git 
git clone https://github.com/Townk/vim-autoclose.git

###################### End of vim install and config ############################
