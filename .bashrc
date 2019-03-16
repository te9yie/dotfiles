[ -z "${PS1}" ] && return

export DISPLAY=$(echo ${SSH_CONNECTION} | cut -d ' ' -f 1):0
export PS1="\[\033[33m\]\t\[\033[0m\] \u@\h \w:\$ "
export PATH="$(echo "$PATH" | sed -r -e 's;:/mnt/[^:]+;;g')"
export PATH=${HOME}/.local/bin:${PATH}

if [ -d ${HOME}/.bashrc.d ]; then
	for i in ${HOME}/.bashrc.d/*.sh; do
		. ${i}
	done
fi
