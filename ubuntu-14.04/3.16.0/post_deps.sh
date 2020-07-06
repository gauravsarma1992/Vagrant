#!/bin/bash

cp .vimrc $HOME/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall!

echo "alias gis='git status'" >> $HOME/.bashrc
echo "alias gia='git add'" >> $HOME/.bashrc
echo "alias gid='git diff'" >> $HOME/.bashrc
echo "alias gidc='git diff --cached'" >> $HOME/.bashrc
echo "alias gim='git commit'" >> $HOME/.bashrc
echo "alias gil='git log'" >> $HOME/.bashrc
echo "alias gib='git branch'" >> $HOME/.bashrc
echo "alias gipl='git pull -r origin'" >> $HOME/.bashrc
echo "alias gips='git push origin'" >> $HOME/.bashrc
echo "alias l='ls -lrth'" >> $HOME/.bashrc
echo "export GOROOT=$HOME/golang/go" >> $HOME/.bashrc
echo "export GOPATH=$HOME/go" >> $HOME/.bashrc
echo "export PATH=$PATH:$HOME/golang/go/bin" >> $HOME/.bashrc

cp .git-completion.bash $HOME/
source $HOME/.git-completion.bash
