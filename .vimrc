" Pathogen
execute pathogen#infect()

" Colors
syntax enable           " enable syntax processing
set background=dark     " background
colorscheme solarized   " color scheme

" Spaces And Tabs
set shiftwidth=4        " number of spaces to use for (auto)indent
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces

" highlight tabs and trailing spaces
set listchars=tab:>-,trail:~
set list

" UI Config
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
set colorcolumn=80      " highlight the 80th column!

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds be default
set foldnestmax=10      " 10 nested fold max
" nnoremap <space> za     " space open/closes folds
set foldmethod=indent   " fold based on indent level

" Movement

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Backups
set noswapfile          " disable backup
" Pyret Syntax Highlighting
au BufNewFile,BufRead *.arr setlocal ft=pyret
au BufNewFile,BufRead *.jarr setlocal ft=javascript
