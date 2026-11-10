#!/usr/bin/env bash
# Install pathogen and the zenburn color scheme for vim.
set -e

if [ -d ~/.vim/autoload ] || [ -d ~/.vim/bundle ]; then exit 0; fi

mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
curl -LSso ~/.vim/colors/zenburn.vim https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim
