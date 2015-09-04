# Enable colors
source $DOTFILES_DIR/zsh/spectrum.zsh
autoload colors && colors

# Enable substitutions
setopt prompt_subst

# Theme colors
ZSH_THEME_PROMPT_PATH_COLOR=$FG[214]

source $DOTFILES_DIR/git/prompt
source $DOTFILES_DIR/hg/prompt

function ssh_prompt() {
  if [ $SSH_CONNECTION ]; then
    if [ "$cols" -gt 70 ]; then
      echo "%{$fg_bold[white]%}%M "
    else
      echo "%{$fg_bold[white]%}%m "
    fi
  fi
}

function left_prompt() {
  cols="$(tput cols)"
  if [ "$cols" -gt 88 ]; then
    if [ $(in_git) ]; then
      echo "$(ssh_prompt)%{$ZSH_THEME_PROMPT_PATH_COLOR%}%2c $(git_prompt)%{$reset_color%}"
    elif [ $(in_hg) ]; then
      echo "$(ssh_prompt)%{$ZSH_THEME_PROMPT_PATH_COLOR%}%2c $(hg_prompt)%{$reset_color%}"
    else
      echo "$(ssh_prompt)%{$ZSH_THEME_PROMPT_PATH_COLOR%}%2c %{$reset_color%}"
    fi
  else
    echo "$(ssh_prompt)%{$ZSH_THEME_PROMPT_PATH_COLOR%}%2c %{$reset_color%}"
  fi
}

function right_prompt() {
  cols="$(tput cols)"
  if [ "$cols" -le 88 ]; then
    if [ $(in_git) ]; then
      echo "$(git_dirty_state)$(git_prompt)%{$reset_color%}"
    elif [ $(in_hg) ]; then
      echo "$(hg_short_prompt)%{$reset_color%}"
    fi
  fi
}

PROMPT='$(left_prompt)'
RPROMPT='$(right_prompt)'
