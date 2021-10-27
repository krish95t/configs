""" Loading Plugings
call plug#begin('~/.config/vim-plug')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'navarasu/onedark.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'sheerun/vim-polyglot'
call plug#end()


""" Main Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set wildmode=longest,list,full wildmenu
set ruler laststatus=2 showcmd showmode
"set list listchars=trail:»,tab:»-
"set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set textwidth=0
set hidden
set number
set relativenumber
set clipboard+=unnamedplus
set title

""" Keymaps
lua << ONE
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true}
-- For Navigating Windows
keymap('n','<c-j>','<c-w>j',opts)
keymap('n','<c-k>','<c-w>k',opts)
keymap('n','<c-h>','<c-w>h',opts)
keymap('n','<c-l>','<c-w>l',opts)
-- To Save File
keymap('i','<c-s>','<Esc>:w<CR>a',{})
keymap('n','<c-s>',':w<CR>a',{})
ONE

""" Custom Configurations
syntax on
let g:onedark_style = 'warmer'
"let g:onedark_transparent_background = v:true
colorscheme onedark

lua << EOF
require('onedark').setup()
require('lualine').setup {
  options = {
    theme = 'onedark'
  }
}
EOF

source ~/.config/nvim/coc.vim
