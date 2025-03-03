# Android
if [ -d ${HOME}/Library/Android/sdk ]; then
  export ANDROID_HOME=${HOME}/Library/Android/sdk
fi

if [ -d ${ANDROID_HOME}/emulator ]; then
  export PATH=${PATH}:${ANDROID_HOME}/emulator
fi

if [ -d ${ANDROID_HOME}/tools ]; then
  export PATH=${PATH}:${ANDROID_HOME}/tools
fi

if [ -d ${ANDROID_HOME}/platform-tools ]; then
  export PATH=${PATH}:${ANDROID_HOME}/platform-tools
fi

if [ -d ${ANDROID_HOME}/cmdline-tools/latest/bin ]; then
  export PATH=${PATH}:${ANDROID_HOME}/cmdline-tools/latest/bin
fi

if [ -d "/Applications/Android Studio.app/Contents/jbr/Contents/Home" ]; then
  export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jbr/Contents/Home
fi

function emulator { ( cd "$(dirname "$(whence -p emulator)")" && ./emulator "$@"; ) }
