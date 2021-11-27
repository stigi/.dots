#!/bin/sh
source "$(dirname "$0")/../script/include"

set -e

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
