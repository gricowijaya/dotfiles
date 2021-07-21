" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif 

call plug#begin('~/.config/nvim/autoload/plugged')
   "Ranger File Explorer integration with Nvim
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} 
   " Plug 'francoiscabrol/ranger.vim'
   " Plug 'rbgrouleff/bclose.vim'
  
   "treesiter highlighting better syntax highlighting but somehow it doesn't
   "work here'
   "Plug 'nvim-treesitter/nvim-treesitter'  
    
   "Stable version of coc (Conquer of Completion)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

