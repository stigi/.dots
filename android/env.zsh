# Android
if [ -d ~/android-sdk-macosx ]; then
  export ANDROID_HOME=~/android-sdk-macosx
fi

if [ -d ~/android-sdk-macosx/tools ]; then
  export PATH=$PATH:~/android-sdk-macosx/tools
fi

if [ -d ~/android-sdk-macosx/platform-tools ]; then
  export PATH=$PATH:~/android-sdk-macosx/platform-tools
fi