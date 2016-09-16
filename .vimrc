"~/.vimrc (config file for vim)

" set highlighting during search
set incsearch

"Set hightlighting ALL search results
set hlsearch

" ignore case in search
set ignorecase
" Set case sensitive search to Smart
set smartcase

set ruler
set number
syntax on

" Bindings to close and write file

" VUNDLE

set nocompatible              " be iMproved, required
filetype off                  " required

" Comment out single lines with Control-E (uses commentary plugin)
nmap <C-e> gcc

" remap esc to stop highlighting after search
nnoremap <Esc> :noh<CR><Esc>

" Fix delay after Esc
" set noesckeys
set timeout timeoutlen=300 ttimeoutlen=10

" Gnuplot comment string
augroup gnuplot
	autocmd FileType gp set commentstring=#\ %s
augroup END

" set the runset timeout timeoutlen=0 ttimeoutlen=10ime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
" PLUGINS HERE
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-commentary'

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
