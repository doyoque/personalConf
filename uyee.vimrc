filetype plugin indent on
set encoding=UTF-8
set nu
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set laststatus=2
set noshowmode
set hlsearch
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set whichwrap+=<,>,[,]
set undofile " Maintan undo history between sessions
set undodir=~/.vim/undodir
set directory^=~/.vim/swp//
set autoindent
set cindent
set backspace=indent,eol,start
set autoread
au CursorHold * checktime
set foldmethod=indent
set foldlevel=20
let g:go_fmt_command = "goimports"
let mapleader=" "

if !has('nvm')
  set ttymouse=
endif

set ttymouse=xterm2
set mouse=a

let NERDTreeShowHidden=1
syntax on

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'morhetz/gruvbox'
Plug 'StanAngeloff/php.vim'
Plug 'fatih/vim-go'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'ternjs/tern_for_vim'
Plug 'sergioramos/jsctags'
Plug 'ayu-theme/ayu-vim'
Plug 'prettier/vim-prettier'
Plug 'elixir-editors/vim-elixir'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'mhinz/vim-mix-format'
Plug 'elzr/vim-json'
Plug 'pbogut/fzf-mru.vim'
"
Plug 'jwalton512/vim-blade'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'storyn26383/vim-vue'
call plug#end()

" Gutentags
" Don't load me if there's no ctags file
if !executable('ctags')
    let g:gutentags_dont_load = 1
endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"...
set termguicolors
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" put this in your .vimrc
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*

" Nerdtree config for wildignore
let NERDTreeRespectWildIgnore=1
