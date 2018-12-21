" Preamble {{{
" }}}

" Vim Plug {{

" http://stackoverflow.com/questions/5845557/in-a-vimrc-is-set-nocompatible-completely-useless
set nocompatible "No clue, does something

call plug#begin()
Plug 'derekwyatt/vim-scala'               " Vim Scala stuff
Plug 'ctrlpvim/ctrlp.vim'                 " True fuzzy find.  The greatest thing ever for us lazy folk.
Plug 'editorconfig/editorconfig-vim'      " Maintain consistent coding styles between different editors and IDEs.
Plug 'flazz/vim-colorschemes'             " All the colorschemes money can buy
Plug 'pangloss/vim-javascript'            " Adds some javascript nicities.
Plug 'Raimondi/delimitMate'               " Provides auto closing of parens, braces, and brackets in insert mode.
Plug 'scrooloose/nerdtree'                " A vim explorer replacement.  Much nicer and easier to use.
Plug 'w0rp/ale'                           " Asynchronous error checking as of ViM 8
Plug 'tpope/vim-commentary'               " Easier comment support in vim.  Comment out blocks with gcc.
Plug 'tpope/vim-dispatch'                 " Terminal in your vim.  Works best with tmux.
Plug 'tpope/vim-fugitive'                 " Git support in vim.  Incredible handy for merge conflicts.
Plug 'tpope/vim-sensible'                 " A universal set of defaults that (hopefully) everyone can agree on.
Plug 'tpope/vim-unimpaired'               " Provides some nice key mappings
Plug 'vim-airline/vim-airline'            " Adds a gorgeous toolbar with useful info to bottom of vim.
Plug 'vim-airline/vim-airline-themes'     " Airline themes.  Self explanatory
Plug 'vim-scripts/LargeFile'              " Large files support
Plug 'rust-lang/rust.vim'                 " Rust support
Plug 'racer-rust/vim-racer'               " Racer for Rust
Plug 'idris-hackers/idris-vim'            " Idris support
Plug 'rizzatti/dash.vim'                  " Dash integration
Plug 'vim-pandoc/vim-pandoc'              " Pandoc integration
Plug 'vim-pandoc/vim-pandoc-syntax'       " Pandoc syntax
Plug 'junegunn/goyo.vim'                  " Goyo writing mode
Plug 'purescript-contrib/purescript-vim'  " Purescript support
Plug 'jakwings/vim-pony'                  " Pony support
Plug 'derekelkins/agda-vim'               " Agda support
Plug 'the-lambda-church/coquille'         " Coq support
Plug 'flowtype/vim-flow'                  " Flow support
Plug 'natebosch/vim-lsc'                  " Language Server support
call plug#end()
" }}

" Editing {{

" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>' use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
" Add line numbers by default
set relativenumber
set number
" }}

syntax on
filetype on
filetype plugin indent on


" Viewing {{
" turn on syntax
syntax on
colorscheme bubblegum-256-dark
" }}
"

" For ALE
let g:ale_completion_enabled = 1

" For Syntastic
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exec = "./node_modules/eslint/bin/eslint.js"

" Browsing {{
" turn on NERDTree when I want
autocmd VimEnter * if !argc() | NERDTree | endif
" Show hidden files in NerdTree"
let NERDTreeShowHidden=1
" }}

" Scala {{
nnoremap <localleader>t :EnTypeCheck<CR>
au FileType scala nnoremap <localleader>df :EnDeclarationSplit<CR>
" }}
" execute pathogen#infect()
" call pathogen#helptags()
" CtrlP {{{

let g:ctrlp_custom_ignore = {
 \ 'dir':  '\v[\/](bower_components|node_modules|coverage|false|\.build|\.tmp|dist|docs|project|target)$'
 \ }

" Allows indexing of more files
let g:ctrlp_max_depth = 40
let g:ctrlp_match_window = 'results:20'

" Shows the hidden dot files
let g:ctrlp_show_hidden = 0

" }}
"
" Airline {{{

" Allows us to get the lovely symbols for Airline in the prompt
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
" }}}
" CtrlP {{{

let g:ctrlp_custom_ignore = {
 \ 'dir':  '\v[\/](bower_components|node_modules|coverage|false|\.build|\.tmp|dist|docs|project|target)$'
 \ }

" Allows indexing of more files
let g:ctrlp_max_depth = 40
let g:ctrlp_match_window = 'results:20'

" Shows the hidden dot files
let g:ctrlp_show_hidden = 0

" }}}
"
" Kill trailing white space {{{
autocmd FileType haskell,idris,scala,rust,javascript autocmd BufWritePre <buffer> %s/\s\+$//e
" }}}
"
"
" Kill Arrow Keys {{{

" New Vim users will want the following lines to teach them to do things right
" For training only.  Remove when need be.  Honestly though, I'll probably never
" re-enable this.
 nnoremap <up> <nop>
 nnoremap <down> <nop>
 nnoremap <left> <nop>
 nnoremap <right> <nop>
 nnoremap k gk
 nnoremap j gj
 inoremap <up> <nop>
 inoremap <down> <nop>
 inoremap <left> <nop>
 inoremap <right> <nop>

" }}}

" Force use python3 {{{
"let g:syntastic_python_python_exec = "/usr/local/bin/python3"
" }}}

"  Tags {{{

" Stolen from: https://github.com/mcantor/no_plugins/blob/master/no_plugins.vim#L86

" TAG JUMPING:

" Create the `tags` file (may need to install ctags first)
" Default ctags that comes with macOS is hot garbage.  `brew install ctags`
" There's probably a sexy regular expression to do what I'm doing with all the
" multiple exclude statements, but I don't really care.  I'd rather have this be
" verbose and stupidly readable and editable.
"command! MakeTags !ctags --recurse
"  \ --exclude=".build"
"  \ --exclude=".bundle"
"  \ --exclude=".git"
"  \ --exclude=".tmp"
"  \ --exclude="bower_components"
"  \ --exclude="coverage"
"  \ --exclude="dist"
"  \ --exclude="docs"
"  \ --exclude="log"
"  \ --exclude="node_modules"
"  \ --exclude="project"
"  \ --exclude="target"
"  \ --exclude="vendor"
"  \ .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags

" }}}
"
"
" No swap garbage
" {{{
set undofile
set backup
set noswapfile

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
" }}}
"
"
" LSC setup
let g:lsc_enable_autocomplete = v:false
let g:lsc_server_commands = {
  \ 'scala': 'metals-vim',
  \ 'rust': 'rls'
  \}
let g:lsc_auto_map = {
    \ 'GoToDefinition': 'gd',
    \}

au BufRead,BufNewFile *.sbt set filetype=scala
