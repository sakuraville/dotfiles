" --------------------------------
"  plugins(dein) settings
" --------------------------------

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

" path settings
let $CACHE = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let $CONFIG = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME
let $DATA = empty($XDG_DATA_HOME) ? expand('$HOME/.local/share') : $XDG_DATA_HOME

" {{{ dein
let s:dein_dir = expand('$DATA/dein')
if &runtimepath !~# '/dein.vim'
  let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

  " Auto Download
  if !isdirectory(s:dein_repo_dir)
      call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
  endif

  execute 'set runtimepath^=' . s:dein_repo_dir
endif

" dein.vim settings
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let s:toml_dir = expand('$CONFIG/dein')

  call dein#load_toml(s:toml_dir . '/plugins.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
  call dein#install()
endif
" }}}

" --------------------------------
"  basic settings
" --------------------------------

" LOOKS GOOD

" show line number
set number
" show cursor position
set ruler
" syntax highlight on
syntax enable
" scroll with margins
set scrolloff=2
" deactivate start indicator
set shortmess+=I
" show invisible characters
" set list
" unified as background color
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
" colorscheme <name>
" colorscheme molokai

" TAB & INDENT

filetype plugin indent on
" space instead of tab characters
set expandtab
" tab width
set tabstop=2
" tab width with keyboard
set softtabstop=2
" autoindent tab width
set shiftwidth=2
" automatic indentation
set autoindent
set cindent

" SEARCH

" uppercase and lowercase arent distinguished
set ignorecase
" only uppercase are distinguish
set smartcase
" incremental serach
set incsearch
" delete highlight on search
set nohlsearch
" from the tail to the top
set wrapscan
" Ucase and Lcase arent distinguish on completion
set infercase
" easier to recognize parentheses
set showmatch
" showmatch[s] * 0.1
set matchtime=1

" OTHER

" enable clipboard
set clipboard+=unnamedplus
" complement command line
set wildmenu
set wildmode=list:longest,full
" enable cursorline
set cursorline
hi clear CursorLine
" open another file even if there is an unsave file
set hidden
" disable display flash
set novisualbell
" long lines are collapsed
set wrap
" disable auto-break
set textwidth=0
" number of history lines
set history=3000
" enable mouse
set mouse=a
" disable backup&swap
set nobackup
set noswapfile
" delete all using backspace
set backspace=indent,eol,start
" inoremap jj <ESC>
inoremap <silent> jj <ESC>

