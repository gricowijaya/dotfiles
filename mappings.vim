" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>
"
" " I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" " Easy CAPS
" inoremap <c-u> <ESC>viwUi
" nnoremap <c-u> viwU<Esc>
"
" " TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" " SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
"
" Alternate way to save
nnoremap <C-s> :w<CR>
" " Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" " Use control-c instead of escape
" nnoremap <C-c> <Esc>
" " <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"
" " Better tabbing
vnoremap < <gv
vnoremap > >gv
"
" " Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" settings function for the pair completion  
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
" what it basically do is just pair the parenthesis u need 
function! ConditionalPairMap(open, close)
  let line = getline('.')
  let col = col('.')
  if col < col('$') || stridx(line, a:close, col + 1) != -1
    return a:open
  else
    return a:open . a:close . repeat("\<left>", len(a:close))
  endif
endf
inoremap <expr> ( ConditionalPairMap('(', ')')
inoremap <expr> { ConditionalPairMap('{', '}')
inoremap <expr> [ ConditionalPairMap('[', ']')
inoremap <expr> < ConditionalPairMap('<', '>')
inoremap <expr> " ConditionalPairMap('"', '"')
inoremap <expr> ' ConditionalPairMap("'", "'")

" disable the default keymapping for ranger which is \f for the Plugins, i use
" different plugins at
" /home/gricowijaya/.config/nvim/plugins/plug-config/rnvimr.vim
" let g:ranger_map_keys = 0
" map <leader>f :Ranger<CR>

"open ranger when vim open a directory
let g:ranger_replace_netrw = 1 

