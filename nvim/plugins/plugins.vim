" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif 

call plug#begin('~/.config/nvim/autoload/plugged')
    " LSP with lua
   
    " Plug 'neovim/nvim-lspconfig'
    " For Laravel Development
    Plug 'tpope/vim-dispatch'             "| Optional
    Plug 'tpope/vim-projectionist'        "|
    Plug 'noahfrederick/vim-composer'     "|
    Plug 'noahfrederick/vim-laravel'
    
    " Blade highlighting
    Plug 'jwalton512/vim-blade'
    
    " Distraction Free
    " Plug 'junegunn/goyo.vim'
    " Plug 'junegunn/limelight.vim'
    
    " Markdown Format
    " tabular plugin is used to format tables
    Plug 'godlygeek/tabular'
    " JSON front matter highlight plugin
    Plug 'elzr/vim-json'
    Plug 'plasticboy/vim-markdown'
   
    " if you don't have node and yarn, use pre build
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

    " syntax for pandoc 
    Plug 'vim-pandoc/vim-pandoc-syntax'

    " Collaborative Instant
    " Plug 'jbyuki/instant.nvim'
    
    " Telescope "
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    
    "Tab Buffers"
    " Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
    
    Plug 'ryanoasis/vim-devicons' " Icons without colours
    Plug 'akinsho/bufferline.nvim'

    " Theme
    " Plug 'tjdevries/colorbuddy.vim'
    " Plug 'RishabhRD/nvim-rdark'
    
    " Wal Using plug
    Plug 'dylanaraps/wal.vim'
    
    " onehalf Theme
    " Plug 'sonph/onehalf'

    " Github Theme
    " Plug 'projekt0n/github-nvim-theme'
   
    " Dracula Theme
    " Plug 'Mofiqul/dracula.nvim'
    
    " Gruvy Theme"
    " Plug 'rktjmp/lush.nvim'
    " Plug 'RishabhRD/gruvy'
    
    " Falcon
    " Plug 'fenetikm/falcon'
    
    " Discord Rich Presense
    " Plug 'andweeb/presence.nvim'
    
    " FZF 
    " Plug 'junegunn/fzf',{'dir':'~/.fzf','do':'./install --all'} 
    
    " Auto Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " LaTex
    Plug 'lervag/vimtex'
    Plug 'Konfekt/FastFold'
    Plug 'matze/vim-tex-fold'

    " Web Development
    Plug 'mattn/emmet-vim' 
    
    " Tags for classes
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

    " Startify"
    Plug 'mhinz/vim-startify'

    " For Comments
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-unimpaired'
    Plug 'wellle/targets.vim'


    " Markdown Preview"
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()


let NERDTreeShowHidden=1

" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

" do not close the preview tab when switching to other buffers
let g:mkdp_auto_close = 0

" Pandoc
augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

" Blade template
" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = ['datetime', 'javascript']

" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }

autocmd BufNewFile,BufRead *.blade.php set filetype=blade

colorscheme wal
