set nocompatible
syntax enable

" === Turn off .swp files ===
set noswapfile
set nobackup
set nowritebackup

set incsearch " Show matches while searching
set hlsearch " Search highlighting

" === Plugins ===
call plug#begin("~/.vim/plugged")

Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' 
Plug 'raimondi/delimitMate'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'mileszs/ack.vim'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'chemzqm/vim-jsx-improve'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'leafgarland/typescript-vim'

" Initialize plugin system
call plug#end()
" === /Plugins ===

set nu
set relativenumber
set hidden

set background=dark
colorscheme Tomorrow-Night-Eighties

set backspace=indent,eol,start
set mouse=a " Allow mouse usage
set mousehide " Hide mouse while typing

" === Tabs vs Spaces ===
filetype indent plugin on
set showmode
set wrap
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set shiftround
set backspace=indent,eol,start
set autoindent
set copyindent

let g:netrw_liststyle = 3

" Set new <leader>
let mapleader = ","

" === Custom Key Mapping ===

" --- Custom mappings for quicker Esc ---
imap jj <Esc>
imap jk <Esc>

" --- Disable arrows ---
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" --- Quicker split movement ---
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" --- Turn off highlights ---
nnoremap <leader><Space> :noh<CR>
" === /Custom Key Mapping ===


" ack.vim
if executable("ag")
    let g:ackprg = "ag --vimgrep"
endif
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
" Run Ack fast
nnoremap <leader>A :Ack "\b<cword>\b"<CR>

" emmet
let g:user_emmet_settings = {
\  "javascript.jsx": {
\    "extends": "jsx"
\  },
\}

" vim-gitgutter
set updatetime=250 "updates gutter more frequently

" junegunn/fzf
let $FZF_DEFAULT_COMMAND= "ag -g \"\""
nnoremap <C-P> :Files<CR>
inoremap <C-P> <ESC>:Files<CR>i

nnoremap <C-e> :Lexplore<CR>

" Asynchronous Lint Engine (ALE)
" Limit linters used for JavaScript.
let g:ale_linters = { "javascript": ["eslint", "flow"]}
let g:ale_fixers = { "javascript": ["prettier"], "typescript": ["prettier"] }
highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)

let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = "🚨" " could use emoji
let g:ale_sign_warning = "⚠️" " could use emoji
let g:ale_statusline_format = ["🚨 %d", "⚠️ %d", ""]
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = "%linter% says %s"
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>

" run fixers on save
let g:ale_fix_on_save = 1
" respect prettier configs
let g:ale_javascript_prettier_use_local_config = 1
" custom prettier config
let g:ale_javascript_prettier_options = "--print-width 120 --single-quote"
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

let UltiSnipsExpandTrigger = "<tab>"
let UltiSnipsJumpForwardTrigger = "<c-j>"
let UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsSnippetsDir = "~/.vim/ultisnips"
let g:UltiSnipsSnippetDirectories = ["ultisnips"]
