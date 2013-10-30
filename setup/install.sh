#!/bin/sh
# Copy custom vim configuration to the root of current user's home folder

echo 'Copy custom vim configuration from this project:'
cd "$(dirname $0)"
cd ..
pwd

echo "To the root of current user's home folder:"
echo ~

echo 'Copy custom vim configuration (.vimrc)'
cp -p .vimrc ~

echo 'Create .vim folder'
mkdir ~/.vim

echo 'Create subdirectory for color schemes'
mkdir ~/.vim/colors

echo 'Copy color scheme: norway today'
cp -p .vim/colors/norwaytoday.vim ~/.vim/colors

echo 'Create subdirectory for swap files'
mkdir ~/.vim/swap
