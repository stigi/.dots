export PROJECTS_DIR="$HOME/Work/Projects"

function _work_complete () {
  reply = ()
  IFS=$(echo -en "\n\b")
  for f in $PROJECTS_DIR/*; do
    reply=( ${reply[@]} ${f##*/})
  done
}

function work() {
  cd $PROJECTS_DIR/$1
}
compctl -K _work_complete work


function ow() {
  cd $PROJECTS_DIR/$1/Code/
  (open *.xcworkspace 2>/dev/null) || (open *.xcodeproj 2>/dev/null)
}
compctl -K _work_complete ow
