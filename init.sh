#!bin/bash
echo '.cfg' >> .gitignore

echo 'alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"' >> $HOME/.bashrc
source $HOME/.bashrc

config config --local status.showUntrackedFiles no
config checkout 
