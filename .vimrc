" Version 1.00.200302

" -------
" *Vundle
" -------
" Quick Start

" 1. Introduction
" Installation requires Git and trigger git clone for each configured repository to ~/.vim/bundle/ by default. Curl is required for search.

" 2. Set up Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" 3.Confure Plugins:
" Put this at the top of your .vimrc to use Vundle. Remove plugins you don't need, they are for illustration purposes.

:set nocompatible	" be improved, required
":filetype off	" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
" required
call vundle#end()	" required
filetype plugin indent on	" required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList		- lists configured plugins
" :PluginInstall	- installs plugins; append '!' to update or just :
" PluginUndate
" :PluginSearch foo	- search for foo; to refresh local cache
" :PluginClean		- confirm removal of unused plugins; append '!' to
" auto-approve remove
"
" see :h vundle for more detail or wiki for FAQ
" Put your non-Plugin stuff after this line
" 
" 4. Install Plugins:
" Launch vim and run :PluginInstall
" To install from command line: vim +PluginInstall +qall
" 
" 5. (optional)For those using the fish shell: add set shell=/bin/bash to your .vimrc

" -------------------
" Plugin vim_markdown
" -------------------
let g:vim_markdown_folding_disable=1
let g:vim_markdown_override_foldtext=0
let g:vim_markdown_folding_level=6
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_emphasis_multiline=0
set conceallevel=2
let g:vim_markdown_frontmatter=1

" ------
" *Color
" ------

" scheme:blue,delek,evening,murphy,torte,darkblue,desert,koehler,pablo,ron,zellner,default,elflord,mornig,peachpuff,shine
" git clone https://github.com/morhetz/gruvbox.git ~./vim/pack/default/start/grubox
" background value:dark or light 
:colorscheme gruvbox
:set background=dark

" -----
" Mouse
" -----

" mouse enable
:set mouse=a
:set selection=exclusive
:set selectmode=mouse,key


" -----------
" key mapping
" -----------

" use CTRL+C copy the text selected
vmap <C-c> "+y


" --------------
" *Spell & Check
" --------------

" text code
:set encoding=utf-8


" spell check
":set spell spelllang=en_us


" disable error warning sounds
:set noerrorbells


" syntax highlight
:syntax on


" -------------------
" *Indentation & Tabs
" -------------------

" -To automatically align the indentation of a line in a file
":set autoindent


" -Smart indent uses the code syntax and style to align
:set shiftwidth=4


" -To set the number of spaces to display for a tab
:set tabstop=4


" -The set the number of spaces to display for a shift operation(such as >> or <<)
:set shiftwidth=4


" -Use spaces instead of tabs
":set expandtab


" -----------------
" *Display & Format
" -----------------

" -Show line number
:set number


" -To wrap text when it crosses the maximum line width
:set textwidth=80


" -To wrap text based on a number of columns from the right side
:set wrapmargin=2


" -To identify open and close brace positions when you traverse through the file
" :set showmatch


" -------
" *Search
" -------

" -Highlight the searched term in a file
:set hlsearch


" -To perform incremental searches as you type
:set incsearch


" ------------
" *FILE:PYTHON
" ------------


" -Use spaces instead of tabs when edit a python file
autocmd FileType python set expandtab

" The key to run python program
autocmd FileType python map <F12>:!python3 %<CR>
