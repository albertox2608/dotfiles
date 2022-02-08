" Color scheme
if has('termguicolors')
  set termguicolors
endif
let g:edge_style = 'aura'
let g:edge_enable_italic = 1
let g:edge_disable_italic_comment = 1
colorscheme edge

" Prettier
packloadall

" lightline
let g:lightline = { 'colorscheme': 'edge' }

" Ale
" Mostrar mejor mensajes de error
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Airline
let g:airline#extensions#tabline#enabled = 1 " mostar ventanas abiertas
let g:airline#extensions#tabline#fnamemod = ':t' " mostar solamente el nombre del archivo
let g:airline_theme='edge'
let g:airline_powerline_fonts = 1 " cargar fuente powerline
set noshowmode

" Coc
let g:coc_global_config="$HOME/.config/nvim/coc-settings.json" " directorio de configuracion coc
let g:coc_snippet_next = '<c-j>' " Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>' " Use <C-k> for jump to previous placeholder, it's default of coc.nvim

" Gitgutter
" Actualizar barra cada 500 mili segundos
set updatetime=500
let g:gitgutter_max_signs = -1
nmap ]h <Plug>(GitGutterNextHunk)
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}
let g:gitgutter_enabled = 1 " activar gitgutter predeterminadamente
let g:gitgutter_highlight_linenrs = 1 " activar el resaltado de números de línea de forma predeterminada
"let g:gitgutter_highlight_lines = 1 " activar el resaltado de líneas de forma predeterminada
" SignsColor
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" Nerdcommenter
let g:NERDCreateDefaultMappings = 1 " Create default mappings
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left' " Align line-wise comment delimiters flush left instead of following code indentation
" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = {'lua': { 'left': '--[[','right': ']]--' }, 'c': { 'left': '/**','right': '*/' }}
let g:NERDCommentEmptyLines = 1 " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1 " Enable NERDCommenterToggle to check all selected lines is commented or not 

" SuperTabCompletion
let g:SuperTabDefaultCompletionType = '<c-n>' " Invertir direccion de navegacion (de arriba a abajo)

" Webdevicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
"let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = 'ƛ'
"let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
