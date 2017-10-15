#!/bin/bash

set -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BACKUP=".backup"

cd "${DIR}"

mkdir ${BACKUP}
mv $HOME/.vimrc ${BACKUP}/
mv $HOME/.tmux.conf ${BACKUP}/
mv $HOME/.bashrc ${BACKUP}/
mv $HOME/.inputrc ${BACKUP}/
mv $HOME/.pythonrc ${BACKUP}/

echo "so ${PWD}/vim/vimrc.vim" > ${HOME}/.vimrc
echo "source ${PWD}/tmux/tmux.conf" > ${HOME}/.tmux.conf
echo "source ${PWD}/bash/bashrc" > ${HOME}/.bashrc

cp pythonrc ${HOME}/.pythonrc
cp inputrc ${HOME}/.inputrc
