set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Bundles
Bundle 'flazz/vim-colorschemes'
Bundle 'gmarik/vundle'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'wincent/Command-T'
Bundle 'Valloric/YouCompleteMe'

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.cpp match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufWritePost .vimrc so ~/.vimrc "reload .vimrc on every save
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au VimResized * exe "normal! \<c-w>="

call matchadd('ColorColumn', '\%81v', 100)

colorscheme molokai

filetype plugin on

highlight BadWhitespace ctermbg=0 guibg=red
highlight ColorColumn ctermbg=magenta

iabbrev (c) ©
iabbrev ldis ಠ_ಠ
iabbrev lhap ಥ‿ಥ
iabbrev lmis ಠ‿ಠ
iabbrev lsad ಥ_ಥ
iabbrev (r) ®
iabbrev tflip (╯°□°）╯︵ ┻━┻)
iabbrev (tm) ™

let mapleader = ","		" set comma to leader
let maplocalleader = "\\" " keep backslash as a localleader
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:clang_library_path = '/usr/lib/llvm-3.4/lib'
let g:ycm_autoclose_preview_window_after_completion = 1

imap {<CR> {<CR>}<Esc>O
imap <f1> <esc>

map ; :
map <c-o> :NERDTreeToggle<cr>
map <f1> <esc>
map <f3> :set hlsearch!<cr>
map <f6> :YcmDiags<cr>
map <f7> :set spell!<cr>
map <f8> :TagbarToggle<cr>
map < <gv
map > >gv
map <leader>kf gg=G``zz
map <leader>kw :%s/\s\+$//<cr>
map <leader>m <c-w><right>
map <leader>n <c-w><left>
map <leader>q :mksession! ~/Session.vim<CR>:qa<CR>
map <leader>s :!sort<cr>
map <leader><tab> :Sscratch<cr>
map <leader>v <c-w><c-v>
map <leader>w <c-w><c-w>
map <Leader>za <Esc>`<kzfgg`>jzfG`<
map <space> *N
map / /\v

noremap j gj
noremap k gk

set autochdir
set autoindent
set completeopt-=preview
set clipboard=unnamed	" set the clipboard to linux
set encoding=utf-8		" use utf-8 as the encoding
set fileformat=unix		" use unix style line endings
set foldmethod=indent	" 
set history=50			" keep 50 commands in history"
set hlsearch			" highlight search values"
set ignorecase			" with smartcase
set incsearch			" find all search critera
set laststatus=2		" use two lines for command
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·,nbsp:‿ " show these hidden characters
set list				" show the characters above
set nobackup			" do not use a backup file
set nocompatible
set noerrorbells		" dont ding at me
set noswapfile			" dont use a swap file
set nowrap
set nowrap				" dont wrap text in the window
set number				" show me the line numbers
set scrolloff=5			" if I get within 5 lines of top or bottom scroll for me
set shell=bash
set showcmd				" show partial commands
set showmatch			" show matching braces
set sidescroll=1		" minimal number of colums to scroll
set sidescrolloff=10	" same as scrolloff but left and right
set smartcase			" ignore case if search is all lowercase else case sensitive
set smartindent
set tabstop=4 shiftwidth=4 smarttab softtabstop=4
set tags=./tags;
set t_Co=256			" use 256 colors"
set textwidth=80
set textwidth=80		" lines are 80 characters long
set title				" set the title to the filename
set visualbell			" flash the screen if a bell is supposed to sound
set wildmode=full		" see help"

syntax on
