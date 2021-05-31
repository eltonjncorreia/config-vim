call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'sheerun/vim-polyglot'

"seleciona varias ocorrencias de uma mesma palavra
"Comando -> (crtl + n) seleciona as palavras
"use (c) para mudar todas ao mesmo tempo
Plug 'terryma/vim-multiple-cursors'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"NerdTree Arvore de diretorios
Plug 'preservim/nerdtree'

"Files Search
"Digite :FZF para buscar arquivos
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
 
colorscheme gruvbox
set background=dark

"permite sair de aquivos e mante-los em buffers(memoria)
set hidden

"adiciona numeros
set number

"adiciona numeros relativos ao cursor
"assim é possivel saltar: n3 -> pula para a linha de 3
set relativenumber 

"Usado com o mouse ou sem 
"Comandos: duplo clique do mouse ou 'crtl + ]' (control colchete)
set mouse=a


set inccommand=split

"adicionando tecla espaço como (leader)
let mapleader="\<space>"

"NerdTree plugin specific commands
"abrir arvore de arquivos: (espaço + .)
nnoremap <leader>. :NERDTreeToggle<CR>

"abri configuracoes do neovim: (espaco + ev)
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<CR>

"carregar as configuracoes: (espaço + sv)
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"encolhe ou espande as funcoes
set foldmethod=indent
set foldlevel=99

let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

