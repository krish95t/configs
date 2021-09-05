""" Loading Plugins
set nocompatible
call plug#begin('~/.config/extensions')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree' , { 'on': 'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
call plug#end()

"" neovim user configuration :~>
set nu rnu
set ts=4 sw=4
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>

"" colorscheme onedark setup :~>
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
syntax on
let g:onedark_termcolors=256
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
colorscheme onedark
let g:lightline = { 'colorscheme':'onedark',}

let g:python3_host_prog="/usr/bin/python3"
"source ~/.config/nvim/coc.vim ""Make sure it exists
