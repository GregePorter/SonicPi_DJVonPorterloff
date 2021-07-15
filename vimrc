set nocompatible
filetype off

syntax enable
set background=dark

hi MatchParen cterm=bold ctermbg=none ctermfg=magenta "hightlight color for matching brackets 
 
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

call plug#begin('~/.vim/plugged')
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTree'] }
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf'
    Plug 'Raimondi/delimitMate'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
call plug#end()

let g:deoplete#enable_at_startup = 1

let g:NERDTreeIndicatorMapCustom = {
     \"Modified"  : "✹",
     \"Staged"    : "✚",
     \"Untracked" : "✭",
     \"Renamed"   : "➜",
     \"Unmerged"  : "═",
     \"Deleted"   : "✖",
     \"Dirty"     : "✗",
     \"Clean"     : "✔︎",
     \"Unknown"   : "?"
     \}

set ffs=unix
set ff=unix

noremap <leader>t :NERDTree<CR>
noremap <leader>f :FZF<CR>

nnoremap <leader><Tab> :bnext<CR>
nnoremap <leader><S-Tab> :bprevious<CR>
nnoremap <leader>wq :w<bar>bd<CR>
nnoremap <leader>q :bd<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>v "+p
nnoremap ; :

"Run specific Go file"
nnoremap <leader>r :GoRun %
nnoremap <leader>b :GoBuild<CR>
set softtabstop=4 "how many columns vim uses when you hit Tab in insert mode"
set shiftwidth=4 "sets the number of spaces used when shiftsind"
set tabstop=4 "how many columns a tab counts for
set smarttab "inset softtapstop of tabstop when Tab is pressed
set autoindent "copy indent from current line when starting a new line
set expandtab "insert space when tab is pressed"
set number "Show line numbers
set nowrap "vim doesn't wrap lines (you'll have to scroll to the right)
set hlsearch "highlight search match
set incsearch "higlights search match as you type
set smartcase "if a search pattern contains a capital, case matter, otherwise it doesn't
set ignorecase "ignore case by default when searching
set laststatus=1  "display the status line always"
set undofile "keeps track of a files undo history in a file (so it perists)
set exrc "makes sure vim only runs off of the one .vimrc
set secure "similar to exrc, this sets vim to run off of the ~/.vimrc"
set backspace=eol,start,indent "Backspace will move back a word, and keep going through to the next line
set showmatch "when searching the cursor will briefly jump to the matching brace
set cursorline "highlights the line the cursor is on
set showcmd "bottom line will show infor about the current command going on
set ruler "the bottom right hand corner of the window will show the row and colum number relative to the cursor
set backup "Make a backup before overwriting a file
set backupdir=~/.vim/backups "sets the location of the backup
set directory=~/.vim/tmp "sets the location of the tmp directory
set undodir=~/.vim/undo "sets the location of the undo files
set pastetoggle=<F2> "Allows you to paste from the sytem clipboard after pressing F2
set grepprg=ag "sets grep to use Ag which is similar to Ack - make sure you install The Silver Search with brew install the_silver_seacher
set shiftround ">> will push the line shiftwidth-1
set nofoldenable "all folds are open
set tags=.tags; "sets the location of the tag file
set hidden "allows for hidden buffers, so you can change buffers without having to save

set scrolloff=5 "Start scrolling when we're 4 lines away
set sidescrolloff=15
set sidescroll=2

noremap <leader>. :cd %:p:h<CR>
