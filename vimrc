call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'chikamichi/mediawiki.vim'
Plug 'chriskempson/base16-vim'
Plug 'flazz/vim-colorschemes'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
call plug#end()

au BufRead,BufNewFile *.log set filetype=messages
"colorscheme base16-atelierdune
colorscheme seoul256
cscope add ~/git/cscope.out ~/git
let g:rainbow_active = 1
let mapleader = ","
map ; :
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-Left> <c-w>h
map <c-Down> <c-w>j
map <c-Right> <c-w>l
map <c-Up> <c-w>k
map <f3> :set hlsearch!<cr>
map <f9> :TagbarToggle<cr>
map <f10> :setlocal spell! spelllang=en_us<CR>
map < <gv
map < <gv
map > >gv
map > >gv
map <leader>kf gg=G``zz
map <leader>kw :%s/\s\+$//<cr>
map <leader>m <c-w><right>
map <leader>n <c-w><left>
map <leader>s :!sort<cr>
map <leader>v <c-w><c-v>
map <space> *Nzz
nmap <C-\> :cs find c <C-R>=expand("<cword>")<CR><CR>
set autochdir
set autoindent
set cc=80
set cursorcolumn
set cursorline
set dir=/var/tmp
set expandtab
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lcs=tab:▸\ ,eol:¶,extends:❯,precedes:❮,trail:·
set list
set listchars=tab:▸\ ,eol:¶,extends:❯,precedes:❮,trail:·
set mouse=a
set nocompatible
set nowrap
set nowrapscan
set number
set shiftwidth=4
set smartcase
set swapfile
set tabstop=4
set tags=~/git/tags
set t_Co=256
set textwidth=80
set wildmenu
set wildmode=longest,list,full
syntax enable

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
