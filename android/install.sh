#!/usr/bin/env bash
source "$(dirname "$0")/../script/include"

if question_yn ' - Install Android Studio? [y/N]'; then
  info 'installing Android Studio'
else
  info 'Skipping Android Studio.'
  exit 0
fi

brew install android-studio
success '  Installed Android Studio for you'


# sourcing env to make the sdkmanager available on PATH
source "$(dirname "$0")/env.zsh"

sdkmanager --install "emulator"
success '  Installed Emulator'

sdkmanager --install "cmdline-tools;latest"
success '  Installed latest Command Line Tools'

sdkmanager --install "platform-tools"
success '  Installed Platform SDK Tools'

sdkmanager --install "ndk;21.4.7075529"
success '  Installed NDK 21.4.7075529'

sdkmanager --install "cmake;3.18.1"
success '  Installed cmake 3.18.1'

info 'Installing Android SDKs'

sdkmanager --install "platforms;android-30"
sdkmanager --install "sources;android-30"
sdkmanager --install "system-images;android-30;google_apis;arm64-v8a"
success '  Installed Android SDKs 30'

sdkmanager --install "platforms;android-31"
sdkmanager --install "sources;android-31"
sdkmanager --install "system-images;android-31;google_apis;arm64-v8a"
success '  Installed Android SDKs 31'


yes | sdkmanager --licenses
success '  Accepted all Licenses'


info 'Setting up Android emulators'
echo "no" | avdmanager create avd --name Pixel_5_API30 -k "system-images;android-30;google_apis;arm64-v8a" -f
echo "no" | avdmanager create avd --name Pixel_5_API31 -k "system-images;android-31;google_apis;arm64-v8a" -f
success '  Created AVDs'

info 'All Android done'


exit 0
