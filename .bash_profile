# vim keybindings in terminal
set -o vi

PROMPT='%(?.%F{green}.%F{red})%~'$'\n''> %f'

alias src='cd ~/src'
alias gg='cd ~/Documents'
alias work='cd ~/Desktop'
alias stor='mv ~/Desktop/* .'

export EDITOR=vim

# add ~/bin to PATH
PATH="$HOME/bin:${PATH}"		
export PATH
