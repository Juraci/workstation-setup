set nocompatible
filetype off

syntax on

set nobackup
set noswapfile
set ignorecase
set hlsearch

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'


Plugin 'wincent/Command-T'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-afterimage'
Plugin 'slim-template/vim-slim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tsaleh/vim-align'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ervandew/supertab'
Plugin 'rodjek/vim-puppet'
Plugin 'chase/vim-ansible-yaml'
Plugin 'scrooloose/nerdtree'

call vundle#end()


nnoremap <leader>1 yypVr=
nnoremap <leader>2 yypVr-

nnoremap <c-n> :NERDTree<Enter>
nnoremap <c-c> :NERDTreeClose<Enter>


set background=dark
if has('gui_running')
  colorscheme solarized
else
  colorscheme desert
endif

set hidden
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smarttab
set ruler
set number
set nowrap
set encoding=utf8
set fileencoding=utf8
set smartcase
set cursorline
set laststatus=2
set statusline=%F%m%r%h%w\ [POS=%04l,%04v][%p%%]
set showcmd
set showmode
set noerrorbells
set nowrap
set novisualbell
set backspace=indent,eol,start
set autowriteall
set completeopt=menu,preview
set autoread
set autowrite
set backupdir=~/.vim/backup/
set showfulltag
set smarttab
set shiftround
set guioptions-=T
set undofile
set undodir=~/.vim/backup/
set gdefault
set incsearch
set showmatch
set hlsearch
set wildignore+=*.o,*.obj,.git,tmp/**,build/**,coverage/**
set tw=0

if ! has('gui_running')
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-c>', '<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

map <C-t> <Esc>:CommandT<CR>

" Fix regexes in search
"nnoremap / /\v
"vnoremap / /\v

" Delete trailing white space when saving
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

filetype plugin indent on
filetype plugin  on

au BufRead,BufNew *.coffee set ft=coffee
au BufRead,BufNew *.html.erb set ft=eruby.html
au BufRead,BufNew Vagrantfile set ft=ruby
au BufRead,BufNew Gemfile set ft=ruby
au BufRead,BufNew Guardfile set ft=ruby
au BufRead,BufNew Procfile set ft=ruby

au FocusLost * :wa
au FocusLost * :CommandTFlush
au BufWrite * :call DeleteTrailingWS()

iab xpry require 'pry'; binding.pry
