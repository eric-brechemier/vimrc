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

getspell()
{
  curl -s -S "$spellUrl/$1" > "$HOME/.vim/spell/$1" 
}

echo 'Download updated files for spelling in English'
getspell 'README_en.txt'
getspell 'en.ascii.spl'
getspell 'en.ascii.sug'
getspell 'en.latin1.spl'
getspell 'en.latin1.sug'
getspell 'en.utf-8.spl'
getspell 'en.utf-8.sug'

echo 'Download files for spelling in French'
getspell 'README_fr.txt'
getspell 'fr.latin1.spl'
getspell 'fr.latin1.sug'
getspell 'fr.utf-8.spl'
getspell 'fr.utf-8.sug'

echo 'Create subdirectory for swap files'
mkdir ~/.vim/swap

echo 'Copy custom vim configuration (.vimrc)'
cp -p .vimrc ~
