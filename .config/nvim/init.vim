filetype plugin indent on
syntax enable
set number
set noshowmode
imap jj <esc>
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader> V
vmap v <Plug>(expand_region_expand) vmap <C-v> <Plug>(expand_region_shrink)
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>t :BTags<CR>
nnoremap <Leader>T :Tags<CR>
nnoremap <CR> G
nnoremap <BS> gg
set softtabstop=2
set shiftwidth=2
set noexpandtab
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged') 
" Declare the list of plugins.
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-sensible'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/echodoc.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'deoplete-plugins/deoplete-clang'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'deoplete-plugins/deoplete-docker'
Plug 'vim-scripts/bash-support.vim'
Plug 'nikvdp/ejs-syntax'
Plug 'posva/vim-vue'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/bash-support.vim'
Plug 'gabrielelana/vim-markdown' 
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'mustache/vim-mustache-handlebars'
Plug 'dense-analysis/ale'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
let g:deoplete#enable_at_startup = 1
let g:echodoc_enable_at_startup = 1
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_mono = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
let g:deoplete#sources#clang#flags = ['-x', 'c']
let g:mustache_abbreviations = 1
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}
