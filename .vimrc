" Many settings taken from: https://dougblack.io/words/a-good-vimrc.html

" Colors
syntax enable           " enable syntax processing
set background=dark     " background
colorscheme solarized   " color scheme

" Spaces And Tabs
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

"" move vertically by visual line
nnoremap j gj
nnoremap k gk

"" move to beginning/end of line
"nnoremap B ^
"nnoremap E $

"" $/^ doesn't do anything
"nnoremap $ <nop>
"nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" Leader Shortcuts
let mapleader=","       " set <leader> to ,

"" jk is escape
" inoremap jk <esc>

"" toggle gundo
" nnoremap <leader>u :GundoToggle<CR>

"" edit vimrc/zshrc and load vimrc bindings
" nnoremap <leader>ev :vsp $MYVIMRC<CR>
" nnoremap <leader>ez :vap ~/.zshrc<CR>
" nnoremap <leader>sv :source $MYVIMRC<CR>

"" save session
" nnoremap<leader>s :mksession<CR>

augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
                \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END

" Backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup


