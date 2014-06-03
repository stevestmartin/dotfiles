export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export EDITOR="/usr/local/bin/vim -f"
export VISUAL="/usr/local/bin/vim -f"

alias vim='mvim -v'

# Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

# Git branch
if [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
  source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
  export PS1='[\W$(__git_ps1 " (%s)")]\$ '
fi

