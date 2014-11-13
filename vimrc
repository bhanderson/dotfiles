set nocompatible              " be iMproved, required
set shell=/bin/bash
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'luochen1990/rainbow'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/seoul256.vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'fatih/vim-go'
Plugin 'fatih/molokai'
Plugin 'Shougo/neocomplete.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

au VimResized * exe "normal! \<c-w>="
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

colorscheme fu
set t_Co=256			" use 256 colors"

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
let g:rainbow_active = 1
let g:seoul256_background = 233
"
" Neocomplete settings
let g:neocomplete#enable_at_startup = 1
" Use smartcase
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Define dictionary
let g:neocomplete#sources#dictionary#dictionaries = {
	\ 'default' : '',
	\ 'vimshell' : $HOME.'/.vimshell_hist',
	\ 'scheme' : $HOME.'/.gosh_completions'
	\ }
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

highlight ExtraWhitespace ctermbg=DarkGreen guibg=darkgreen
match ExtraWhitespace /\s\+\%#\@<!$/
highlight ColorColumn ctermbg=0


map ; :
map < <gv
map > >gv
map <f3> :set hlsearch!<cr>
map <f5> :tabp<cr>
map <f6> :tabn<cr>
map <f7> :tabnew<cr>
map <leader>kf gg=G``zz
map <leader>kw :%s/\s\+$//<cr>
map <leader>m <c-w><right>
map <leader>n <c-w><left>
map <leader>q :mksession! ~/Session.vim<CR>:qa<CR>
map <leader>s :!sort<cr>
map <leader>v <c-w><c-v>
map <leader>gr :GoRun<cr>
map <space> *N

nmap <F8> :TagbarToggle<CR>

noremap j gj
noremap k gk
noremap za zA

set autochdir
set cc=80
set encoding=utf-8
set foldmethod=manual
set history=50
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·,nbsp:‿ " show these hidden characters
set list				" show the characters above
set mouse=n
set nowrap
set number
set smartcase
set smartindent
set tabstop=4 shiftwidth=4 smarttab softtabstop=4
set tags=/src/.tags_$BRANCH
set textwidth=80
set viminfo='10,\"100,:20,%,n~/.viminfo
set wildmenu
set wildmode=list:longest,list


if has ("cscope")
	set csprg=/usr/bin/cscope
	set csto=1
	set cst
	set nocsverb
	cs add /src/.cscope_$BRANCH.out /src
	set csverb
	nmap <C-\> :cs find c <C-R>=expand("<cword>")<CR><CR>
endif
