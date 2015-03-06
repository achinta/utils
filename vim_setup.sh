###################### Begin of vim install and config ############################
sudo apt-get -y install python-lxml vim-gtk curl

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
git clone --depth 1 https://github.com/scrooloose/nerdtree.git
git clone --depth 1  https://github.com/scrooloose/nerdcommenter.git
git clone --depth 1  https://github.com/vim-scripts/dbext.vim
git clone --depth 1  https://github.com/tpope/vim-fugitive.git
git clone --depth 1  https://github.com/ervandew/supertab.git
git clone --depth 1  https://github.com/actionshrimp/vim-xpath.git
git clone --depth 1  https://github.com/tpope/vim-rails.git
git clone --depth 1  https://github.com/tpope/vim-bundler.git
git clone --depth 1  https://github.com/kshenoy/vim-signature.git #to handle marks
git clone --depth 1  https://github.com/tpope/vim-ragtag.git 
git clone --depth 1  https://github.com/Townk/vim-autoclose.git
git clone --depth 1  https://github.com/honza/vim-snippets.git
git clone --depth 1  https://github.com/plasticboy/vim-markdown.git
###################### End of vim install and config ############################
