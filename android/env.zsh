# Android
if [ -d ${HOME}/Library/Android/sdk ]; then
  export ANDROID_HOME=${HOME}/Library/Android/sdk
fi

if [ -d ${ANDROID_HOME}/tools ]; then
  export PATH=${PATH}:${ANDROID_HOME}/tools
fi

if [ -d ${ANDROID_HOME}/platform-tools ]; then
  export PATH=${PATH}:${ANDROID_HOME}/platform-tools
fi

function emulator { ( cd "$(dirname "$(whence -p emulator)")" && ./emulator "$@"; ) }
