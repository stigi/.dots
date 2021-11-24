# rbenv

export RBENV_ROOT=$HOMEBREW_PREFIX/var/rbenv

if [ -d $RBENV_ROOT ]
then
  eval "$(rbenv init -)"
fi
