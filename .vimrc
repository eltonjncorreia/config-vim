:"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" tema dracula 
Plugin 'dracula/vim', { 'name': 'dracula' }
" PLUGIN PARA GOLANG
Plugin 'fatih/vim-go'
" plugin para autocomplete
Plugin 'ycm-core/YouCompleteMe'
" Snippets Django
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" plugin para o git 
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required

syntax on

let mapleader = " "

set showcmd
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
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

filetype plugin indent on    " required

set encoding=utf-8

colorscheme dracula

"split navigations
inoremap <C-J> <C-W><C-J>
inoremap <C-K> <C-W><C-K>
inoremap <C-L> <C-W><C-L>
inoremap <C-H> <C-W><C-H>

" NERDTree plugin specific commands
nnoremap <C-g> :NERDTreeToggle<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

let python_highlight_all=1	

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
"let g:go_fmt_command = 'goimports'   # Run goimports along gofmt on each save     
"let g:go_auto_type_info = 1           # Automatically get signature/type info for object under cursor     
au filetype go inoremap <buffer> . .<C-x><C-o>

" ATALHO PARA O ESC PARA O JK
inoremap jk <ESC>

" para Django 
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set tags=tags

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
