set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'vim-utils/vim-man' 
Plugin 'jremmen/vim-ripgrep' 
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-syntastic/syntastic' 
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
" Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy file and buffer finder
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'itchyny/lightline.vim' "status bar improvement
Plugin 'tomtom/tcomment_vim' " Comment toggler
Plugin 'easymotion/vim-easymotion' " Easy navigation through page
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Valloric/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround' 
Plugin 'tpope/vim-unimpaired'
Plugin 'mbbill/undotree'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
"
"--------------------- MY SETTINGS--------------------------------
let mapleader = " "
set updatetime=100
syntax on
set termguicolors
let g:gruvbox_italic = 1

set bg=dark
set autoindent
" set filetypeindent on " Enable indentation rules that are file-type specific. 
set shiftround " When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set shiftwidth=4 " When shifting, indent using four spaces.
set smarttab " Insert “tabstop” number of spaces when the “tab” key is pressed.
set tabstop=4 " Indent using four spaces.
set hlsearch " Enable search highlighting.
set ignorecase " Ignore case when searching.
set incsearch " Incremental search that shows partial matches.
set smartcase " Automatically switch search to case-sensitive when search query contains an uppercase letter.
set complete-=i " Limit the files searched for auto-completes.
set lazyredraw " Don’t update screen during macro and script execution.
set smartindent
set colorcolumn=80
highlight Colorcolumn ctermbg=0 guibg=lightgrey

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Quicker window movement
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-h> <C-w>h
" nnoremap <C-l> <C-w>l


" Text rendering options

set display+=lastline " Always try to show a paragraph’s last line.
set encoding=utf-8 " Use an encoding that supports unicode.
set linebreak " Avoid wrapping a line in the middle of a word.
set scrolloff=1 " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5 " The number of screen columns to keep to the left and right of the cursor.
syntax enable " Enable syntax highlighting.
set wrap " Enable line wrapping.

" UI options

set laststatus=2 " Always display the status bar.
set wildmenu " Display command line’s tab complete options as a menu.
set relativenumber " Show line number on the current line and relative numbers on all other lines.
set title " Set the window’s title, reflecting the file currently being edited.
set showcmd " Show command
" setting for vim-indent-guides
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1

" Start Nerdtree when vim is opened without a filename
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" Code Folding

" set foldmethod=indent " Fold based on indention levels.
" set foldnestmax=3 " Only fold up to three nested levels.

" Misc. Options

nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>gm :GitGutterNextHunk<Enter>
nnoremap <Leader>gn :GitGutterPrevHunk<Enter>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>q :wincmd q<CR>
nnoremap <leader>r :e ~/dotfiles/.vimrc<CR>
nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
" Close all buffers except current one
nnoremap <leader>bd :<c-u>up <bar> %bd <bar> e#<cr>

set confirm " Display a confirmation dialog when closing an unsaved file.
set dir=~/.cache/vim " Directory to store swap files.
set formatoptions+=j " Delete comment characters when joining lines.
set hidden " Hide files in the background instead of closing them.
set history=1000 " Increase the undo limit.
set nomodeline " Ignore file’s mode lines; use vimrc configurations instead.
set noswapfile " Disable swap files.
set nrformats-=octal " Interpret octal as decimal when incrementing numbers.
" Splits
set splitbelow
set splitright


" BufExplorer options. 
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>
set autoread " Automatically re-read files if unmodified inside Vim.
set backspace=indent,eol,start " Allow backspacing over indention, line breaks and insertion start.
" set backupdir=~/.cache/vim " Directory to store backup files.
set confirm " Display a confirmation dialog when closing an unsaved file.
set dir=~/.cache/vim " Directory to store swap files.
set formatoptions+=j " Delete comment characters when joining lines.
set hidden " Hide files in the background instead of closing them.
set history=1000 " Increase the undo limit.
set nomodeline " Ignore file’s mode lines; use vimrc configurations instead.
set noswapfile " Disable swap files.
set nrformats-=octal " Interpret octal as decimal when incrementing numbers.
" set shell " The shell used to execute commands.
set spell " Enable spellchecking.
set wildignore+=.pyc,.swp " Ignore files matching these patterns when opening files based on a glob pattern.
let g:gitgutter_async=0 
" Mappings
inoremap jh <Esc>
nmap \t :GitGutterLineHighlightsToggle <Enter>
" map <C-v> "+P
map <Return> o<Esc>
vnoremap <C-c> "*y :let @+=@*<CR>
set clipboard=unnamed
nnoremap <F5> :buffers<CR>:buffer<Space>
nmap <F6> :NERDTreeToggle<CR>
nmap <F7> :CtrlP .<Return>

set wildchar=<Tab> wildmenu wildmode=full

" syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" make markdown bold surround possible
let g:surround_{char2nr('m')} = "\1Surround: \1\r\1\1"
let g:surround_{char2nr('b')} = "**\r**"

augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
  autocmd BufRead,BufNewFile aliases.local,zshrc.local,*/zsh/configs/* set filetype=sh
  autocmd BufRead,BufNewFile gitconfig.local set filetype=gitconfig
  autocmd BufRead,BufNewFile tmux.conf.local set filetype=tmux
  autocmd BufRead,BufNewFile vimrc.local set filetype=vim
augroup END
if executable('rg')
	let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] 
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:ctrlp_use_caching = 0

vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
set timeoutlen=1000
set ttimeoutlen=5
" options for fzf
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-o> :Buffers<CR>

colorscheme gruvbox
"Open vimrc in vertical split
