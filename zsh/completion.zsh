# Show completion menu on succesive tab press
setopt auto_menu
setopt complete_in_word
setopt always_to_end

# Enable menu selection
zstyle ':completion:*' menu select

# Enable case insensitive and backwards completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Completion caching
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST
