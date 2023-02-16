" general settings
let mapleader = " "             " set leader key to space

if ! filereadable(system('echo -n "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

set title
set path+=**                    " searches current directory recursively.

set nocompatible                " necessary for several cool vim things

set tabstop=4 softtabstop=4     " sets tabs equal to 4 spaces
set shiftwidth=4                " sets shift width to 4 spaces
set expandtab                   " converts tabs to spaces
set smartindent                 " attempts to properly indent

set showcmd                     " shows current command
set showmode                    " shows current mode

filetype plugin on

syntax on                       " enables syntax highlighting
syntax enable

set number                      " shows line numbers
set relativenumber              " shows line numbers relative to the cursor position

set nowrap                      " does not allow lines to wrap

set ignorecase                  " ignores case when searching
set smartcase                   " turns on case sensitive search when letters are capitalized
set incsearch                   " sets incremental search

set scrolloff=8                 " starts scrolling the page when cursor is # lines from the bottom

set encoding=utf-8

set nohlsearch                    " turns on highlight after enter is pressed when searching

set mouse=a                     " mouse scrolling

set clipboard+=unnamedplus      " sets the clipboard so you can paste stuff from outside vim into vim.

set complete+=kspell            " auto complete with spellcheck
set completeopt=menuone,noinsert,noselect " auto complete menu (It's pretty great)

set signcolumn=yes

set hidden

set noerrorbells

set termguicolors

set cmdheight=2

set updatetime=50

set colorcolumn=80

" PLUGINS

"call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
call plug#begin()
Plug 'https://github.com/bling/vim-airline'
Plug 'vifm/vifm.vim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/vim-python/python-syntax'
Plug 'https://github.com/ap/vim-css-color'
Plug 'vim-scripts/AutoComplPop'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()

colorscheme nord          " sets color scheme to gruvbox
highlight Normal guibg=none

set splitbelow splitright       " sets split behavior

set laststatus=2                " always show statusline

" remap split navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" adjust split sizes easier
noremap <silent> <C-Left> :vertical resize -3<CR>
noremap <silent> <C-Right> :vertical resize +3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>

" open a terminal inside nvim
map <leader>tt :vnew term://bash<CR>

" change 2 split windows from vertical to horizontal or vice versa
map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K

" remap ESC to kj
:imap CapsLock <Esc>
:imap jk <Esc>
:imap kj <Esc>

" open vifm in a vertical split
nnoremap <leader>vs:vsplit<CR>:VsplitVifm<CR>

" remove  trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" automatically close brackets and parenthesis and place cursor inside
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>0
inoremap {;<CR> {<CR>};<ESC>0

" automatically close comments in C by pressing */ and place cursor inside
inoremap */ /**/<left><left>
