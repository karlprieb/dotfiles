call plug#begin('~/.local/share/nvim/plugged')
  Plug 'sonph/onehalf', { 'rtp': 'vim/' }
  Plug 'tpope/vim-fugitive'
  Plug 'jiangmiao/auto-pairs'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'mattn/emmet-vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'pangloss/vim-javascript'
  Plug 'vim-airline/vim-airline'
  Plug 'neoclide/coc.nvim', { 'branch': 'release', 'for': ['javascript', 'typescript'] }
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
call plug#end()

" General
filetype plugin indent on
set backspace=indent,eol,start
set hidden

" Colors
syntax on
colorscheme onehalflight
set notermguicolors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
endif

" Spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autoindent

" UI
set termguicolors          " Force GUI colors in terminals
set cursorline             " Highlight the cursor line
set nowrap                 " Disable line wrapping<Paste>
set smartcase              " Case insensitive unless typing with caps
set smarttab               " sw at the start of the line, sts everywhere else
set listchars+=space:·
set noshowmode
"set laststatus=2
set display=lastline
set ttyfast
set lazyredraw

" Search
set incsearch
set hlsearch

" Line numbers
set number relativenumber  " Toggle relative and absolute line numbers

"fzf
nnoremap <c-p> :FZF<cr>
nnoremap <c-l> :Lines<cr>
nnoremap <c-b> :Buffers<cr> 

"tmp folder
set directory^=$HOME/.vim/tmp//

" netrw
map <c-e> :Lexplore<cr>
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1


" Airline
let g:airline_theme='onehalflight'

