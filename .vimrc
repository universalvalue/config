"~/.vimrc (config file for vim)

" VUNDLE

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runset timeout timeoutlen=0 ttimeoutlen=10ime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
" PLUGINS HERE
" -> This PluginManager
Plugin 'VundleVim/Vundle.vim'
" -> Correct color package "Solarized"
Plugin 'altercation/vim-colors-solarized'
" -> easy comment insertion
Plugin 'tpope/vim-commentary'
" -> Custom Status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"-----
"Status Line
set laststatus=2
"let g:airline_theme='cobalt2'

" tab line for buffers
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''

"hide internal mode display
set noshowmode

" By default shows warnings/errors (from syntastic or something)
let g:airline_section_warning = ''
let g:airline_section_errors = ''

"adds time and date in the warning section
let g:airline_section_warning = '%{strftime("%c")}'

" Show path of current file relative to working directory
let g:airline_section_b = '%f'
let g:airline_section_c = ''

" By default shows file encoding which is too cluttered for me
let g:airline_section_x = ''
let g:airline_section_y = ''
"let g:airline_section_z = ''

" disable separators
let g:airline_left_sep = ''
let g:airline_right_sep = ''


"----


" Comment out single lines with Control-E (uses commentary plugin)
nmap <C-e> gcc

" remap esc to stop highlighting after search
" nnoremap <Esc> :noh<CR><Esc>


" Fix delay after Esc
" set noesckeys
set timeout timeoutlen=300 ttimeoutlen=10

" Gnuplot comment string
augroup gnuplot
 autocmd FileType gp set commentstring=#\ %s
augroup END

" Set highlighting for plain tex identical to latex highlighing
let g:tex_flavor = "latex"

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

" Solarized color scheme
set t_Co=16
syntax enable
set background=dark
colorscheme solarized

" Bindings to close and write file
" set space as leader
let mapleader = "\<Space>"
" Bindings to close and write file
" remap :w to <SPACE>-W 
nnoremap <Leader>w :w<CR>
" remap :q to <SPACE>-Q
nnoremap <Leader>q :q<CR>
"Switch between last buffers with <Leader>^
noremap <Leader>^ <C-^>
"swith left and right between buffers with <Leader>h and <Leader>l
nnoremap <Leader>h :bp<CR>
nnoremap <Leader>l :bn<CR>
"allow opening of new buffer without saving changes
set hidden
"~/.vimrc ends here
