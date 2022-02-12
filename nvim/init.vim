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
set hidden
"set cursorline
set ttyfast
filetype plugin on
filetype plugin indent on
syntax on
nnoremap <silent> <esc> :noh<return><esc>
" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard by pressing yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>

call plug#begin("~/.vim/plugged")
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'preservim/nerdtree'
call plug#end()

colorscheme dracula

nnoremap <silent> <F1> :Startify<CR>
" Search lines in current buffer
nnoremap <silent> <C-F> :BLines<CR>
" Search buffers
nnoremap <silent> <C-B> :Buffers<CR>
" Search files
nnoremap <silent> <C-P> :Files<CR>
" Search history
nnoremap <silent> <C-H> :History<CR>
" 

" Set ultisnips triggers
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"
" Autocompletion
let g:deoplete#enable_at_startup = 1
" Use omnicomplete for go files
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

" Escape terminal with escape
" The FZF buffer will not close on Escape with this mapping
" :tnoremap <Esc> <C-\><C-n>

" Debugger
packadd termdebug
