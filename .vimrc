set encoding=utf-8
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
    Plugin 'aserebryakov/vim-todo-lists'
    Plugin 'jiangmiao/auto-pairs'
	Plugin 'scrooloose/nerdtree'
    Plugin 'majutsushi/tagbar'
    Plugin 'tpope/vim-fugitive'
    Plugin 'artur-shaik/vim-javacomplete2'
    Plugin 'airblade/vim-rooter'
    Plugin 'bronson/vim-trailing-whitespace'
    Plugin 'plasticboy/vim-markdown'
    Plugin 'sheerun/vim-polyglot'

    "Plugin 'vim-airline/vim-airline'
    "Plugin 'vim-airline/vim-airline-themes'

    "Plugin 'NLKNguyen/papercolor-theme'
    "Plugin 'dikiaap/minimalist'
    "Plugin 'TroyFletcher/vim-colors-synthwave'
    ""Plugin 'chriskempson/base16-vim'
call vundle#end()

filetype plugin indent on
syntax enable
let &t_Co=256
set termguicolors

set background=light
"let base16colorspace=256
""colorscheme base16-brewer
colorscheme default

" enable advanced java-completetion
autocmd FileType java setlocal omnifunc=javacomplete#Complete

set pastetoggle=<F12>
set encoding=utf-8
set fileencoding=utf-8
set path+=**
set wildmenu
set ttimeoutlen=10 "leaving insert-mode faster
"set complete=.,w,b,u,t,i
set completeopt=longest,menuone
set omnifunc=syntaxcomplete#Complete
set showmode "not needed when airline-plugin is enabled
set laststatus=2
set splitbelow splitright
set wrap linebreak nolist
set wrapmargin=4
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set number relativenumber
set cursorline
"set signcolumn=yes
"set colorcolumn=80
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2
set nobackup
set nowritebackup
set noswapfile
set hlsearch

let mapleader="<"

" make searches case insensitive
set smartcase ignorecase

" airline config
"let g:airline#extensions#tabline#enabled = 1
""let g:airline_powerline_fonts = 1
"let g:airline_theme='minimalist'

" shortcut for NERDTree
nnoremap <silent> <C-e> :NERDTreeToggle<CR>

" shortcut for TagbarToggle
nnoremap <silent> <C-m> :TagbarToggle<CR>

" bindings to make windowswitching easier
"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> <Leader>h <esc>:tabprevious<CR>
nnoremap <silent> <Leader>l <esc>:tabnext<CR>

" indent highlighted block
"
vnoremap < <gv
vnoremap > >gv

" map öö to ESC (german keyboard-layout)
inoremap <silent> öö <esc>
nnoremap <silent> öö <esc>
vnoremap <silent> öö <esc>

let java_highlight_functions = 1
let java_highlight_all = 1

