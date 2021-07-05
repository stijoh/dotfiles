syntax on
filetype on
filetype indent on
filetype plugin on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

let mapleader = " "

vnoremap <C-y> "*y :let @+=@*<CR>
map <C-p> "+P

noremap ø l
noremap l k
noremap k j
noremap j h

nnoremap <leader>j :wincmd h<CR>
nnoremap <leader>k :wincmd j<CR>
nnoremap <leader>l :wincmd k<CR>
nnoremap <leader>ø :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>fd :Telescope find_files<CR>


call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'rodjek/vim-puppet'
Plug 'w0rp/ale'
Plug 'preservim/nerdtree'
Plug 'vim-ruby/vim-ruby'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme dracula
set background=dark

source $HOME/.config/nvim/plug-config/coc.vim
if executable('rg')
    let g:rg_derive_root='true'
endif
