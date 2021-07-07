set nocompatible              " be iMproved, required
filetype off                  " required

syntax enable
set background=dark

let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

set rtp+=~/.vim/bundle/neobundle.vim

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

call plug#begin('~/.vim/plugged')

Plug 'Shougo/unite.vim' "use Unite to search for stuff
Plug 'Shougo/neobundle.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/neoyank.vim'  "histories of undo's
Plug 'benekastah/neomake'
Plug 'jelera/vim-javascript-syntax'
Plug 'scrooloose/nerdtree', { 'on' : ['NERDTree', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Raimondi/delimitMate'


if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

let g:deoplete#enable_at_startup = 1


call plug#end()

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

" All of your Plugins must be added before the following line
filetype plugin indent on    " required

"this is to force line endings to be in unix
set ffs=unix
set ff=unix

set softtabstop=2 "how many columns vim uses when you hit Tab in insert mode"
set shiftwidth=2 "sets the number of spaces used when shiftsind"
set tabstop=2 "how many columns a tab counts for
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

set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=list:longest
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=node_modules/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=.cache/**
set wildignore+=.tmp/**
set wildignore+=.git/**

set scrolloff=5 "Start scrolling when we're 4 lines away
set sidescrolloff=15
set sidescroll=2

"j and k will now navigate up and down through visual lines (if a line wraps,
"for the puroses of nagivation it will be treated as a seperate line
map j gj
map k gk

"leader period changes vim's directory to the current buffer's location
"leader dash changes back to what it was previously (for the sake of reseting the search location
"leader ` resets vim's directory to the base a2c directory
noremap <leader>. :cd %:p:h<CR>
noremap <leader>- :cd -<CR>
noremap <leader>` :cd ~/React/partial-call-react-ui<CR>

noremap <Tab> :bnext<CR>
noremap <S-Tab> :bprevious<CR>
nnoremap <leader>wq :w<bar>bd<CR>
nnoremap <leader>q :bd<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>v "+p
nnoremap ; :

"NERDTree configuration
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" Replace highlighted text
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left><left>


" CtrlP like behavour
nnoremap <leader><C-p> :Unite -force-redraw file_rec/async -start-insert -auto-preview -direction=botright -winheight=15<cr>
nnoremap <C-p> :Unite -force-redraw file_rec/async -start-insert -direction=botright -winheight=15<cr>

if executable('ag')
  let g:unite_source_rec_async_command=['ag', '--nocolor', '--nogroup', '--hidden', '-g', '']
endif

call unite#custom#source('file_rec/async', 'ignore_globs', split(&wildignore, ','))
call unite#custom#source('file_rec/async', 'max_candidates', 0)

" Ack Grep behavour
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_recursive_opt = ''

  let g:unite_source_grep_default_opts =
  \ '-i --line-numbers --nocolor --nogroup --hidden --ignore ' .
  \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
endif

nnoremap <leader>/ :Unite -direction=botright grep:.<cr>

" YankRing behaviour
let g:unite_source_history_yank_enable = 1
nnoremap <leader>u :Unite history/yank -direction=botright -winheight=15<cr>

" Buffer Explorer behavour
nnoremap <leader>e :Unite -no-split -auto-preview -buffer-name=buffer -winheight=15 -direction=botright buffer<cr>

" Unite buffer overrides
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')
  imap <silent><buffer><expr> <C-h> unite#do_action('split')
  nmap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  nmap <silent><buffer><expr> <C-t> unite#do_action('tabopen')
  nmap <silent><buffer><expr> <C-h> unite#do_action('split')
  imap <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <buffer> <C-k> <Plug>(unite_select_previous_line)
endfunction
