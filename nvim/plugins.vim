
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'voldikss/vim-floaterm'
Plug 'tzachar/cmp-ai'

" nvim-cmp and its dependencies
Plug 'hrsh7th/nvim-cmp'                " The completion plugin
Plug 'hrsh7th/cmp-nvim-lsp'            " LSP source for nvim-cmp
Plug 'hrsh7th/cmp-buffer'              " Buffer completions
Plug 'hrsh7th/cmp-path'                " Path completions
Plug 'hrsh7th/cmp-vsnip'               " Vsnip source for snippets
Plug 'hrsh7th/vim-vsnip'               " Snippet support
Plug 'petertriho/cmp-git'              " Git completions for nvim-cmp
Plug 'nvim-lua/plenary.nvim'           " Required for cmp-git

call plug#end()



