set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" MY BUNDALZ
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'groenewege/vim-less'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on
syntax on

let g:ctrlp_map = '<c-t>'

" General
set number
set list
set listchars=tab:▸\ ,eol:¬ " show fancy characters for tabstops, and \n's

set showmatch " show us maching brackets, etc.
set matchtime=3 "how long to show the match

" Prefer vsplits to hsplits
set splitbelow
set splitright

set autowrite
set autoread " when a file has changed on disk, just load it. Don't ask.

" Default tabstop / spacing
set tabstop=4
set shiftwidth=4
set softtabstop=4

set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

set hidden " keep buffers around when not in view.
set visualbell " Don't beep, do visual bell, which is disabled in my gvimrc
set laststatus=2 " always show a status line.
set relativenumber
set undofile
set history=1000 " cmd-mode history, and search history
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.

" Match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

set virtualedit+=block

set wildmenu " cmd line completion a-la zsh
set wildmode=list:longest " matches mimic that of bash or zsh
set wildignore=*/node_modules/*
set wildignore+=*/npm_cache/*
set wildignore+=*/.ropeproject/*
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*/migrations/*                       " Django migrations
set wildignore+=*.pyc                            " Python byte code

" v2 project specific settings

set shell=/bin/bash

" change the leader to something sane
let mapleader = ","

" Autosave
:au FocusLost * :wa
" Resize splits when the window is resized
au VimResized * :wincmd =

" Less chording
inoremap jf <esc>
nnoremap ; :
vnoremap ; :

" Deactivate
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>

" Split helpers
" create new vsplit, and switch to it.
noremap <leader>v <C-w>v

" bindings for easy split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Easier to type, and I never use the default behavior.
noremap H ^
noremap L g_

" Visual line nav, not real line nav
nnoremap j gj
nnoremap k gk

" Quick buffer switching - like cmd-tab'ing
nnoremap <leader><leader> <c-^>

" Use sane regex's when searching
nnoremap / /\v
vnoremap / /\v

" Clear match highlighting
noremap <leader><space> :noh<cr>:call clearmatches()<cr>
