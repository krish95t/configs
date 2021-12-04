""" Loading Plugings
call plug#begin('~/.config/vim-plug')
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-syntastic/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
call plug#end()

""" Main Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set wildmode=longest,list,full wildmenu
set ruler laststatus=2 showcmd showmode
set wrap breakindent
set encoding=utf-8
set textwidth=0
set hidden
set number
set relativenumber
set clipboard+=unnamedplus
set title

""" Keymaps
inoremap jk <Esc>
vnoremap jk <Esc>
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
tnoremap <Esc> <C-\><C-n>
noremap <C-l> :nohl<CR><C-l>

set termguicolors
let g:lightline = { 'colorscheme': 'onedark' }
syntax on
colorscheme onedark
"source ~/.config/nvim/coc.vim
