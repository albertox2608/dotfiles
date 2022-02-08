" Custom
nmap <F5> :source ~/.config/nvim/init.vim <CR>
nmap <F7> :w <CR>
nmap <F8> :NERDTreeFind <CR>
nmap <F12> :q! <CR>

" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko
inoremap {{ {}<Esc>i
inoremap (<CR> (<CR>)<Esc>ko
inoremap (( ()<Esc>i
inoremap [<CR> [<CR>]<Esc>ko
inoremap [[ []<Esc>i
inoremap "<CR> ""<Esc>i
inoremap '<CR> ''<Esc>i
inoremap `<CR> ``<Esc>i

" Map ctrl-movement keys to window switching 
map <C-k> <C-w><Up> 
map <C-j> <C-w><Down> 
map <C-l> <C-w><Right> 
map <C-h> <C-w><Left>
" Switch to alternate file 
nmap <C-n> :bnext <CR>
nmap <C-p> :bprevious <CR>

" Coc
" activar sugerencias ctrl+space
inoremap <silent><expr> <c-space> coc#refresh()
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>" 
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Nerdcommenter
"nnoremap ,c :call NERDComment(0,"toggle")<CR>
"vnoremap ,c :call NERDComment(0,"toggle")<CR>
nmap // <leader>c<space>
vmap // <leader>cs
"nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>
"nmap <C-_> <Plug>NERDCommenterToggle
" nmap <C-_> <Plug>NERDCommenterToggle
" vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NerdTree
map <F2> :NERDTreeToggle<CR>

" Fzf
nmap <C-y> :Files<CR>
" SuperTabCompletion

" remapear shift + tab
"nnoremap <S-Tab> <<
"inoremap <S-Tab> <C-d>
