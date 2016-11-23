[ -z "${PS1}" ] && return

export DISPLAY=$(echo ${SSH_CONNECTION} |cut -d ' ' -f 1):0
export PS1="\[\033[33m\]\t\[\033[0m\] \u@\h \w:\$ "
export GOPATH=${HOME}/.go
export PATH=${GOPATH}/bin:${PATH}
export RUST_SRC_PATH=${HOME}/src/rustc-1.13.0/src
export PATH=${HOME}/.cargo/bin:${PATH}
export PATH=${HOME}/.local/bin:${PATH}

case "$(uname -s)" in
"Darwin")
	alias ls="ls -G"
	alias mvim="/Applications/MacVim.app/Contents/MacOS/mvim"
	;;
*)
	alias ls="ls --color"
	;;
esac
alias grep="grep --color"
