#!/bin/bash

cp .vimrc /root/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall!

echo "alias gis='git status'" >> /root/.bashrc
echo "alias gia='git add'" >> /root/.bashrc
echo "alias gid='git diff'" >> /root/.bashrc
echo "alias gidc='git diff --cached'" >> /root/.bashrc
echo "alias gim='git commit'" >> /root/.bashrc
echo "alias gil='git log'" >> /root/.bashrc
echo "alias gib='git branch'" >> /root/.bashrc
echo "alias gipl='git pull -r origin'" >> /root/.bashrc
echo "alias gips='git push origin'" >> /root/.bashrc
echo "alias l='ls -lrth'" >> /root/.bashrc

cp .git-completion.bash /root/
source /root/.git-completion.bash
