" Alec Turnbull's .vimrc
" alecturnbull.com
" @alecturnbull


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set up bundling with pathogen
  call pathogen#infect()

" Syntax highlighting
  syntax on      

" Enable filetype plugin
  filetype plugin indent on

" set history (default is 20)
  set history=1000       

" turn of backup (stored in git anyway) and better for performance
  set nobackup
  set nowb
  set noswapfile
 
" formatting for JSON
  autocmd BufNewFile,BufRead *.json set ft=javascript

" toggle pastemode for copying from outside vim
  set pastetoggle=<F2>

" remap leader key
  let mapleader=","

" Add JavaScript syntax highlighting (custom)
"  au FileType javascript call JavaScriptFold()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Colors {
  set background=dark
  colorscheme solarized
  "colorscheme wombat
  "colorscheme distinguished
" }


" Lines and Cursor {
  set wrap         
  set ruler
  " Line numbers
    set nu 
" }

" Searching {
  set ignorecase
  " Smart match cases
    set smartcase
  " Highlighting
    set hlsearch
" }

"  ETC {
  " Don't redraw while executing macros (good for performance)
    set lazyredraw

  " No sound on errors
    set noerrorbells
    set novisualbell
    set t_vb=
    set tm=500
" }



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Be smart about tabs
  set smarttab

" Use 2 spaces instead of tabs
  set expandtab
  set shiftwidth=2
  set softtabstop=2

" Auto indent
  set ai

" Smart indent
  set si

  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabs and Windows
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fast window navigation using Ctrl + H/J/K/L
map <C-h> <C-W>h<15C-W>_
map <C-j> <C-W>j<15C-W>_
map <C-k> <C-W>k<15C-W>_
map <C-l> <C-W>l<15C-W>_

" Don't display line number of each window
set wmh=0

" Fast next / previous tabbing
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkeys
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" New line below without entering insert mode
map <CR> o<Esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NERDTree
:let NERDTreeQuitOnOpen = 0

