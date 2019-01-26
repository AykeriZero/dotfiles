# vim keybindings in terminal
set -o vi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

GREEN="\[$(tput setaf 2)\]"
RED="\[$(tput setaf 1)\]"
RESET="\[$(tput sgr0)\]"

function BashPrompt() {
    local last_status=$?

    if [[ "$last_status" != "0" ]]; then
        echo "${RED} \w\n > ${RESET}" 
    else
        echo "${GREEN} \w\n > ${RESET}" 
    fi
}

# export PS1=$(BashPrompt)

PROMPT_COMMAND='PS1=$(BashPrompt)'

# export PS1='PS1=$(BashPrompt)'

# export PS1="${GREEN} \w\n > ${RESET}" 


alias vim="/usr/local/Cellar/vim/8.1.0450/bin/vim"

alias code='cd ~/src'
alias work='cd ~/"google-drive"'
alias stor='mv ~/Desktop/* .'


alias insta='${HOME}/code_repositories/485-p1-staticsite/env/bin/insta485generator'

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

