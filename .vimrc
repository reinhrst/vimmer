execute pathogen#infect()
syntax on
filetype plugin indent on

" solarized
set background=light
colorscheme solarized

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['pyflakes', 'pep8']

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

" ctrl-p
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|\.virtualenv|)$'

" ctrl-w leaves insert mode first, since in insertmode it does some really
" evil stuff
inoremap <C-W> <ESC><C-W> 

" window movement made easy
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" disable mouse navigation
set mouse=

" tab settings
set tabstop=4
set shiftwidth=4
set expandtab

set laststatus=2 "aways show status line
set number "line numbers

" completion of (e.g.) filenames: fill the longest substring, and show the
" wildmenu with possible endings
set wildmenu
set wildmode=longest:full

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" define the :Font command
command -nargs=1 Font set guifont=Menlo\ for\ Powerline:h<args>

" soft margin at column 80
set colorcolumn=80

"start scrolling 5 lines before top/bottom is reached
set scrolloff=10

" show trailing whitespace and tabs
set list
set listchars=trail:.,tab:>-,nbsp:x
highlight SpecialKey ctermbg=12 guibg=#ffaaaa

" fold everything in python
set foldmethod=indent
set foldlevel=99

" supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" set quick-access
nmap <leader>u :GundoToggle<CR>
nmap <Leader>pp :CtrlP<cr>
nmap <Leader>pm :CtrlPMRUFiles<cr>
