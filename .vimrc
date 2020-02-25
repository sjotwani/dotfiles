" indentation options
set tabstop=4


" search options
set hlsearch
set ignorecase
set incsearch
set smartcase

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
" set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all python syntax highlighting features
let python_highlight_all = 1

" show status line in the end
set laststatus=2

" show relative line numbers
" set relativenumber

" set offset - makes lines visible on top and bottom when you scroll/navigate
set scrolloff=5






" ********************************** VIM-PLUG **************************
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Fuzzy file search
" https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Status line
" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

" Multiple Cursors
" https://github.com/terryma/vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'

" Git funcs
Plug 'tpope/vim-fugitive'

" Dir explorer
Plug 'preservim/nerdtree'

" Adding surrounding brackets
Plug 'tpope/vim-surround'

" Syntax checking
" https://github.com/vim-syntastic/syntastic
Plug 'scrooloose/syntastic'

" Initialize plugin system
call plug#end()


" ****************** VARIABLES FOR INSTALLED PLUGINS *******************

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" ********************************* VUNDLE ****************************
" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')




" All of your Plugins must be added before the following line
" call vundle#end()            " required
" filetype plugin indent on    " required
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
