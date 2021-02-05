call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'sheerun/vim-polyglot'

"Autocomplete Langs COC.NVIM run :CocInstall coc-go
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"NerdTree
Plug 'preservim/nerdtree'
"Files Search
"Digite :FZF para buscar arquivos
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme gruvbox
set background=dark

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split

let mapleader="\<space>"
"NerdTree plugin specific commands
nnoremap <leader> :NERDTreeToggle<CR>

