set nocompatible          "use vim defaults, not vi compatibility"
set backspace =2          "add support for backspace in vim on cygwin

" indentation
set nowrap                "do not wrap lines"
set autoindent            "indent new line like previous line"
set expandtab             "replace tabs with spaces"
set softtabstop   =2      "number of spaces inserted for a tab"
set shiftwidth    =2      "number of spaces for each (auto-)indent step"
set tabstop       =8      "display width of a tab character"

" syntax highlighting
syntax on
colorscheme norwaytoday

" display distinct visible characters for whitespace other than regular space
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

" status info
set title                 "show file name in title bar of console window

" auto-save and buffers
set nobackup              "do not keep a backup file"
set autowriteall          "auto-save changes when quitting or switching buffer"

" swap files
set directory=~/.vim/swap// "save swap files (*.swp, *.swo, ...) in ~/.vim/swap
                            "with full path encoded in file name
                            "(/ characters are replaced with %)

" scrolling
set nostartofline         "keep the cursor on same column on page up/down"

" search
" set ignorecase            "ignore case when searching"

" spell check words in comments, but only in edit mode
autocmd InsertEnter * setlocal spell spelllang=en_us   "spell in locale en-US"
autocmd InsertLeave * setlocal nospell            "disable spell in view mode"

" References:
" http://phuzz.org/vimrc.html
" http://vim.wikia.com/wiki/Remove_swap_and_backup_files_from_your_working_directory
