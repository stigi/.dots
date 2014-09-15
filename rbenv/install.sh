#!/bin/sh

set -e

user () {
  printf "\r  [ \033[0;33m?\033[0m ] $1 "
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

info () {
  printf "  [ \033[00;34m..\033[0m ] $1"
}

user () {
  printf "\r  [ \033[0;33m?\033[0m ] $1 "
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

question_yn () {
  while true; do
    user "$1"
    echo ''

    read -e yn
    if [[ $yn == "y" || $yn == "Y" ]]; then
      return 0
    fi
    if [[ $yn == "n" || $yn == "N" || $yn == "" ]]; then
      return 1
    fi
  done
}

install_rbenv() {
  info "Installing rbenv."
  brew install rbenv > /tmp/rbenv-install.log
  success "rbenv installed."
}

install_ruby_build() {
  info "Installing ruby-build."
  brew install ruby-build > /tmp/ruby-build-install.log
  success "ruby-build installed."
}


if test ! $(which rbenv); then
  if question_yn ' - Install rbenv? [y/N]'; then
    install_rbenv
  else
    info 'Skipping rbenv.'
    echo ''
  fi
else
  info 'rbenv already installed.'
  echo ''
fi


if test ! $(which ruby-build); then
  if question_yn ' - Install ruby-build? [y/N]'; then
    install_rbenv
  else
    info 'Skipping ruby-build.'
    echo ''
  fi
else
  info 'ruby-build already installed.'
  echo ''
fi