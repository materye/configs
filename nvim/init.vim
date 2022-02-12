set nocompatible
set showmatch
set ignorecase
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
"set wildmode=longest,list
set cc=80
set mouse=a
set clipboard=unnamedplus
set cursorline
set ttyfast
filetype plugin on
filetype plugin indent on
syntax on
nnoremap <esc> :noh<return><esc>
" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipoard by pressing yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>

call plug#begin("~/.vim/plugged")
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim'
Plug 'majutsushi/tagbar'
call plug#end()

colorscheme dracula
let g:Lf_ShortcutF = '<C-F>'

" Autocompletion
call deoplete#custom#option('omni_patterns', {'go': '[^.*\t]\.\w*' })
let g:deoplete#enable_at_startup = 1

