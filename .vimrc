version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
set number
syntax enable
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=2
set fileencodings=ucs-bom,utf-8,default,latin1
set modelines=0
set window=0
filetype plugin on
set omnifunc=syntaxcomplete#Complete
" vim: set ft=vim :

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-surround' 
Plugin 'isRuslan/vim-es6'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'epilande/vim-es2015-snippets'


" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

set clipboard=unnamed

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

let g:syntastic_javascript_checkers = ['eslint']

let g:ctrlp_map = '<c-p>'

let g:ctrlp_cmd = 'CtrlP'

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |

let python_highlight_all=1
syntax on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-,>"
let g:UltiSnipsJumpBackwardTrigger="<c-.>"


nmap <silent> <C-t> :NERDTreeToggle<CR>
