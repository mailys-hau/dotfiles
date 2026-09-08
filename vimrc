set nocompatible
set enc=utf-8
set visualbell " flash instead of beed when woops
set t_vb= " disable bell, need previous line to work
set ruler " display cursor position
set laststatus=2 " Always display status line

syntax on
set number
set noeol
set t_Co=256
set mouse=a " Enable mouse use
set mousehide
set title
set nostartofline " stop certain movements to go to the first character of the line

set expandtab " use ctrl+v to use a real tab in VIM
set softtabstop=4
set shiftwidth=4
set smarttab
set shiftround
set autoindent
set smartindent

set colorcolumn=80
set nolist
set showmatch
set backspace=indent,eol,start " allow backspacing over auto-indent, ...
"set background=dark

set hlsearch " highlight searches
set ignorecase " use insensitive case search...
set smartcase " ...except when using capital letters
set wildmenu " better command line completion
set hidden

" Use Y to copy a line instead of yy
map Y y$

" Map ctrl+L to also turn off search highlight until the next search
nnoremap <C-L> :nohl<CR><C-L>

" Show special characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list


" Automatically download vim-plug plugin to install other plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Save .vimrc, then use :PlugInstall or :PlugUpdate
call plug#begin()

" List your plugins here
Plug 'sheerun/vim-polyglot' " Languages & better syntax highlighting
Plug 'sainnhe/gruvbox-material' " Colourscheme
Plug 'shime/vim-livedown' " Markdown preview
Plug 'blurfx/auto-indent.vim' " Smart indent?
Plug 'yggdroot/indentline' " Show vertical lines for each indentation level
Plug 'vim-scripts/indentpython.vim' " PEP8 Python format

call plug#end()

" Colourscheme setup
if has('termguicolors')
    set termguicolors
endif
set background=dark
let g:gruvbox_material_background = 'soft' " Set contrast
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material

" Keep the terminal background transparent
highlight Normal       ctermbg=NONE guibg=NONE
highlight NormalNC     ctermbg=NONE guibg=NONE
highlight NonText      ctermbg=NONE guibg=NONE
highlight EndOfBuffer  ctermbg=NONE guibg=NONE
highlight SignColumn   ctermbg=NONE guibg=NONE
highlight FoldColumn   ctermbg=NONE guibg=NONE

" Markdown preview setup
let g:livedown_browser = "zen-browser"
let g:livedown_autorun = 1
let g:livedown_open = 1

" Indentline setup, don't use conceal
let g:indentLine_setConceal = 0
