"Backup files
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos

" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

"NeoBundle 'jiangmiao/auto-pairs'
"NeoBundle 'vim-airline/vim-airline'
"NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'jistr/vim-nerdtree-tabs'
"NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'vim-scripts/AfterColors.vim'
NeoBundle 'mkitt/tabline.vim'
NeoBundle 'Valloric/ListToggle'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'w0ng/vim-hybrid'
"NeoBundle 'Raimondi/delimitMate'
"NeoBundle 'Valloric/YouCompleteMe', {
"     \ 'build'      : {
"        \ 'mac'     : './install.py --all',
"        \ 'unix'    : './install.py --all',
"        \ 'windows' : 'install.py --all',
"        \ 'cygwin'  : './install.py --all'
"        \ }
"     \ }
let g:make = 'gmake'
if system('uname -o') =~ '^GNU/'
        let g:make = 'make'
endif
"NeoBundle 'Shougo/vimproc.vim', {'build': {'mac': g:make}}

call neobundle#end()

" Required:
"filetype plugin on
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"remember last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


"blablabla
syntax on
set autochdir
set clipboard=unnamedplus
set t_Co=256
set nu
set wildmode=list
set mouse=a
set foldenable

"ColorScheme
"colorscheme base16-flat
set background=dark
let base16colorspace=256
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
colorscheme hybrid

"Tab
"set smarttab
"set autoindent
set tabstop=4        "A tab is 8 spaces
set expandtab        "Always uses spaces instead of tabs
set softtabstop=4    "Insert 4 spaces when tab is pressed
set shiftwidth=4     "An indent is 4 spaces
"set shiftround       "Round indent to nearest shiftwidth multiple

"FX shortcuts
map <silent> <F1> :YcmDiags<CR>
map <silent> <F2> :NERDTreeTabsToggle<CR>
map <silent> <F3> :TagbarToggle<CR>
map <silent> <F4> :1,%y+<CR>:echo "Yanked All"<CR>

" Tab navigation(gnome sucks)
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<Space>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<Space>

"Disable default Mapping
nnoremap <S-up> <Nop>
inoremap <S-up> <Nop>
nnoremap <S-down> <Nop>
inoremap <S-down> <Nop>
nnoremap q: <Nop>

"ctags (gnome sucks) "conclict with blablabla
"nnoremap <C-g> <C-]> 
"inoremap <C-g> <C-]>

"Airline
"let g:airline#extensions#tabline#enabled = 1
"set laststatus=2
"let g:airline_powerline_fonts = 0
"let g:airline_theme = 'base16color'
"let g:airline#extensions#whitespace#enabled = 0

"AutoPairs
"let g:AutoPairsShortcutFastWrap = '<C-o>'

"YouCompleteMe
set completeopt-=preview
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_always_populate_location_list = 1
"YCM will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 1 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''
let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info
nnoremap <silent> <S-q> :lprevious<CR>
nnoremap <silent> <S-w> :lnext<CR>
nnoremap <silent> <C-i> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>

"ListToggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>z'
