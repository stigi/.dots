if [ -f $DOTFILES_DIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]
then
  # Load the zsh-syntax-highlighting plugin
  source $DOTFILES_DIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  
  # Enable highlighters
  ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
  
  # Override highlighter colors
  ZSH_HIGHLIGHT_STYLES[default]=none
  ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
  ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
  ZSH_HIGHLIGHT_STYLES[alias]=fg=white,bold
  ZSH_HIGHLIGHT_STYLES[builtin]=fg=white,bold
  ZSH_HIGHLIGHT_STYLES[function]=fg=white,bold
  ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
  ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,underline
  ZSH_HIGHLIGHT_STYLES[commandseparator]=none
  ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
  ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
  ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
  ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
  ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
  ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
  ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
  ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
  ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
  ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
  ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
  ZSH_HIGHLIGHT_STYLES[assign]=none
 fi
