call plug#begin('~/.config/vim/plugged')
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
