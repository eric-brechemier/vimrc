#!/bin/sh
# Remove custom vim configuration from the root of current user's home folder

echo 'Remove custom configuration from the home folder of current user:'
echo ~

echo 'Delete custom vim configuration file (.vimrc)'
rm ~/.vimrc

echo 'Delete .vim folder and all subdirectories'
rm -rf ~/.vim
