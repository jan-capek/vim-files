" PLUGINS & SETTING ----------------------------------------------------------
" {{{

" Base path for VIM/NVIM
if has('nvim')
  let vim_base_path = stdpath('config')
else
  let vim_base_path = '~/.vim'
endif

" Install vim-plug if missing
let plug_install = 0
let autoload_plug_path = vim_base_path . '/autoload/plug.vim'
if empty(glob(autoload_plug_path))
    silent exe '!curl -fL --create-dirs -o ' . autoload_plug_path .
        \ ' https://raw.github.com/junegunn/vim-plug/master/plug.vim'
    execute 'source ' . fnameescape(autoload_plug_path)
    let plug_install = 1
endif
unlet autoload_plug_path

" Plugins
call plug#begin(vim_base_path . '/plugged')

""""""""" NETRW - settings
let g:netrw_banner=0
let g:netrw_keepdir=0
let g:netrw_liststyle=0
let g:netrw_alto=&sb
let g:netrw_altv=&spr
let g:netrw_preview=1
let g:netrw_browse_split=4
let g:netrw_winsize=40
let g:netrw_silent=1
"let g:netrw_quiet=1
"let g:netrw_use_errorwindow=1
"set autochdir

""""""""" EDITORCONFIG
Plug 'editorconfig/editorconfig-vim'

""""""""" COLORS
"Plug 'vim-scripts/tir_black'
Plug 'tomasr/molokai'
"Plug 'zenorocha/dracula-theme'
"Plug 'vim-scripts/northland.vim'
"Plug 'Colour_Sampler_Pack'
"Plug 'flazz/vim-colorschemes'
"Plug 'vim-scripts/ScrollColors'
"Plug 'vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'

""""""""" SYNTAX HIGHLIGHTING
Plug 'sheerun/vim-polyglot'
"Plug 'elubow/cql-vim'

""""""""" FOLDING
Plug 'Konfekt/FastFold'
"Plug 'pseewald/vim-anyfold'
"let anyfold_activate=1
"let anyfold_fold_display = 1
"let anyfold_identify_comments = 1
"let anyfold_fold_comments = 1

""""""""" BBYE (buffer)
Plug 'moll/vim-bbye'
Plug 'rbgrouleff/bclose.vim'

""""""""" RANGER
" Plug 'francoiscabrol/ranger.vim'
" let g:ranger_map_keys = 0
" map <leader>m :Ranger<CR>

""""""""" LINE WRAP
"Plug 'bronson/vim-toggle-wrap'


""""""""" NERDTREE
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/Toggle-NERDTree-width'
let g:NERDTreeWinSize=40
let g:NERDTreeShowBookmarks=1
"let g:NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeDirArrows = 0
"let NERDTreeQuitOnOpen = 1
"autocmd VimEnter * NERDTree

""""""""" TCOMMENT
Plug 'tomtom/tcomment_vim'

""""""""" TAGBAR
Plug 'majutsushi/tagbar'
let g:tagbar_width = 40
let g:tagbar_left = 0
let g:tagbar_sort = 0

""""""""" AIRLINE, POWERLINE FONTS
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lokaltog/powerline-fonts'
"let g:airline_powerline_fonts = 1
"let g:airline_theme = 'powerlineish'
let g:airline_theme = 'light'
"let g:airline_solarized_bg='light'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#show_buffers = 0
"let g:airline_section_z =

""""""""" AUTO-PAIRS, MATCHIT, MATCHTAG
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/matchit.zip'
Plug 'gregsexton/MatchTag'

""""""""" EASYMOTION
Plug 'Lokaltog/vim-easymotion'

""""""""" VIM8 compatibility layer
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'

""""""""" SHELL
"Plug 'Shougo/vimshell.vim'
"Plug 'oplatek/Conque-Shell'
"Plug 'wkentaro/conque.vim'

""""""""" LEADERF
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

""""""""" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

""""""""" LANGUAGE SERVER (CLIENT)
"Plug 'autozimu/LanguageClient-neovim', { 'rev' : 'next',  'build': 'bash install.sh' }

""""""""" ULTISNIP, EMMET
"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'mattn/emmet-vim'
"Plug 'rstacruz/sparkup'

""""""""" DIRDIFF
Plug 'vim-scripts/DirDiff.vim'

""""""""" GIT - FUGITIVE, MERGINAL, GITGUTTER
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'
Plug 'airblade/vim-gitgutter'
"Plug 'gregsexton/gitv'
"Plug 'neoclide/denite-git'

""""""""" XML
Plug 'sukima/xmledit'
let g:xml_syntax_folding=1

""""""""" MUNDO - undo tree
Plug 'simnalamburt/vim-mundo'
let g:mundo_right = 1
let g:mundo_width = 40
let g:mundo_preview_height = 20

""""""""" VIM-EXTRAS
Plug 'jan-capek/vim-extras'

""""""""" PYTHON
Plug 'jmcantrell/vim-virtualenv'
"Plug 'Glench/Vim-Jinja2-Syntax'
"Plug 'lepture/vim-jinja'
"Plug 'ivanov/vim-ipython'
"Plug 'clericJ/pyinteractive-vim'
"Plug 'tmhedberg/SimpylFold'

""""""""" PHP
"Plug 'roxma/LanguageServer-php-neovim', { 'build': 'composer install && composer run-script parse-stubs' }
Plug 'swekaj/php-foldexpr.vim'
"Plug 'rayburgemeestre/phpfolding.vim'

""""""""" JAVASCRIPT / JSX
"Plug 'pangloss/vim-javascript'
"Plug 'isRuslan/vim-es6'
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 1 " Allow JSX in normal JS files
"Plug 'ternjs/tern_for_vim', { 'build': 'npm install' }
"Plug 'carlitux/deoplete-ternjs', { 'build': 'npm install -g tern' }
"Plug 'wokalski/autocomplete-flow'
"Plug 'steelsojka/deoplete-flow'
"Plug 'carlitux/deoplete-flow'
"Plug 'ncm2/ncm2-tern',{ 'build': 'npm install' }

""""""""" ETC
"Plug 'severin-lemaignan/vim-minimap'
" Plug 'mbbill/VimExplorer'
" Plug 'lpenz/vimcommander'
" Plug 'vifm/vifm.vim'
"Plug 'vimoutliner/vimoutliner'
"Plug 'calendar%52'
"Plug 'cosminadrianpopescu/vim-sql-workbench'


call plug#end()
if plug_install
    PlugInstall --sync
endif
unlet plug_install
unlet vim_base_path


" }}}


" KEYS MAPPING ---------------------------------------------------------------
" {{{


let mapleader = ','
"let maplocalleader = '\\'

" ECSAPE, SAVE, QUIT
imap <silent>;; <Esc>
nmap <silent>; <Esc>:w<CR>
nmap <silent><Leader>q <Esc>:q<CR>

" BUFFER SWITCHING, DELETING
nmap <silent>\ :bnext<CR>
nmap <silent>\| :bprev<CR>
"nmap <silent><Leader>. :call BufferDelete()<CR>
nmap <silent><Leader>. :Bdelete<CR>

" Moving around through wrapped lines in normal mode
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
nnoremap <expr> <down> v:count ? 'j' : 'gj'
nnoremap <expr> <up> v:count ? 'k' : 'gk'
" Moving around through wrapped lines in insert mode
"imap <silent> <Up> <C-o>gk
"imap <silent> <Down> <C-o>gj

" BUFFER SWITCHING (leader #)
nmap <silent><leader>1 <Plug>AirlineSelectTab1
nmap <silent><leader>2 <Plug>AirlineSelectTab2
nmap <silent><leader>3 <Plug>AirlineSelectTab3
nmap <silent><leader>4 <Plug>AirlineSelectTab4
nmap <silent><leader>5 <Plug>AirlineSelectTab5
nmap <silent><leader>6 <Plug>AirlineSelectTab6
nmap <silent><leader>7 <Plug>AirlineSelectTab7
nmap <silent><leader>8 <Plug>AirlineSelectTab8
nmap <silent><leader>9 <Plug>AirlineSelectTab9

" replace without yanking in visial mode
"vmap r "_dhp

" EASYMOTION
map <silent><Space> <Plug>(easymotion-s)

" window switching
nmap <Tab> <C-W>w

" split windows
nmap <silent><Leader>v <Esc>:vs<CR>
nmap <silent><Leader>h <Esc>:sp<CR>

" diff this, cancel all
nmap <silent><Leader>= :diffthis<CR><C-W>w:diffthis<CR>
nmap <silent><Leader>- :diffoff!<CR>

" pretty xml
nmap <silent><Leader>x :PrettyXML<CR>

" LEADERF
nmap <silent><Leader>r <Esc>:LeaderfMru<CR>
nmap <silent><Leader>' <Esc>:LeaderfRgInteractive<CR>

" NERDTree & NetRw
nmap <silent><Leader><TAB> :NERDTreeToggle<CR>

" FUGITIVE GIT
nmap <silent><Leader>s :Gstatus<CR>

" MERGINAL
nmap <silent><Leader>b :MerginalToggle<CR>

" TAGBAR
nmap <silent><Leader>\ <Esc>:TagbarToggle<CR>

" Wrap
nmap <silent><Leader><CR> <Esc>:call ToggleWrap()<CR>

" Absolute / Relative Line Numbers
nmap <silent><Leader>` <Esc>:call g:ToggleNuMode()<CR>

" Password Generator
nmap <silent><Leader>p <Esc>:r!pwgen -ABn 10 1<CR>

" MUNDO - undo tree
nmap <silent><Leader>u <Esc>:MundoToggle<CR>

" VIM COMMANDER
"noremap <silent><F11> :cal VimCommanderToggle()<CR>

" COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <C-j> <Plug>(coc-snippets-expand-jump)

" }}}

" GENERAL SETTING -----------------------------------------------------------
" {{{

"set nocompatible
"set background=dark
set signcolumn=yes
set background=light
set encoding=utf-8
set termencoding=utf-8
set t_Co=256
"set term=xterm-256color
set history=1000
set laststatus=2
set cmdheight=2
"set signcolumn=yes
set hidden
set nu
set rnu
set ruler
set cursorline
set novb
set noeb
set t_vb=
set mouse=a
set backspace=indent,eol,start
hi Folded ctermbg=NONE
"set cm=blowfish2
"set autowriteall
"colorscheme tir_black
"colorscheme dracula
"colorscheme molokai
colorscheme PaperColor

" Tabs
set showtabline=1
set switchbuf=usetab,newtab

" Windows splits
set splitright
set splitbelow

" Diff split
set diffopt+=vertical

" SWAP, BACKUP, UNDO
set directory=~/.vim-swap//
set backupdir=~/.vim-back//
set undodir=~/.vim-undo//
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif

set noswapfile
set backup
set undofile

" Wrapping, Scrolling
set nowrap
set scrolloff=16
set sidescrolloff=32
set sidescroll=1

" Whitespace stuff, indent, visual
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set autoindent
set smartindent
"set smarttab

" Searching
set nohlsearch
set incsearch
set ignorecase
set smartcase

" OmniComplete
" set completeopt=longest,menuone
set completeopt=menuone,preview,noinsert,noselect

" Folding
set nofoldenable
"let php_folding=1
"let javaScript_fold=1
"let xml_syntax_folding=1
"autocmd FileType javascript     setlocal foldmethod=syntax
"autocmd FileType php            setlocal foldmethod=syntax
"autocmd FileType python         setlocal foldmethod=indent
"autocmd FileType html           setlocal foldmethod=manual
"autocmd FileType xml            setlocal foldmethod=syntax
"set foldlevelstart=1
"set foldnestmax=1

" Cursor line
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline

" Resize splits when the window is resized
autocmd VimResized * :wincmd =

" Remove trailing spaces before save
autocmd FileType php,js,python,ruby,sh,vim,vimrc,twig,xml,html,yml,css,json autocmd BufWritePre <buffer> :%s/\s\+$//e

" Auto save file when focus is lost
autocmd FocusLost * silent! :w

" Drupal quirks
autocmd BufRead,BufNewFile *.install set filetype=php
autocmd BufRead,BufNewFile *.module set filetype=php
autocmd BufRead,BufNewFile *.inc set filetype=php
"autocmd BufRead * normal zR

" PHP
"let php_sql_query=1
"let php_htmlInStrings=1
" php-foldexpr
"let b:phpfold_use = 1
"let b:phpfold_text = 1
"let b:phpfold_text_right_lines = 1
autocmd BufRead,BufNewFile *.php,*.inc let b:phpfold_text_right_lines = 1
autocmd BufRead,BufNewFile *.php,*.inc let b:phpfold_docblocks = 1
autocmd BufRead,BufNewFile *.php,*.inc let b:phpfold_doc_with_funcs = 1
" phpfolding
"let g:DisablePHPFoldingClass = 0
" phpcd
"let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
"let g:deoplete#ignore_sources.php = ['omni']


" }}}

" GUI SETTINGS (MacVIM/gVIM) -------------------------------------------------
" {{{

" System clipboard
if has("macunix")
    set clipboard=unnamed
elseif has("unix")
    set clipboard=unnamedplus
endif

" Fonts
if has("gui_running")

    if has("macunix")
        set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h15
        "set guifont=Inconsolata\ for\ Powerline:h14
        "set guifont=Meslo\ LG\ S\ for\ Powerline:h14
        "set guifont=Menlo\ Regular:h14
        "set guifont=DejaVu\ Sans\ Mono:h14
        "set guifont=Inconsolata:h14
        "set guifont=Monaco:h14
        "set guifont=monospace:h14
    elseif has("unix")
        set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 13.4
        set lines=999 columns=999
    endif

    set guioptions=egmt
    set guioptions-=T
    set guioptions-=m
    set guitablabel=\[%N\]\ %t\ %M
    set showtabline=1
    set helplang=en
    set langmenu=none
    set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
    set listchars=tab:▸\ ,eol:¬,trail:·,extends:❯,precedes:❮
    set showbreak=↪

    " shift+arrows section mode
    "let g:enable_mvim_shift_arrow = 1
    "let macvim_hig_shift_movement = 1
    "unlet macvim_hig_shift_movement
    "behave mswin

    let g:airline_powerline_fonts = 1
    let g:NERDTreeDirArrows = 0

else

    let g:airline_powerline_fonts = 0
    let g:NERDTreeDirArrows = 0

endif



" }}}


"highlight Folded guibg=yellow guifg=blue
"highlight FoldColumn guibg=yellow  guifg=white
"hi Folded term=underline
"hi Folded term=NONE cterm=NONE ctermbg=NONE



   "snippets.textmateSnippetsRoots": ["/home/hans/.config/nvim/plugged/vim-snippets/snippets"],

