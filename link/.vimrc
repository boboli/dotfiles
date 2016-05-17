set nocompatible
set guifont=Inconsolata-dz:h12

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'altercation/vim-colors-solarized'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'saltstack/salt-vim'
Plugin 'shmay/vim-yaml'

call vundle#end()
filetype plugin indent on

let g:sls_use_jinja_syntax = 0

if has('gui_running')
    set background=light
else
    set background=light
endif

if has('mouse_sgr')
    set ttymouse=sgr
endif

let g:solarized_termtrans=1
"se t_Co=16
try
    colorscheme solarized
catch
    " give up
endtry

" enable syntax highlighting
syntax enable
" enables mouse actions in all modes
set mouse=a
" 4 spaces when indenting
set shiftwidth=4
" automatically indent based on filetype
set autoindent
set smartindent
" tabs show as 4 spaces
set tabstop=4
" tab key results in 4 spaces
set softtabstop=4
" expand tabs to spaces
set expandtab
" set list listchars=tab:→\ ,trail:·
" shows tabs and trailing spaces
set list listchars=tab:▸\ ,trail:·,nbsp:_,extends:>,precedes:<
" allows backspace to work on...
set backspace=indent,eol,start

augroup filetype
au! BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl
au! BufNewFile,BufRead *.cup setf cup
au! BufNewFile,BufRead *.proto setf protobuf
augroup end

autocmd FileType ruby set expandtab tabstop=2 shiftwidth=2 softtabstop=2

" ignore python swap files and .pyc files
set wildignore+=*.sw[pon],*.pyc
" Move more naturally up/down when wrapping is enabled.
noremap j gj
noremap k gk
" jj quickly in insert mode exits mode.
inoremap jj <Esc>

set statusline=%f%m%r%h%w\ [%Y\ %{&ff}]\ [%l/%L\ %c%V\ (%p%%)\ %{fugitive#statusline()}]
set laststatus=2
"set foldenable
"set fdm=indent

"nnoremap <space> za

let mapleader = ","

" highlight search matches
set hlsearch
" F4 disables highlight
nnoremap <silent> <F4> :nohlsearch<Bar>:echo<CR>
" case insensitive
set ignorecase
" ignore 'ignorecase' if search has uppercase chars
set smartcase

" show line numbers
set number
" highlight cursor line
set cursorline
" 80 chars column highlight
set colorcolumn=80

let g:syntastic_python_checkers=['flake8']
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
let g:syntastic_enable_highlighting=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
