#!/usr/bin/env bash
cd "$(dirname "$0")/.."
source script/include

info 'installing vim plugins'
# If on Mac, check for Homebrew
if test ! -d ~/.vim/autoload && \
   test ! -d ~/.vim/bundle
then
  info "  Installing vim plugins for you."
  mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
  curl -LSso ~/.vim/colors/zenburn.vim https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim
  success "  Installed vim plugins"
fi

exit 0
