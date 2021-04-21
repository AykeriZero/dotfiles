# vim keybindings in terminal
set -o vi

PROMPT='%(?.%F{green}.%F{red})%~'$'\n''> %f'

# workflow alias
alias src='cd ~/src'
alias gg='cd ~/Documents'
alias work='cd ~/Desktop'
alias stor='mv ~/Desktop/* .'

# git alias
alias gs='git status'
alias gm='git commit -m'

export EDITOR=vim

# add ~/bin to PATH
PATH="$HOME/bin:${PATH}"		
export PATH
