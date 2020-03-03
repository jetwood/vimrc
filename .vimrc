" Version 1.00.200302

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
