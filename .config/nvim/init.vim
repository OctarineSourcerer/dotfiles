set number " Line no at cursor
"set relativenumber " Relative line numbers apart from that (for jumping)
set linebreak " Break at word boundaries instead of first char at end

" Tabs that are 4 spaces wide
set tabstop=4
set shiftwidth=4

" Treat all numbers as decimal
set nrformats=

set tildeop

" The following means case-sensitive only if your search includes uppercase 
set ignorecase
set smartcase

" %% to do %:h - path without file
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

let g:markdown_folding = 1

" ----- Using vim-plug to install plugins -----
"  (if you update this, run :PlugInstall)
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.

" A good start for a vimrc. Crl-L clears hlsearch
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'subnut/visualstar.vim'
Plug 'ggandor/leap.nvim'
Plug 'tpope/vim-repeat' " repeat leap and other plugins with .
" Abolish is a good one, possibly
" As well as Fugitive
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

Plug 'tpope/vim-fugitive'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Setup leap keybindings
lua require('leap').add_default_mappings()
