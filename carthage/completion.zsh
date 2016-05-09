if [[ -a /usr/local/Frameworks/CarthageKit.framework/Versions/A/Scripts/carthage-zsh-completion ]]
then
  # installed via Homebrew
  source /usr/local/Frameworks/CarthageKit.framework/Versions/A/Scripts/carthage-zsh-completion
  compdef _carthage carthage
elif [[ -a /Libraries/Frameworks/CarthageKit.framework/Versions/A/Scripts/carthage-zsh-completion ]]
then
  # globaly installed
  source /Libraries/Frameworks/CarthageKit.framework/Versions/A/Scripts/carthage-zsh-completion
  compdef _carthage carthage
fi
