" VIM plugins
call plug#begin()
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'inkarkat/vim-mark'
Plug 'vim-scripts/ingo-library'
call plug#end()

set background=dark
set nocompatible                         " Don't need to be compatible
set hidden                               " Hide buffer instead of closing them
set nowrap                               " don't wrap lines
set expandtab                            " Use spaces instead of tabs
set tabstop=2                            " a tab is four spaces
set backspace=indent,eol,start           " allow backspacing over everything in insert mode
set autoindent                           " always set autoindenting on
set copyindent                           " copy the previous indentation on autoindenting
set number                               " always show line numbers
set shiftwidth=2                         " number of spaces to use for autoindenting
set shiftround                           " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                            " set show matching parenthesis
set ignorecase                           " ignore case when searching
set smartcase                            " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab                             " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch                             " highlight search terms
set incsearch                            " show search matches as you type
set showcmd
set wildmenu
set path+=**
set splitbelow                           " Open new split panes to right and bottom, which feels more natural than Vim’s default
set splitright
set laststatus=2
set cursorline
let mapleader=" "

filetype plugin indent on
syntax enable

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers = ['tidy']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

" Ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" Convenience mappings
nnoremap <silent> <leader>p :bprev<Return>|        " Switch to last buffer
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>|      " Quickly edit vimrc
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>|     " Save vimrc
nnoremap <silent> <leader>n :NERDTreeToggle<CR>|   " Open NERDtree
nnoremap <silent> <leader>b :CtrlPBuffer<CR>|      " Open CtrlPBuffer
nnoremap <silent> <leader>a :Ack!<Space>
