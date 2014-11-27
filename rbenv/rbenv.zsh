# rbenv

export RBENV_ROOT=/usr/local/var/rbenv

if [ -d $RBENV_ROOT ]
then
  eval "$(rbenv init -)"
fi
