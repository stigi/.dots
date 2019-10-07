#!/bin/sh

# info 'installing vim plugins'
# If on Mac, check for Homebrew
if test ! -d ~/.vim/autoload && \
   test ! -d ~/.vim/bundle
then
  echo "  Installing vim plugins for you."
  mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
  curl -LSso ~/.vim/colors/zenburn.vim https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim
fi

exit 0
