#!/bin/sh
# Download latest spelling files for English and French
# to the same directory as this script

cd "$(dirname "$0")"

# base URL for download of binary word lists used in spelling
spellUrl="http://ftp.vim.org/vim/runtime/spell/"

getspell()
{
  echo "$1..."
  curl -s -S "$spellUrl/$1" > "$1" 
}

echo 'Download updated files for spelling in English'
getspell 'README_en.txt'
getspell 'en.ascii.spl'
getspell 'en.ascii.sug'
getspell 'en.latin1.spl'
getspell 'en.latin1.sug'
getspell 'en.utf-8.spl'
getspell 'en.utf-8.sug'

echo 'Download updated files for spelling in French'
getspell 'README_fr.txt'
getspell 'fr.latin1.spl'
getspell 'fr.latin1.sug'
getspell 'fr.utf-8.spl'
getspell 'fr.utf-8.sug'

echo 'Done.'
