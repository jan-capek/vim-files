" PLUGINS
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

let g:make = 'gmake'
if system('uname -o') =~ '^GNU/'
        let g:make = 'make'
endif

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

"""""" EDITORCONFIG
NeoBundle 'editorconfig/editorconfig-vim'

"""""" COLORS
"NeoBundle 'vim-scripts/tir_black'
NeoBundle 'tomasr/molokai'
"NeoBundle 'zenorocha/dracula-theme'
" northland
"NeoBundle 'Colour_Sampler_Pack'
"NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'vim-scripts/ScrollColors'

"""""" SYNTAX (nginx, markdown)
NeoBundle 'evanmiller/nginx-vim-syntax'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'elzr/vim-json'

"""""" CSS3, LESS
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'skammer/vim-css-color'
" use new Colorizer
"NeoBundle 'chrisbra/Colorizer'
"NeoBundle 'groenewege/vim-less'
"NeoBundle 'vitalk/vim-lesscss'

"""""" SASS, COMPASS, HAML
NeoBundle 'tpope/vim-haml'

"""""" CTRLP
"NeoBundle 'kien/ctrlp.vim'
" replace with
"NeoBundle 'ctrlpvim/ctrlp.vim'

"""""" CTRL-SPACE
"NeoBundle 'szw/vim-ctrlspace'

"""""" VIMPROC
NeoBundle 'Shougo/vimproc.vim'

"""""" FASTFOLD
NeoBundle 'Konfekt/FastFold'

"""""" NERDTREE
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-scripts/Toggle-NERDTree-width'

"""""" TAGBAR
NeoBundle 'majutsushi/tagbar'

"""""" POWERLINE FONTS
NeoBundle 'Lokaltog/powerline-fonts'

"""""" AIRLINE
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

"""""" AUTO-PAIRS / DELIMITMATE
"NeoBundle 'jiangmiao/auto-pairs'
"NeoBundle 'Raimondi/delimitMate'

"""""" NERDCOMMENTER
NeoBundle 'scrooloose/nerdcommenter'

"""""" MATCHIT / MatchTag
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'gregsexton/MatchTag'

"""""" EASYMOTION
NeoBundle 'Lokaltog/vim-easymotion'

"""""" UNITE
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/neossh.vim'
NeoBundle 'Shougo/vimfiler.vim'

"""""" VIMSHELL
NeoBundle 'Shougo/vimshell.vim'
"NeoBundle 'oplatek/Conque-Shell'

"""""" NEOCOMPLETE (lua)
NeoBundle 'Shougo/neocomplete.vim'

"""""" NEOSNIPPET
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'

"""""" ULTISNIP (python)
"NeoBundle 'MarcWeber/UltiSnips'

"""""" SNIPPETS
NeoBundle 'scrooloose/snipmate-snippets'
NeoBundle 'honza/vim-snippets'

"""""" YOUCOMPLETEME
"NeoBundle 'Valloric/YouCompleteMe'

"""""" EMMET (ZEN CODING)
NeoBundle 'mattn/emmet-vim'

"""""" SPARKUP
"NeoBundle 'tristen/vim-sparkup'

"""""" SYNTASTIC
NeoBundle 'scrooloose/syntastic'

"""""" JEDI-VIM (python)
NeoBundle 'davidhalter/jedi-vim'

"""""" IPYTHON
NeoBundle 'ivanov/vim-ipython'

"""""" PYINTERACTIVE
"NeoBundle 'clericJ/pyinteractive-vim'

"""""" DIRDIFF
NeoBundle 'vim-scripts/DirDiff.vim'

"""""" FUGITIVE (GIT)
NeoBundle 'tpope/vim-fugitive'

"""""" MERGINAL
NeoBundle 'idanarye/vim-merginal'

"""""" GITGUTTER
NeoBundle 'airblade/vim-gitgutter'

"""""" XML
NeoBundle 'sukima/xmledit'

"""""" PHP
"NeoBundle 'shawncplus/phpcomplete.vim'
"NeoBundle 'spf13/PIV'
NeoBundle 'xsbeats/vim-blade'
NeoBundle 'markwu/vim-laravel4-snippets'

NeoBundle 'm2mdas/phpcomplete-extended'
NeoBundle 'm2mdas/phpcomplete-extended-symfony'
NeoBundle 'm2mdas/phpcomplete-extended-laravel'

"""""" VDEBUG (python)
"NeoBundle 'joonty/vdebug'
" https://www.youtube.com/watch?v=5mtY5HQeVaw

"""""" MINIMAP
"NeoBundle 'severin-lemaignan/vim-minimap'

"""""" VIMEXPLORER
"NeoBundle 'mbbill/VimExplorer'

"""""" VIMCOMMANDER
"NeoBundle 'vim-scripts/vimcommander'

"""""" VIMOUTLINER
"NeoBundle 'vimoutliner/vimoutliner'

"""""" CALENDAR
"NeoBundle 'calendar%52'

""""" SCROLLBAR
"NeoBundle 'lornix/vim-scrollbar'

""""" VIM SQL WORKBENCH
"NeoBundle 'cosminadrianpopescu/vim-sql-workbench'

""""" VIM-EXTRAS
NeoBundle 'jan-capek/vim-extras'




call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck



" }}}

" PLUGINS SETTING
" {{{


" SYNTASTIC
"let g:syntastic_disabled_filetypes=['html']
"let g:syntastic_enable_signs=1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_auto_jump = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_python_checkers=['pylint']
let g:syntastic_python_pylint_post_args='--disable=C0301,C0302,C0111,C0103,R0913,R0914'
let g:syntastic_javascript_checkers=['jshint']

" PHP - settings
"let php_sql_query=1
"let php_htmlInStrings=1
let php_folding=1

" PYTHON - settings

" JAVASCRIPT - settings
let javaScript_fold=1

" XML - settings
let g:xml_syntax_folding=1

" MARKDOWN
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_initial_foldlevel=1

" NetRw - settings
let g:netrw_banner=0
let g:netrw_keepdir=0
let g:netrw_liststyle=0
let g:netrw_alto=&sb
let g:netrw_altv=&spr
let g:netrw_preview=1
let g:netrw_browse_split=4
let g:netrw_winsize=-132
let g:netrw_silent=1
"let g:netrw_quiet=1
"let g:netrw_use_errorwindow=1
"set autochdir

" NERDTree
let g:NERDTreeWinSize=40
let g:NERDTreeShowBookmarks=1
let g:NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeDirArrows = 0
"let NERDTreeQuitOnOpen = 1
"autocmd VimEnter * NERDTree

" Tagbar
let g:tagbar_width = 40
let g:tagbar_left = 0
let g:tagbar_sort = 0

" CTRLP
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:32,results:32'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_open_new_file = 'r'

" UNITE
" https://github.com/Shougo/unite.vim/issues/894
" http://www.codeography.com/2013/06/17/replacing-all-the-things-with-unite-vim.html


" AirLine
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#show_buffers = 0
"let g:airline_section_z =

" LESSCSS
"let g:lesscss_cmd = '$(which lessc)'
"let g:lesscss_save_to = '../css/'
"let g:lesscss_toggle_key = '<Leader>.'
"let g:lesscss_on = 0

" NEOCOMPLETE
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#auto_completion_start_length = 1
let g:neocomplete#sources#syntax#min_keyword_length = 1
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" JEDI-NEOCOMPLETE integration
let g:jedi#completions_enabled = 0
"let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0
"let g:jedi#use_tabs_not_buffers = 1
"let g:jedi#use_splits_not_buffers = "bottom"
"let g:jedi#popup_on_dot = 1
"let g:jedi#popup_select_first = 1
let g:jedi#show_call_signatures = 1
"let g:jedi#smart_auto_mappings = 0
if has('python3')
    let g:jedi#force_py_version = 3
endif
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python =
\ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
" alternative pattern: '\h\w*\|[^. \t]\.\w*'

" NEOSNIPPET
"let g:neosnippet#disable_runtime_snippets = { 'python':1 }
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" For snippet_complete marker.
"if has('conceal')
  "set conceallevel=2 concealcursor=i
"endif

" PHPCOMPLETE
let g:phpcomplete_index_composer_command = 'composer'



" SCROLLBAR
"let g:loaded_scrollbar=1
"let g:scrollbar_thumb='|'
"let g:scrollbar_clear=' '
"highlight Scrollbar_Clear ctermfg=grey ctermbg=grey guifg=grey guibg=grey cterm=none
"highlight Scrollbar_Thumb ctermfg=green ctermbg=grey guifg=green guibg=grey cterm=reverse

" CONQUETERM
"let g:ConqueTerm_Color = 1


" VDEBUG
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


" }}}


" KEYS MAPPING
" {{{


let mapleader = ','
"let maplocalleader = '\\'

" ECSAPE, SAVE, QUIT
imap <silent>;; <Esc>
nmap <silent>; <Esc>:w<CR>
"map  <silent><Esc><Esc> <Esc>:w<CR>
nmap <silent><Leader>q <Esc>:q<CR>

" BUFFER SWITCHING, DELETING
"nmap <silent><Space> :bnext<CR>
"nmap <silent><S-Space> :bprev<CR>
nmap <silent>\ :bnext<CR>
nmap <silent>\| :bprev<CR>
nmap <silent><Leader>. :call BufferDelete()<CR>

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
vmap r "_dp

" EASYMOTION
"map <silent><Leader><Space> <Plug>(easymotion-s)
map <silent><Space> <Plug>(easymotion-s)
"map <silent><Leader>, <Plug>(easymotion-s)

" insert new line
imap <S-CR> <Esc>O
nmap <S-CR> O<Esc>
nmap <CR> o<Esc>

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

" UNITE
nmap <silent><leader>; :<C-u>Unite -no-split -buffer-name=mru -start-insert file_mru<cr>
nmap <silent><leader>/ :<C-u>Unite -no-split -buffer-name=files -start-insert file<cr>
"nnoremap <leader>/ :<C-u>Unite -no-split -buffer-name=files -start-insert file<cr>

" NERDTree & NetRw
nmap <silent><Leader><TAB> :NERDTreeToggle<CR>

" VIMFILER
nmap <silent><Leader>f :VimFiler<CR>

" FUGITIVE GIT
nmap <silent><Leader>s :Gstatus<CR>

" MERGINAL
nmap <silent><Leader>b :MerginalToggle<CR>

" TAGBAR
nmap <silent><Leader>t <Esc>:TagbarToggle<CR>

" Wrap
nmap <silent><Leader><CR> <Esc>:call ToggleWrap()<CR>

" Absolute / Relative Line Numbers
nmap <silent><Leader>` <Esc>:call g:ToggleNuMode()<CR>

" Password Generator
nmap <silent><Leader>p <Esc>:r!pwgen -ABn 8 1<CR>

" VIM COMMANDER
"noremap <silent><F11> :cal VimCommanderToggle()<CR>


" }}}

" GENERAL SETTING
" {{{

set nocompatible
set background=dark
set encoding=utf-8
set termencoding=utf-8
set t_Co=256
set term=xterm-256color
set history=1000
set fileformat=unix
set laststatus=2
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
set cm=blowfish2
"colorscheme tir_black
"colorscheme dracula
colorscheme molokai

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

" SWAP & BACKUP
set noswapfile
set backup
"set undofile
"set directory=~/.vim-swap//
"set backupdir=~/.vim-back//
"set undodir=~/.vim-undo//
set directory=~/.vim-swap
set backupdir=~/.vim-back
set undodir=~/.vim-undo
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif

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

" SYNTASTIC + FUGITIVE
" https://gist.github.com/eethann/1481911

" Syntax
syntax   on
filetype on
filetype plugin on
filetype indent on

" OmniComplete
"autocmd FileType python         setlocal omnifunc=pythoncomplete#Complete
autocmd FileType python         setlocal omnifunc=jedi#completions
"autocmd FileType python         NeoCompleteLock
autocmd FileType javascript     setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html,markdown  setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css            setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType xml            setlocal omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php            setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType php            setlocal omnifunc=phpcomplete_extended#CompletePHP
"autocmd FileType install            setlocal omnifunc=phpcomplete_extended#CompletePHP
"autocmd FileType module            setlocal omnifunc=phpcomplete_extended#CompletePHP
"autocmd FileType inc            setlocal omnifunc=phpcomplete_extended#CompletePHP
autocmd FileType ruby           setlocal omnifunc=rubycomplete#CompleteRuby
set completeopt=longest,menuone

" Folding
autocmd FileType javascript     setlocal foldmethod=syntax
autocmd FileType php            setlocal foldmethod=syntax
autocmd FileType python         setlocal foldmethod=indent
autocmd FileType html           setlocal foldmethod=manual
autocmd FileType xml            setlocal foldmethod=syntax
set foldlevelstart=1
set foldnestmax=1

" Cursor line
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline

" Resize splits when the window is resized
autocmd VimResized * :wincmd =

" Remove trailing spaces before save
autocmd FileType php,js,python,ruby,twig,xml,html,yml,css,json autocmd BufWritePre <buffer> :%s/\s\+$//e

" Drupal 7 quirks
autocmd BufRead,BufNewFile *.install set filetype=php
autocmd BufRead,BufNewFile *.module set filetype=php
autocmd BufRead,BufNewFile *.inc set filetype=php

" }}}

" GUI SETTINGS (MacVIM/gVIM)
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
        set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
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
    "set guioptions-=r
    set guitablabel=\[%N\]\ %t\ %M
    ""set guitabtooltip=%F
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
    "
    let g:NERDTreeDirArrows = 0

else

    let g:airline_powerline_fonts = 1
    let g:NERDTreeDirArrows = 0

endif



" }}}

" ETC
" {{{


" colors page
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html


" }}}


" vim: set fdm=marker:
