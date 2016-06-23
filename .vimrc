"~/.vimrc (config file for vim)
set incsearch
set ruler
set number
syntax on

" VUNDLE

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
" PLUGINS HERE
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Solarized color scheme
set t_Co=16
syntax enable
set background=dark
colorscheme solarized
"~/.vimrc ends here
" set space as leader
let mapleader = "\<Space>"
"Switch between buffers with <Leader>^
noremap <Leader>^ <C-^>
"allow opening of new buffer without saving changes
set hidden
