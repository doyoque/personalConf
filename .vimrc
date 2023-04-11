if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax on
filetype plugin indent on
set encoding=UTF-8
set exrc
set guicursor=
set nu
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
set nohlsearch
set hidden
set noerrorbells
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set background=dark
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect,menu,longest
set signcolumn=yes
set colorcolumn=80
set cmdheight=2
set updatetime=50
set shortmess+=c
set t_Co=256
set whichwrap+=<,>,[,]
set autoindent
set cindent
set backspace=indent,eol,start
set autoread
set foldmethod=indent
set foldlevel=20
set mouse=a
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*
set pastetoggle=<F2>
au CursorHold * checktime

" General mapping
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
let g:go_fmt_command = "goimports"

call plug#begin('~/.vim/plugged')
Plug 'hashivim/vim-terraform'
Plug 'ollykel/v-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'storyn26383/vim-vue'
Plug 'fatih/vim-go'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'pbogut/fzf-mru.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/.fzf'
Plug 'jparise/vim-graphql'
Plug '0xStabby/chatgpt-vim'

" Theme
Plug 'gruvbox-community/gruvbox'
Plug 'nordtheme/vim'
Plug 'sonph/onehalf'
call plug#end()

" Config gruvbox
" Set color scheme to gruvbox

" colorscheme gruvbox
colorscheme nord

" Toggle background transparency.
let t:is_transparent=0
hi! Normal ctermbg=NONE guibg=NONE
function! Toggle_transparent_background()
  if t:is_transparent==0
    let t:is_transparent=1
    hi! Normal ctermbg=235 guibg=#282828
    echo "background change to normal"
  else
    let t:is_transparent=0
    hi! Normal ctermbg=NONE guibg=NONE
    echo "background change to transparent"
  endif
endfunction
:command ToggleBgTransparent call Toggle_transparent_background()

" Make open & close buffer convenient
" command! Bd execute 'bdelete' | if bufnr('$') == 1 | enew | else | execute 'buffer #' | endif
" command! Bd execute 'bdelete' | execute 'buffer #'
nnoremap cc :bp\|bd #<CR>

" Config vim-airline.
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='default'
let g:airline#extensions#tabline#show_tabs=0

" Config NERDTree
let NERDTreeRespectWildIgnore=1
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "left"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
nmap <F6> :NERDTreeToggle<CR>

" Config COC
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#pum#next(1) :
  \ CheckBackspace() ? "\<tab>" :
  \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
    let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)

" go to prev buffer
map <S-H> :bp<cr>

" go to next buffer
map <S-L> :bn<cr>

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-phpls',
  \ 'coc-go',
  \ 'coc-elixir',
  \ 'coc-html',
  \ 'coc-omnisharp'
  \ ]

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
