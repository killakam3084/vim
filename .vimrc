set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Treat whitespace nicely coming from system clipboard
set paste
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'


" ALL the colorschemes
Plugin 'flazz/vim-colorschemes'

"File Navigator
Bundle 'scrooloose/nerdtree'

"Vim motions on steroids
Plugin 'Lokaltog/vim-easymotion'

Plugin 'tomasr/molokai'


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

"line numbers
set nu

"Auto-reload vim
syntax enable
colorscheme molokai

"Resource .vimrc on :w
autocmd BufWritePost .vimrc source %

" make ; map to : so its quicker to save files
nnoremap ; :

"Keep selection highlighted
vnoremap > >gv 
vnoremap <lt> <lt>gv

"Map window movement
noremap <C-J> <C-W>j
noremap <C-H> <C-W>h
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l
noremap <C-N> <Esc>:NERDTreeToggle<CR>
let mapleader="."
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
let NERDTreeShowHidden=1

""Map tab movement
noremap <C-U> gT 
noremap <C-I> gt 

"EasyMotion stuff
let g:EasyMotion_startofline = 0 " keep cursor colum JK motion
map <Leader>J <Plug>(easymotion-sol-j)
map <Leader>K <Plug>(easymotion-sol-k)
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment
hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_space_jump_first = 1
	
"Handle tabs how I want
:set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" handle long lines correctly
set wrap
set textwidth=120
set formatoptions=qrn1
set colorcolumn=120


" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" " mapping of <C-L> below)
set hlsearch
nnoremap <leader>nh <ESC>:nohlsearch<CR>


" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
"
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

 "No swap files
 set noswapfile
