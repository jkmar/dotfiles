#!/bin/bash

set -x

sudo apt update && \
    sudo apt install -y vim-gtk3 tmux xclip

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BACKUP=".backup"

cd "${DIR}"

mkdir ${BACKUP}
mv ${HOME}/.vimrc ${BACKUP}/
mv ${HOME}/.tmux.conf ${BACKUP}/
mv ${HOME}/.bashrc ${BACKUP}/
mv ${HOME}/.inputrc ${BACKUP}/
mv ${HOME}/.pythonrc ${BACKUP}/

echo "so ${PWD}/vim/vimrc.vim" > ${HOME}/.vimrc
echo "source ${PWD}/tmux/tmux.conf" > ${HOME}/.tmux.conf
echo "source ${PWD}/bash/bashrc" > ${HOME}/.bashrc
grep -q "dotfiles/gitconfig" ${HOME}/.gitconfig || cat << EOF >> ${HOME}/.gitconfig
[include]
    path = ${HOME}/dotfiles/gitconfig
EOF

cp pythonrc ${HOME}/.pythonrc
cp inputrc ${HOME}/.inputrc

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone git://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized ~/.vim/bundle/

cat ${HOME}/.bash_history >> ${HOME}/.bash_eternal_history
