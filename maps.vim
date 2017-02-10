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
nmap <silent> <C-p> <Plug>(ale_previous_wrap)
nmap <silent> <C-n> <Plug>(ale_next_wrap)
noremap <F5> :GundoToggle<CR>

