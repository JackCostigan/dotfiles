set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

"plugin for statusline at bottom
Plugin 'vim-airline/vim-airline'

"plugin for airline-themes
Plugin 'vim-airline/vim-airline-themes'

"Solarized color scheme
Plugin 'altercation/vim-colors-solarized'

"seoul256 color scheme
"Plugin 'junegunn/seoul256.vim'

"badwolf color scheme
"Plugin 'sjl/badwolf'

"add syntax highlighting for Rust
Plugin 'rust-lang/rust.vim'

"add haskell syntax highlighting
Plugin 'vim-scripts/haskell.vim'

"add Racket syntax stuff
Plugin 'wlangstroth/vim-racket'

"add wombat256mod color scheme
Plugin 'michalbachowski/vim-wombat256mod'

"add rainbow brackets
Plugin 'junegunn/rainbow_parentheses.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"show whitespace
set list
set listchars=tab:▸\ ,eol:¬

"show line numbers
set number

"show vim-airline
set laststatus=2

"show commmands being typed
set showcmd

"set color map for dark background
set background=dark

"enable syntax highlighting
syntax on

"show matching brackets
set showmatch

"Do case insesitive mathcing
set ignorecase

"If pattern contains an uppercase letter, then do case sesnitive search
set smartcase

"show next mactch while entering search
set showmatch

"enable mouse for all modes
set mouse=a

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"enable solarized color scheme
colorscheme solarized

"enable seoul256 color scheme
"colo seoul256
"let g:seoul256_background = 233

"enable badwolf colorscheme
"colorscheme badwolf

"enable wombat256 color scheme
"colorscheme wombat256mod

"no tabs
set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab

"Activation based on file type
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END

"set t_Co=256

