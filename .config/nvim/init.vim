let mapleader="\<Space>"
let maplocalleader="\\"
set number " Line no at cursor
"set relativenumber " Relative line numbers apart from that (for jumping)
set linebreak " Break at word boundaries instead of first char at end

" Tabs that are 4 spaces wide
set tabstop=4
set shiftwidth=4

syntax on

" Treat all numbers as decimal
set nrformats=

set tildeop

" The following means case-sensitive only if your search includes uppercase 
set ignorecase
set smartcase

" Lets buffers not get unloaded when they're navigated away  from
set hidden

" Set vim's grep to use the much faster ripgrep
set grepprg=rg\ --vimgrep\ $*

" %% to do %:h - path without file
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
cmap w!! w !sudo tee % > /dev/null

let g:markdown_folding = 1

" ----- Using vim-plug to install plugins -----
"  (if you update this, run :PlugInstall)
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
	" Themes  Apprentice is nice, but it didn't make the list
	" mmm warm
	Plug 'savq/melange-nvim'
	Plug 'sainnhe/gruvbox-material'
	Plug 'EdenEast/nightfox.nvim'

	" A good start for a vimrc. Crl-L clears hlsearch
	Plug 'tpope/vim-sensible'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-unimpaired'
	Plug 'subnut/visualstar.vim'
	Plug 'ggandor/leap.nvim'
	Plug 'tpope/vim-repeat' " repeat leap and other plugins with .
	" Abolish is a good one, possibly
	" As well as Fugitive
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	Plug 'preservim/nerdtree'

	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
	Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

	Plug 'tpope/vim-fugitive'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	Plug 'lervag/vimtex'

	Plug 'wellle/targets.vim'
	"
	Plug 'kaarmu/typst.vim'

	Plug 'stevearc/oil.nvim'
	Plug 'Olical/conjure'
	Plug 'rhysd/clever-f.vim'

	" filetype icons pls
	" Plug 'nvim-tree/nvim-web-devicons'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

lua require('oil').setup()
" Setup leap keybindings
lua require('leap').add_default_mappings()

" ------- leader shortcuts -----
map <leader>h :Telescope oldfiles<CR>
map <leader>b :Telescope buffers<CR>
map <leader>y "+y

set background=dark
set termguicolors
colorscheme melange
