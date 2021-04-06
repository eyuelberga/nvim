set shell=/bin/sh
set relativenumber	

" Add prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

call plug#begin("~/.vim/plugged")

  " Theme
  Plug 'dracula/vim'

  " Language Client
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-json', 'coc-prettier', 'coc-tsserver']
  " TypeScript Highlighting
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

  " File Explorer with Icons
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'


call plug#end()

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme dracula

" START [NERDTree config]

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" auto-open if no file open

autocmd vimenter * if !argc() | NERDTree | endif

" Automaticaly close nvim if NERDTree is only thing left open

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap  <C-l> :tabn<CR>
nnoremap  <C-h> :tabp<CR>
nnoremap  <C-n> :tabnew<CR>

" END [NERDTree config]

" Indent config 

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" END [Indet config]

