set nocompatible


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase "Ignore case when searching
set smartcase
set incsearch "Incremental search"
set nolazyredraw "Don't redraw while executing macros"
set hlsearch
set cursorline
set ruler

set ignorecase "Ignore case when searching"
set smartcase

set vb "no visual bell"
set t_vb= "no visual bell"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2
set ts=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set modeline
set bs=2
set ls=2

set t_Co=256
colorscheme koehler

set tags=tags;/

nmap Q <C-[>
map <F6> :set nu!<CR>
imap <F6> <ESC>:set nu!<CR>a

nnoremap <space> za
vnoremap <space> zf

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

syntax on
