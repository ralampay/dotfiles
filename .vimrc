syntax on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()

" required!
filetype plugin indent on

" set mapleader
let mapleader = ','

noremap <Leader>n  :NERDTreeToggle<CR>
let NERDTreeChDirMode = 2
let NERDTreeShowHidden = 1

let g:ctrlp_cache_dir = $HOME.'/.tmp/ctrlp'
let g:ctrlp_cmd = 'CtrlPCurWD'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
      \ 'file': '\.exe$\|\.so$\|\.dat$'
      \ }
let g:ctrlp_max_height = 30

set expandtab
set number        " show line numbers
set paste
set tabstop=2     " expand tabs
set shiftwidth=2
set softtabstop=2
set t_Co=256
set nocompatible
set autoindent
set noswapfile

" no arrows
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>

" remove highlight
nnoremap <CR> :nohlsearch<CR>

set hlsearch

color transparent

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" html2haml
:vmap <leader>h :!/home/rba1988/.rvm/bin/vim_html2haml<cr>
