set nocompatible
filetype on
syntax on
set number
set incsearch
set ignorecase
set smartcase
set hlsearch
set wildmenu
set wildmode=list:longest
set undofile
set mouse=a
set clipboard=unnamedplus
set background=light
colorscheme zellner
source /usr/share/doc/fzf/examples/fzf.vim

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'tpope/vim-vinegar'

call plug#end()

nnoremap <Space> <Nop>
nmap <Space> <Leader>
nmap <Leader>f :FZF<CR>
nmap <Leader>t :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>
nmap <Leader>d :bd<CR>
nmap <Leader>n :bnext<CR>

