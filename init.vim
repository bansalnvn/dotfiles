call plug#begin('~/.nvim/plugged')

set updatetime=100

" Wrapper of some neovim's :terminal functions
Plug 'kassio/neoterm'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'steinymity/vim-capnp'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

" This must come before any bindings to <Leader>
let mapleader      = ","

" This must come before any bindings to <LocalLeader>
let maplocalleader = ";"




"-- Terminal Mode / neoterm --------------------------------------------
"
"" Open neoterm windows in a vertical split
let g:neoterm_default_mod = 'vertical'

" Don't keep buffer open when terminal exits
let g:neoterm_keep_term_open = 0

" Set larger than standard scrollback
let g:terminal_scrollback_buffer_size = 5000

augroup Terminal
autocmd!

" Always start insert mode when you enter a terminal window
autocmd BufWinEnter,WinEnter term://* startinsert

" Always stop insert mode when you leave a terminal window
autocmd BufLeave term://* stopinsert
augroup END


"-- Window Management --------------------------------------------------

"Open vertical split to the right of current window
set splitright

" Open horizontal split below current window
set splitbelow

" Ctrl + w = exit terminal mode + window operation
tnoremap <C-w> <C-\><C-n><C-w>


"-- C/C++ --------------------------------------------------------------
"
augroup C
autocmd!
autocmd BufNewFile,BufRead *.h     set filetype=cpp
autocmd BufNewFile,BufRead *.hpp   set filetype=cpp
autocmd BufNewFile,BufRead *.c     set filetype=cpp
autocmd BufNewFile,BufRead *.cpp   set filetype=cpp
augroup END

filetype plugin indent on

set tabstop=4 shiftwidth=4 expandtab
set expandtab
set autoindent
set copyindent
set smartindent
set shiftwidth=4
set softtabstop=4
set shiftround
set nu
set tags=./tags,tags;
set nocompatible
set tw=79 "setting the text width
set autoindent
set ls=4
set formatoptions+=t
set ignorecase
set incsearch
set cursorline      " highlights the current line

filetype plugin indent on



highlight Comment ctermfg=green
highlight OverLength ctermbg=52 ctermfg=white guibg=#592929
match OverLength /\%121v.\+/


set rtp+=~/.fzf
