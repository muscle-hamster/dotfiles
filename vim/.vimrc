set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab autoindent splitright splitbelow showcmd number
autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79
autocmd BufNewFile,BufRead *.apex set filetype=apex
autocmd BufRead,BufNewFile /*/nginx/* set filetype=nginx

" Turn off any error sounds or flashes
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

if has('termguicolors')
  set termguicolors
endif

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set incsearch
set ic
set timeoutlen=1000 ttimeoutlen=0

" change cursor between ibeam for insert and block for normal
if &term == 'xterm-256color' || &term == 'screen-256color'
  let &t_SI = "\<Esc>[5 q"
  let &t_EI = "\<Esc>[1 q"
endif

let g:prettier#autoformat = 1
let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1
let g:prettier#config#config_precedence = 'prefer-file'
nmap <Leader>wy <Plug>(Prettier)

set clipboard^=unnamed,unnamedplus

" Make vims shell interactive
" set shellcmdflag=-ic

" automatically read new file changes
set autoread

set wildmenu
set wildmode=full

let mapleader = ","
nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>
runtime macros/matchit.vim

call plug#begin('~/.vim/plugged')
    Plug 'dikiaap/minimalist'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-scripts/xptemplate'
    Plug 'severin-lemaignan/vim-minimap'
    Plug 'mileszs/ack.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'mattn/emmet-vim'
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py --js-completer' }
    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/nerdtree'
    Plug 'gcmt/taboo.vim'
    Plug 'joshdick/onedark.vim'
    Plug 'w0rp/ale'
    Plug 'Valloric/MatchTagAlways'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'sheerun/vim-polyglot'
    Plug 'ejholmes/vim-forcedotcom'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'airblade/vim-rooter'
    Plug 'ap/vim-css-color'
    Plug 'prettier/vim-prettier', { 'do': 'npm install' }
    " Plug '~/.fzf'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'yuttie/comfortable-motion.vim'
    Plug 'vimwiki/vimwiki'
    Plug 'mhinz/vim-startify'
    Plug 'itchyny/calendar.vim'
    Plug 'jwalton512/vim-blade'
    Plug 'chrisbra/csv.vim'
call plug#end()

let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'MySnips']
let g:UltiSnipsSnippetsDir='~/.vim/MySnips'
autocmd FileType python UltiSnipsAddFiletypes django

let g:ultisnips_javascript = {
  \ 'keyword-spacing': 'always',
  \ 'semi': 'never',
  \ 'space-before-function-paren': 'always',
\ }

" let s:ycm_hover_popup = -1

colo onedark

if has('win32')
    set guifont=Consolas:h12   " Win32.
elseif has('gui_macvim')
    set guifont=Menlo\ Regular:h14     " OSX.
else
    set guifont=Monospace\ Regular\ 13 "Linux.
endif

set guioptions-=T
let g:ale_linters = {
\   'javascript': ['standard'],
\   'python': ['pycodestyle'],
\}
set guioptions-=m
set guioptions-=r
set guioptions-=L

set updatetime=750

let g:taboo_tab_format = " %N - %f%m "
map <leader>k :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

let g:NERDCustomDelimiters = {
  \ 'python': { 'left': '#', 'right': '' }
\}

let g:rooter_change_directory_for_non_project_files = 'home'
let g:rooter_cd_cmd = 'lcd'
let g:rooter_resolve_links = 1
let g:rooter_patterns = ['package.json', '.git/']

" CTRL-T is new tab
noremap <C-T> :<C-U>tabnew<CR>
inoremap <C-T> <C-\><C-N>:tabnew<CR>
cnoremap <C-T> <C-C>:tabnew<CR>
" CTRL-Tab is next tab
noremap <C-Tab> :<C-U>tabnext<CR>
inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
cnoremap <C-Tab> <C-C>:tabnext<CR>
" CTRL-SHIFT-Tab is previous tab
noremap <C-S-Tab> :<C-U>tabprevious<CR>
inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
cnoremap <C-S-Tab> <C-C>:tabprevious<CR>

nnoremap <leader>lcd :lcd %:p:h<CR>:pwd<CR>
" Select text that was last pasted
nnoremap gp `[v`]

nnoremap <C-i> :Files ~<CR>

nnoremap <C-p> :Rg <CR>
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1


" ctrlp settings
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|build|deps|venv*)|(\.(swp|ico|git|svn))$'

if executable('rg')
  let g:ackprg = 'rg --vimgrep'
  nmap <C-f> :Ack<space>
endif

" Makes vim background solid color in terminal
let &t_ut=''

" turn off ycm_auto_hover
let g:ycm_auto_hover =
      \ get( g:, '', '' )

" treat _ as a word boundary so words joined with an _ are not treated as a
" single word
set iskeyword-=_

" VimWiki settings
set nocompatible
filetype plugin on
let g:csv_table_leftalign = 1
syntax on
let g:vimwiki_list = [
    \{'path': '~/Notes/vimwiki/', 'syntax': 'markdown', 'ext': '.md'},
    \{'path': '~/Notes/vimwiki/spanish', 'syntax': 'markdown', 'ext': '.md'}
  \]

let g:vimwiki_ext2syntax = {'.md': 'markdown'}

let g:vimwiki_global_ext = 0

" Copy relative file path to system clipboard
nnoremap <leader>cf :let @+=expand("%")<CR>
" Copy absolute file path to system clipboard
nnoremap <leader>cF :let @+=expand("%:p")<CR>
" Copy file name to system clipboard
nnoremap <leader>ct :let @+=expand("%:t")<CR>
" Copy directory name to system clipboard
nnoremap <leader>ch :let @+=expand("%:p:h")<CR>

map <leader>wc :Calendar -view=year -split=vertical -width=27<CR>

noremap <S-T> :Buffers<CR>
