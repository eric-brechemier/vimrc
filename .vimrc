" Simple configuration for vim (vimrc)
" https://github.com/eric-brechemier/vimrc

set nocompatible          "use vim defaults, not vi compatibility
set backspace =2          "add support for backspace in vim on cygwin

" indentation
set nowrap                "do not wrap lines
set autoindent            "indent new line like previous line
set expandtab             "replace tabs with spaces
set softtabstop   =2      "number of spaces inserted for a tab
set shiftwidth    =2      "number of spaces for each (auto-)indent step
set tabstop       =8      "display width of a tab character

" syntax highlighting
syntax on
" colorscheme norwaytoday

" display distinct visible characters for whitespace other than regular space
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

" highlight 81st column to remember to avoid long lines
if exists('+colorcolumn') " feature added in vim 7.3
  set colorcolumn=81
endif

" show line and column of cursor position to remember to keep files short
set ruler
set rulerformat=%=%l/%L   " in right aligned group, right of %=,
                          " display current line number %l, a /,
                          " followed with total lines number %L

" status info
set title                 "show file name in title bar of console window

" auto-save and buffers
set nobackup              "do not keep a backup file
set autowriteall          "auto-save changes when quitting or switching buffer

" swap files
set directory=~/.vim/swap// "save swap files (*.swp, *.swo, ...) in ~/.vim/swap
                            "with full path encoded in file name
                            "(/ characters are replaced with %)

" scrolling
set nostartofline         "keep the cursor on same column on page up/down
"set virtualedit=all       "allow cursor everywhere in the screen in all modes

" search
" set ignorecase            "ignore case when searching

" spell check words in comments, but only in insert mode
" - enable spelling in insert mode, in English (US) and French
autocmd InsertEnter * setlocal spell spelllang=en_us,fr
" - disable spelling in command mode
autocmd InsertLeave * setlocal nospell

" References:
" http://phuzz.org/vimrc.html
" http://vim.wikia.com/wiki/Remove_swap_and_backup_files_from_your_working_directory
