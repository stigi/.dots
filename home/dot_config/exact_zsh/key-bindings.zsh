# Force VI Mode
bindkey -v

# Up/Down search the history for lines that start with the typed text.
# With an empty line they step through the history.
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
# Terminals send one of two sequences for the arrow keys, so bind the two
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[OA' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
bindkey '^[OB' down-line-or-beginning-search

# Make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char

# Reverse search ^R. fzf replaces this binding in zshrc when fzf is installed.
bindkey "^R" history-incremental-pattern-search-backward

export KEYTIMEOUT=1
