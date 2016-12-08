[ -z "${PS1}" ] && return

export DISPLAY=$(echo ${SSH_CONNECTION} |cut -d ' ' -f 1):0
export PS1="\[\033[33m\]\t\[\033[0m\] \u@\h \w:\$ "
export PATH=${HOME}/.local/bin:${PATH}

[ -f ${HOME}/.bashrc.${OSTYPE} ] && . ${HOME}/.bashrc.${OSTYPE}
