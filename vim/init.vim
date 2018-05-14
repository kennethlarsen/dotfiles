" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Dracula color scheme
Plug 'dracula/vim', { 'as': 'dracula' }

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Zenmode
Plug 'junegunn/goyo.vim'

" ack
Plug 'mileszs/ack.vim'

" Fuzzy search
Plug 'ctrlpvim/ctrlp.vim'

" VimWiki
Plug 'vimwiki/vimwiki'

" Handlebars syntax
Plug 'mustache/vim-mustache-handlebars'

" Syntastic
Plug 'scrooloose/syntastic'

" es2016 syntax
Plug 'othree/yajs.vim'

" Vim gitgutter
Plug 'airblade/vim-gitgutter'
" Initialize plugin system
call plug#end()

"disable arrow keys to enforce usage of hjkl
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let mapleader = ','
let g:mapleader = ','

set nocompatible
filetype plugin on
syntax on
color dracula
:set number

set expandtab


" Project settings
" Work
map <leader>ll :cd ~/dev/metafire3.suite<cr>
" Open source
map <leader>oo :cd ~/opensource<cr> 
" Notes/personal wiki
map <leader>nn :cd ~/docs<cr>

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=1

" Enable all functions in all modes
let g:user_zen_mode='a'

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH
map <leader>g :Ack 
"Zenmode
let g:zenmode_background = 'dark'
let g:zenmode_colorscheme = 'solarized'
let g:zenmode_font ='Cousine 12'
nnoremap <silent> <leader>z :Goyo<cr>
"Fuzzy serach
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>f :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

""""""""""""""""""""""""""""
" syntastic
""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" Fast saving
nmap <leader>w :w!<cr>

i" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=1

" Enable all functions in all modes
let g:user_zen_mode='a'

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>
