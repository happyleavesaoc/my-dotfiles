alias ls='ls -AF --color=auto'
alias vi=vim
alias gtree="tree -C -I \"$(tr '\n' '|' < .gitignore | sed 's/.\$//')\" -a"

export WORKON_HOME=~/envs
source /usr/local/bin/virtualenvwrapper.sh

function _update_ps1() {
    PS1="$(~/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
