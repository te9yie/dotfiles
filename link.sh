#!/usr/bin/env bash

DOTDIR=$(cd $(dirname ${BASH_SOURCE:-${0}}); pwd)
for i in $(ls ${DOTDIR} |grep -v '\.sh')
do
	[ ! -f ${DOTDIR}/${i} ] && continue
	ln -sf ${DOTDIR}/${i} ${HOME}/.${i}
	echo ln -sf ${DOTDIR}/${i} ${HOME}/.${i}
done
