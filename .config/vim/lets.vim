let g:go_fmt_command = "goimports"
" Config vim-airline.
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='default'
let g:airline#extensions#tabline#show_tabs=0

" Config NERDTree
let NERDTreeRespectWildIgnore=1
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "left"
let g:coc_node_path = "/Users/doyoque/.nvm/versions/node/v19.8.1/bin/node"

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


