#!/bin/sh
# Copy custom vim configuration to the root of current user's home folder

echo 'Copy custom vim configuration from this project:'
cd "$(dirname $0)"
cd ..
pwd

echo "To the root of current user's home folder:"
echo ~

echo 'Create .vim folder'
mkdir ~/.vim

echo 'Create subdirectory for color schemes'
mkdir ~/.vim/colors

echo 'Copy color scheme: norway today'
cp -p .vim/colors/norwaytoday.vim ~/.vim/colors

echo 'Create subdirectory for spelling files'
mkdir ~/.vim/spell

# base URL for download of binary word lists used in spelling
spellUrl="http://ftp.vim.org/vim/runtime/spell/"

echo 'Download updated files for spelling in English'
wget \
  --timestamping \
  --directory-prefix=$HOME/.vim/spell \
  "$spellUrl/README_en.txt" \
  "$spellUrl/en.ascii.spl" \
  "$spellUrl/en.ascii.sug" \
  "$spellUrl/en.latin1.spl" \
  "$spellUrl/en.latin1.sug" \
  "$spellUrl/en.utf-8.spl" \
  "$spellUrl/en.utf-8.sug"

echo 'Download files for spelling in French'
wget \
  --timestamping \
  --directory-prefix=$HOME/.vim/spell \
  "$spellUrl/README_fr.txt" \
  "$spellUrl/fr.latin1.spl" \
  "$spellUrl/fr.latin1.sug" \
  "$spellUrl/fr.utf-8.spl" \
  "$spellUrl/fr.utf-8.sug"

echo 'Create subdirectory for swap files'
mkdir ~/.vim/swap

echo 'Copy custom vim configuration (.vimrc)'
cp -p .vimrc ~
