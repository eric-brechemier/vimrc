#!/bin/sh
# Copy custom vim configuration to the root of current user's home folder

echo 'Copy custom vim configuration from this project:'
cd "$(dirname $0)"
cd ..
pwd

echo "To the root of current user's home folder:"
echo ~

echo 'Create .vim folder'
mkdir -p ~/.vim

echo 'Copy color schemes'
cp -R .vim/colors ~/.vim/

echo 'Copy word lists for spelling'
cp -R .vim/spell ~/.vim/

echo 'Create subdirectory for swap files'
mkdir ~/.vim/swap

echo 'Copy custom vim configuration (.vimrc)'
cp -p .vimrc ~
