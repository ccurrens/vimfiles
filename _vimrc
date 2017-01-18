scriptencoding utf-8
set encoding=utf-8

runtime bundle/vim-pathogen/autoload/pathogen.vim

set guifont=Ubuntu_Mono_derivative_Powerlin:h10:cANSI
set encoding=utf-8
" set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1

set nobackup
set nowb
set noswapfile

" Display relative line numbers
set relativenumber
" Show the current absolute line number instead of '0'
set number
set numberwidth=5

set expandtab
set tabstop=4
set shiftwidth=4
set shiftround

" Whitespace view
set list
set listchars=space:·,tab:→\ ,eol:¬,precedes:<,extends:>


""""""""""""""""""""""""""""""""""
" Key mappings
""""""""""""""""""""""""""""""""""
let mapleader = "," 
let maplocalleader = ","

" Move line down (by cuting and pasting line below current)
nnoremap <leader>- ddp

" Move line up (by pasting the line above below the current one)
nnoremap <leader>_ kddpk

" Convert current word to upper case
" viw 	<-	Select word in visual mode
" U 	<-	Convert the word to uppercase
" ea	<-	Restore the cursor position (move to end of word and enter
" 			insert after our character)
inoremap <leader><c-u> <esc>viwUea
nnoremap <leader><c-u> viwUe

" Make space more useful
nnoremap <leader><space> za

" Shortcut to edit my _vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Shortcut to source my _vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>

" Quote single word
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" Quote around visual selection
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>

" Strong H and L
nnoremap H 0
nnoremap L $

" Use jk as escape, disabling old key
inoremap jk <esc> 
inoremap <esc> <nop>

" Disable arrow keys
inoremap <down> <nop>
inoremap <up> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
noremap <down> <nop>
noremap <up> <nop>
noremap <left> <nop>
noremap <right> <nop>

""""""""""""""""""""""""""""""""""
" File-type specific
""""""""""""""""""""""""""""""""""

augroup filetype_vim
    autocmd!
    autocmd filetype vim nnoremap <buffer> <localleader>c I" <esc>
augroup END

augroup filetype_cpp
    autocmd!
    autocmd FileType cpp nnoremap <buffer> <localleader>c I// <esc>
augroup END

augroup filetype_cs
    autocmd!
    autocmd FileType cs nnoremap <buffer> <localleader>c I// <esc>
    autocmd FileType cs inoreabbrev <buffer> ret return;<left>
augroup END

""""""""""""""""""""""""""""""""""
" Airline settings
""""""""""""""""""""""""""""""""""
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'

execute pathogen#infect()

syntax on
filetype plugin indent on

if has("gui_running")
    colorscheme darkplus
endif

""""""""""""""""""""""""""""""""""
" Search settings
""""""""""""""""""""""""""""""""""
set hls " Highlight search results
noh	" Disable highlighting so that :source vimrc doesn't highlight last search

