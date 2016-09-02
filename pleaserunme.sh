#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles-old             # old dotfiles backup directory
files="bashrc vimrc tmux.conf"    # list of files/folders to symlink in homedir

##########

# create dotfiles-old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles-old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles-old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# move existing .vim folder to the old dotfiles location
echo "Moving existing .vim folder to $olddir"
mv ~/.vim ~/dotfiles-old/

# download vundle from github
echo "Downloading Vundle from github"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# run vundle in order to download plugins
echo "Running Vundle update to download plugins"
vim -c VundleUpdate -c quitall

echo "All done!"

