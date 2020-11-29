" user config start
" =================
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
set rtp +=~/.vim
let mapleader=" "

call plug#begin('~/.vim/plugged')

" The NERD tree
" A tree explorer plugin for vim.
Plug 'scrooloose/nerdtree'

" Surround.vim
" quoting/parenthesizing made simple 
Plug 'tpope/vim-surround'

" Syntastic
" Syntax checking hacks for vim
Plug 'scrooloose/syntastic'

" vim-gitgutter
" A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks.
Plug 'airblade/vim-gitgutter'

" vim-airline
" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'

" color theme
Plug 'connorholyday/vim-snazzy'

" coc-vim
" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-airline-themes
Plug 'vim-airline/vim-airline-themes'

" nerdcommenter
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" coc-tabnine
"Plug 'neoclide/coc-tabnine'
Plug 'zxqfl/tabnine-vim'

" Vim plugin for automatically highlighting other uses of the word under the cursor
Plug 'RRethy/vim-illuminate'

" insert or delete brackets,parens,quotes in pair
Plug 'jiangmiao/auto-pairs'

" Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more
Plug 'ryanoasis/vim-devicons'

" vim theme gruvbox
Plug 'morhetz/gruvbox'

" Use (neo)vim terminal in the floating/popup window.
Plug 'voldikss/vim-floaterm'

call plug#end()

" user config 
" ===========
" set

set number
set tabstop=4
set clipboard=unnamedplus
set statusline=
set statusline +=*\ %<%F%*            "显示文件路径
set statusline +=*%m%*                "文件改动标志
set statusline +=*%=%5l%*             "当前行数
set statusline +=*/%LL\ %*            "总行数
set statusline +=*%vC\ %*             "当前列数
set statusline +=*0x%04B\ %* 

set wrap
set encoding=utf-8
set scrolloff=10
set showmatch
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase

set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set backspace=indent,eol,start
set tw=0
set wildmenu
set foldmethod=indent
set foldlevel=99
set cursorline
set showcmd
set autochdir
set number

syntax on

" user config
" ===========
" 

map S :w!<CR>
map Q :q!<CR>
map K $
map J ^
map <LEADER>s :nohlsearch<CR>
map si :set splitright<CR>:vsplit<CR>:e

map th i<++><Esc>
map tx csw(ihex<Esc>

" place holder
map <C-j> <Esc>/<++><CR>:nohlsearch<CR>c4l

" leader hjkl for splitw
map <C-l> <C-w>l
" map <C-k> <C-w>k
map <C-h> <C-w>h
" map <C-j> <C-w>j

" tab
map tu :tabnew 
map tn :tabn<CR>
map ti :tabp<CR>
map ts :tabs<CR>

" float terminal
map to :FloatermNew<CR>

" Plugins options
" ===============

" 1. NERDTree
map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"

" 2. Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" high level config
" =================

" open the file at the same line last time
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd vimenter * colorscheme gruvbox
