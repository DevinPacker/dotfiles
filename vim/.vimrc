" --- vim-plug ---

" Install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Add plugins
call plug#begin('~/.vim/plugged')
Plug 'Raimondi/delimitMate'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/goyo.vim'
Plug 'kien/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
call plug#end()

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

" CtrlP
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" Nerd Tree
let NERDTreeShowHidden=1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" --- Shortcuts ---

" Toggle Nerd Tree pane
nnoremap <silent> <C-\> :NERDTreeToggle<CR>

" Remove search highlights and redraw screen
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Open fuzzy file search
nnoremap <silent> <C-p> :CtrlP<CR>

" Toggle code folds
nnoremap <space> za

" --- General ---

" Set default file encoding
set encoding=utf8

" Always display status line
set laststatus=2

" Enable mouse support for all modes
set mouse=a

"  Allow hidden buffers
set hidden

" Display command autocomplete options in status line
set wildmenu

" Ignore case when searching commands
set ignorecase

" Case sensitive searching when capitals are in query
set smartcase

" Display line numbers
set number

" Highlight current line
set cursorline

" Set vim command bar height (in lines)
set cmdheight=2

" Show commands in the bottom bar
set showcmd

" Ensure tabs are spaces
set expandtab

" Number of spaces to use for each step of indentation
set shiftwidth=2

" Number of spaces to insert when tab is pressed
set softtabstop=2

" Search on-the-fly as characters are entered
set incsearch

" Highlight search matches
set hlsearch

" Display cursor position
set ruler

" Enable code folding
set foldenable

" Starting fold level
set foldlevelstart=10

" Maximum 10 nested folds
set foldnestmax=10

" Fold code based on indent level
set foldmethod=indent

