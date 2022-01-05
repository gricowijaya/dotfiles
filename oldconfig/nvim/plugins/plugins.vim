" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif 

call plug#begin('~/.config/nvim/autoload/plugged')
    "Discord Rich Presense
    Plug 'andweeb/presence.nvim'
    "FZF 
    Plug 'junegunn/fzf',{'dir':'~/.fzf','do':'./install --all'} 
    "Auto Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "LaTex
    Plug 'lervag/vimtex'
    Plug 'Konfekt/FastFold'
    Plug 'matze/vim-tex-fold'
    "Web Development
    Plug 'mattn/emmet-vim' 
    "Tags for classes
    Plug 'preservim/tagbar'
    " status
    Plug 'ourigen/skyline.vim'
    " Nerd Tree
    Plug 'preservim/nerdtree'
    " Nerd Tree git plugin
    Plug 'Xuyuanp/nerdtree-git-plugin'
    " Nerd Tree Visual Selection (dunno what it is)"
    Plug 'PhilRunninger/nerdtree-visual-selection'
    " Devicons
    Plug 'ryanoasis/vim-devicons'
    " NerdTree
    Plug 'scrooloose/nerdtree-project-plugin'
    " Startify"
    Plug 'mhinz/vim-startify'
    " For Comments
    Plug 'tpope/vim-commentary'
    " Markdown Preview"
    " Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()


let NERDTreeShowHidden=1

