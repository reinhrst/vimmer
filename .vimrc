set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" color scheme
Bundle 'altercation/vim-colors-solarized'
set background=light
colorscheme solarized

Bundle 'tpope/vim-repeat'

" quickkeys with [ and ]
Bundle 'tpope/vim-unimpaired'

" opening files
Bundle 'kien/ctrlp.vim'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0
nmap <Leader>pp :CtrlP<cr>
nmap <Leader>pm :CtrlPMRUFiles<cr>

" git integration
Bundle 'tpope/vim-fugitive'
" easily surround words with quotes/brackets
Bundle 'tpope/vim-surround'

" syntax checker
Bundle 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['flake8']
let g:syntastic_javascript_checkers = ['eslint']
au BufRead,BufNewFile *.json set filetype=json

" pep8 valid indents
Bundle 'hynek/vim-python-pep8-indent'

" statusline
Bundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1

" ecmascript6 highlighter
Bundle 'othree/yajs'

" YouCompleteMe
Bundle 'Valloric/YouCompleteMe'
let g:ycm_path_to_python_interpreter="/usr/bin/python"  " make sure python2
let g:ycm_add_preview_to_completeopt=1
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_key_detailed_diagnostics=''

filetype on
syntax on
filetype plugin indent on

" finally getting to switch off arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" " remove left and right scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" misc
set encoding=utf-8


" ctrl-w leaves insert mode first, since in insertmode it does some really
" evil stuff
inoremap <C-W> <ESC><C-W>

" disable mouse navigation
set mouse=

" tab settings
set tabstop=4
set shiftwidth=4
set expandtab

set laststatus=2 "aways show status line
set number "line numbers

" Use ag over grep
set grepprg=ag\ --nogroup\ --nocolor
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" define the :Font command
command -nargs=1 Font set guifont=Menlo\ for\ Powerline:h<args>
set guifont=Menlo\ for\ Powerline:h11

" soft margin at column 80
set colorcolumn=80

"start scrolling 10 lines before top/bottom is reached
set scrolloff=10

" show trailing whitespace and tabs
set list
set listchars=trail:.,tab:>-,nbsp:x
highlight SpecialKey ctermbg=12 guibg=#ffaaaa


" no timeout on the leader
set notimeout
set nottimeout
set completeopt=longest,preview
set wildmenu
set wildmode=longest,list

" disable help, ex mode and open new tab
noremap <F1> <nop>
noremap Q <nop>
noremap <C-t> <nop>

" block creating even if position doesn't exist
set virtualedit=block

" new split locations
set splitbelow
set splitright
