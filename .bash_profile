# vim keybindings in terminal
set -o vi

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%(?.%F{green}.%F{red})%~ | ${vcs_info_msg_0_} > %f'

# Set green or red
# %(?.%F{green}.%F{red})%

# End color
# %f 

# workflow alias
alias src='cd ~/git'
alias gg='cd ~/Documents'
alias work='cd ~/Desktop'
alias stor='mv ~/Desktop/* .'

# git alias
alias ga='git add'
alias gs='git status'
alias gm='git commit -m'

export EDITOR=vim

# add ~/bin to PATH
PATH="$HOME/bin:${PATH}"		
export PATH
