#!/usr/bin/env bash

DOTDIR=$(cd $(dirname ${BASH_SOURCE:-${0}}); pwd)
for i in $(ls ${DOTDIR} |grep -v '\.sh')
do
	[ ! -f ${DOTDIR}/${i} ] && continue
	ln -sf ${DOTDIR}/${i} ${HOME}/.${i}
	echo ln -sf ${DOTDIR}/${i} ${HOME}/.${i}
done
mkdir -p ${HOME}/.vim/autoload ${HOME}/.vim/bundle
curl -LSso ${HOME}/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
ln -sf ${DOTDIR}/vim/* ${HOME}/.vim/
echo ln -sf ${DOTDIR}/vim/* ${HOME}/.vim/
