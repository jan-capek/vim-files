" PLUGINS & SETTING ----------------------------------------------------------
" {{{

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Set platform specific make command
let g:make = 'gmake'
if system('uname -o') =~ '^GNU/'
    let g:make = 'make'
endif

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

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
NeoBundle 'editorconfig/editorconfig-vim'

""""""""" COLORS
"NeoBundle 'vim-scripts/tir_black'
NeoBundle 'tomasr/molokai'
"NeoBundle 'zenorocha/dracula-theme'
"NeoBundle 'vim-scripts/northland.vim'
"NeoBundle 'Colour_Sampler_Pack'
"NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'vim-scripts/ScrollColors'
"NeoBundle 'vim-colors-solarized'
NeoBundle 'NLKNguyen/papercolor-theme'

""""""""" SYNTAX HIGHLIGHTING
NeoBundle 'sheerun/vim-polyglot'
"NeoBundle 'chr4/nginx.vim'
"NeoBundle 'gabrielelana/vim-markdown'
"NeoBundle 'elzr/vim-json'
"NeoBundle 'elubow/cql-vim'
"let g:markdown_enable_spell_checking = 0

""""""""" CSS3, LESS
"NeoBundle 'hail2u/vim-css3-syntax'
"NeoBundle 'lepture/vim-css'
"NeoBundle 'skammer/vim-css-color'
" use new Colorizer
"NeoBundle 'chrisbra/Colorizer'
"NeoBundle 'groenewege/vim-less'
"NeoBundle 'vitalk/vim-lesscss'

""""""""" SASS, COMPASS, HAML
NeoBundle 'tpope/vim-haml'

""""""""" FOLDING
NeoBundle 'Konfekt/FastFold'
"NeoBundle 'pseewald/vim-anyfold'
"let anyfold_activate=1
"let anyfold_fold_display = 1
"let anyfold_identify_comments = 1
"let anyfold_fold_comments = 1

""""""""" BBYE
NeoBundle 'moll/vim-bbye'

""""""""" LINE WRAP
"NeoBundle 'bronson/vim-toggle-wrap'


""""""""" NERDTREE
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-scripts/Toggle-NERDTree-width'
let g:NERDTreeWinSize=40
let g:NERDTreeShowBookmarks=1
"let g:NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeDirArrows = 0
"let NERDTreeQuitOnOpen = 1
"autocmd VimEnter * NERDTree

""""""""" NERDCOMMENTER
NeoBundle 'scrooloose/nerdcommenter'

""""""""" TAGBAR
NeoBundle 'majutsushi/tagbar'
let g:tagbar_width = 40
let g:tagbar_left = 0
let g:tagbar_sort = 0

""""""""" AIRLINE, POWERLINE FONTS
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'Lokaltog/powerline-fonts'
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
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'gregsexton/MatchTag'

""""""""" EASYMOTION
NeoBundle 'Lokaltog/vim-easymotion'

""""""""" VIM8 compatibility layer
NeoBundle 'roxma/nvim-yarp'
NeoBundle 'roxma/vim-hug-neovim-rpc'

""""""""" SHELL
"NeoBundle 'Shougo/vimshell.vim'
"NeoBundle 'oplatek/Conque-Shell'
"NeoBundle 'wkentaro/conque.vim'

""""""""" CTRLP, LEADERF
"NeoBundle 'ctrlpvim/ctrlp.vim'
"NeoBundle 'FelikZ/ctrlp-py-matcher'
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
"let g:ctrlp_match_window = 'top,order:ttb,min:120,max:120,results:120'
NeoBundle 'Yggdroot/LeaderF'

""""""""" NCM2
"NeoBundle 'ncm2/ncm2'
"NeoBundle 'ncm2/ncm2-bufword'
"NeoBundle 'ncm2/ncm2-path'
"NeoBundle 'ncm2/ncm2-vim'
"NeoBundle 'ncm2/ncm2-cssomni'

""""""""" COC
NeoBundle 'neoclide/coc.nvim', 'release', { 'build': { 'others': 'git checkout release' } }

""""""""" LANGUAGE SERVER (CLIENT)
"NeoBundle 'autozimu/LanguageClient-neovim', { 'rev' : 'next',  'build': 'bash install.sh' }

""""""""" ULTISNIP, EMMET
"NeoBundle 'SirVer/ultisnips'
"NeoBundle 'ncm2/ncm2-ultisnips'
"NeoBundle 'honza/vim-snippets'
"NeoBundle 'mattn/emmet-vim'
"NeoBundle 'rstacruz/sparkup'

""""""""" SYNTASTIC, ALE (Asynchronous Lint Engine)
"NeoBundle 'scrooloose/syntastic'
"let g:syntastic_disabled_filetypes=['html']
"let g:syntastic_enable_signs=1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_auto_jump = 1
let g:syntastic_auto_loc_list = 0
"NeoBundle 'w0rp/ale'
"let g:ale_completion_enabled = 1
"let g:ale_set_balloons = 1
let g:syntastic_go_checkers=['go', 'golint', 'govet', 'errcheck']
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_pylint_exec = 'pylint'
"let g:syntastic_python_pylint_post_args='--disable=C0301,C0302,C0111,C0103,R0913,R0914,E301,E302'
let g:syntastic_python_flake8_exec = 'flake8'
let g:syntastic_python_flake8_post_args='--ignore=E301,E302,E303,E305,E501'
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_checkers=['eslint', 'jshint']

""""""""" DIRDIFF
NeoBundle 'vim-scripts/DirDiff.vim'

""""""""" GIT - FUGITIVE, MERGINAL, GITGUTTER
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'idanarye/vim-merginal'
NeoBundle 'airblade/vim-gitgutter'
"NeoBundle 'gregsexton/gitv'
"NeoBundle 'neoclide/denite-git'

""""""""" XML
NeoBundle 'sukima/xmledit'
let g:xml_syntax_folding=1

""""""""" MUNDO - undo tree
NeoBundle 'simnalamburt/vim-mundo'
let g:mundo_right = 1
let g:mundo_width = 40
let g:mundo_preview_height = 20

""""""""" VIM-EXTRAS
NeoBundle 'jan-capek/vim-extras'

""""""""" ETC
"NeoBundle 'severin-lemaignan/vim-minimap'
"NeoBundle 'mbbill/VimExplorer'
"NeoBundle 'vim-scripts/vimcommander'
"NeoBundle 'vimoutliner/vimoutliner'
"NeoBundle 'calendar%52'
"NeoBundle 'cosminadrianpopescu/vim-sql-workbench'

""""""""" VDEBUG
"NeoBundle 'joonty/vdebug'
let g:vdebug_options = {}
let g:vdebug_options['server'] = "localhost"
let g:vdebug_options['port'] = 9999
let g:vdebug_options["ide_key"] = "VDEBUG"
let g:vdebug_options["break_on_open"] = 0
"let g:vdebug_options['timeout'] = 60
let g:vdebug_options["watch_window_style"] = "compact"
let g:vdebug_options["debug_window_level"] = 2
"let g:vdebug_options["continuous_mode"] = 1
"let g:vdebug_options['path_maps'] = { "/home/mmdelivery/www": "/Users/hans/Remotes/ran-mmdelivery/www" }

let g:vdebug_features = {}
let g:vdebug_features['max_depth'] = 2048
let g:vdebug_features['max_children'] = 2048
" https://www.youtube.com/watch?v=5mtY5HQeVaw

""""""""" GOLANG
"NeoBundle 'fatih/vim-go'
"NeoBundle 'ncm2/ncm2-go'
"NeoBundle 'zchee/deoplete-go', { 'build': 'make' }
"NeoBundle 'garyburd/go-explorer'

""""""""" PYTHON
"NeoBundle 'davidhalter/jedi-vim'
"NeoBundle 'zchee/deoplete-jedi'
"NeoBundle 'ncm2/ncm2-jedi'
NeoBundle 'jmcantrell/vim-virtualenv'
"NeoBundle 'Glench/Vim-Jinja2-Syntax'
"NeoBundle 'lepture/vim-jinja'
"NeoBundle 'ivanov/vim-ipython'
"NeoBundle 'clericJ/pyinteractive-vim'
"NeoBundle 'tmhedberg/SimpylFold'

""""""""" PHP
"NeoBundle 'phpactor/phpactor',{ 'build': 'composer install' }
"NeoBundle 'phpactor/ncm2-phpactor'
"NeoBundle 'lvht/phpcd.vim', { 'build': 'composer install' }
"NeoBundle 'roxma/LanguageServer-php-neovim', { 'build': 'composer install && composer run-script parse-stubs' }
NeoBundle 'swekaj/php-foldexpr.vim'
"NeoBundle 'rayburgemeestre/phpfolding.vim'

""""""""" JAVASCRIPT / JSX
"NeoBundle 'pangloss/vim-javascript'
"NeoBundle 'isRuslan/vim-es6'
NeoBundle 'mxw/vim-jsx'
let g:jsx_ext_required = 1 " Allow JSX in normal JS files
"NeoBundle 'ternjs/tern_for_vim', { 'build': 'npm install' }
"NeoBundle 'carlitux/deoplete-ternjs', { 'build': 'npm install -g tern' }
"NeoBundle 'wokalski/autocomplete-flow'
"NeoBundle 'steelsojka/deoplete-flow'
"NeoBundle 'carlitux/deoplete-flow'
"NeoBundle 'ncm2/ncm2-tern',{ 'build': 'npm install' }

""""""""" TYPESCRIPT
"NeoBundle 'leafgarland/typescript-vim'
"NeoBundle 'Quramy/tsuquyomi'


call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck



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

" insert new line (won't work - remove)
"imap <S-CR> <Esc>O
"nmap <S-CR> O<Esc>
"nmap <CR> o<Esc>

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

" MARKDOWN
"let g:vim_markdown_folding_disabled=1
"let g:vim_markdown_initial_foldlevel=1
"autocmd BufRead,BufNewFile *.md setlocal wrap linebreak
"autocmd FileType markdown setlocal wrap linebreak

" DENITE
"call denite#custom#map('insert', '<Down>', '<denite:move_to_next_line>', 'noremap')
"call denite#custom#map('insert', '<Up>', '<denite:move_to_previous_line>', 'noremap')
"call denite#custom#source('file_mru', 'matchers', ['matcher/substring'])
"call denite#custom#source('file/rec', 'matchers', ['matcher/substring'])
"nnoremap <silent><leader>; :<C-u>Denite -split=no file_mru<cr>
"nnoremap <silent><leader>/ :<C-u>Denite -split=no file/rec<cr>

" DENITE
"nmap <silent><Leader>r <Esc>:CtrlPMRUFiles<CR>

" LEADERF
nmap <silent><Leader>r <Esc>:LeaderfMru<CR>
nmap <silent><Leader>' <Esc>:LeaderfRgInteractive<CR>

" DEOPLETE
"call deoplete#custom#source('_',  'max_menu_width', 0)
"call deoplete#custom#source('_',  'max_abbr_width', 0)
"call deoplete#custom#source('_',  'max_kind_width', 0)

" NCM2
"autocmd BufEnter * call ncm2#enable_for_buffer()

" NEOSNIPPET
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)


" NERDTree & NetRw
nmap <silent><Leader><TAB> :NERDTreeToggle<CR>

" DEFX
nmap <silent><Leader>e :Defx<CR>
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    " Define mappings
    nnoremap <silent><buffer><expr> <CR>    defx#do_action('open')
    nnoremap <silent><buffer><expr> l       defx#do_action('open')
    nnoremap <silent><buffer><expr> E       defx#do_action('open', 'vsplit')
    nnoremap <silent><buffer><expr> P       defx#do_action('open', 'pedit')
    nnoremap <silent><buffer><expr> K       defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N       defx#do_action('new_file')
    nnoremap <silent><buffer><expr> d       defx#do_action('remove')
    nnoremap <silent><buffer><expr> r       defx#do_action('rename')
    nnoremap <silent><buffer><expr> h       defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~       defx#do_action('cd')
    nnoremap <silent><buffer><expr> q       defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> *       defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> j       line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> k       line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> <C-l>   defx#do_action('redraw')
    nnoremap <silent><buffer><expr> <C-g>   defx#do_action('print')
endfunction

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

" Remap keys for gotos
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


" }}}

" GENERAL SETTING -----------------------------------------------------------
" {{{

set nocompatible
"set background=dark
set background=light
set encoding=utf-8
set termencoding=utf-8
set t_Co=256
"set term=xterm-256color
set history=1000
set fileformat=unix
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
"au BufAdd,BufNewFile * nested tab sball
"au BufAdd,BufNewFile,BufRead * nested tab sball
"set tabline+=t

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
"set title

" Syntax
syntax   on
filetype on
filetype plugin on
filetype indent on

" OmniComplete
"autocmd FileType python         setlocal omnifunc=jedi#completions
"autocmd FileType javascript     setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType javascript     setlocal omnifunc=tern#Complete
autocmd FileType html,markdown  setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css            setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType xml            setlocal omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php            setlocal omnifunc=phpcomplete#CompletePHP
"autocmd FileType php            setlocal omnifunc=phpcomplete_extended#CompletePHP
autocmd FileType ruby           setlocal omnifunc=rubycomplete#CompleteRuby
set completeopt=longest,menuone
set completeopt=noinsert,menuone,noselect

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



