scriptencoding utf-8
""" Vundle initialization required

set nocompatible 
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

filetype off     
""" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" **********************************************************************
" ** Add all your plugins here                                        **   
" ** (note older versions of Vundle used Bundle instead of Plugin)    **  
" **********************************************************************

" Better file browser
Plugin 'scrooloose/nerdtree'
" Code commenter
Plugin 'scrooloose/nerdcommenter'
" Class/module browser
Plugin 'majutsushi/tagbar'
" Code and files fuzzy finder
Plugin 'kien/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
Plugin 'fisadev/vim-ctrlp-cmdpalette'
" Zen coding
"Plugin 'mattn/emmet-vim'
" Maybe the best Git integration
Plugin 'tpope/vim-fugitive'
" Tab list panel
"Plugin 'kien/tabman.vim'
" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Consoles as buffers
"Plugin 'rosenfeld/conque-term'
" Pending tasks list
Plugin 'fisadev/FixedTaskList.vim'
" Surround
Plugin 'tpope/vim-surround'
" Youcompleteme
"Plugin 'Valloric/YouCompleteMe'
" Autoclose
Plugin 'Townk/vim-autoclose'
" Indent text object
Plugin 'michaeljsmith/vim-indent-object'
" Python mode (indentation, doc, refactor, lints, code checking, motion and operators, highlighting, run and ipdb breakpoints)
Plugin 'klen/python-mode'
" Better autocompletion
Plugin 'Shougo/neocomplcache.vim'
" Snippets manager (SnipMate), dependencies, and snippets repo
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
" awesome colorscheme
Plugin 'tomasr/molokai'
" Git/mercurial/others diff icons on the side of the file lines
Plugin 'mhinz/vim-signify'
" Automatically sort python imports
Plugin 'fisadev/vim-isort'
" Drag visual blocks arround
Plugin 'fisadev/dragvisuals.vim'
" Window chooser
Plugin 't9md/vim-choosewin'
" Python and other languages code checker
"Plugin 'scrooloose/syntastic'
" Paint css colors with the real color
Plugin 'lilydjwg/colorizer'

" Relative numbering of lines (0 is the current line)
" (disabled by default because is very intrusive and can't be easily toggled
" on/off. When the plugin is present, will always activate the relative 
" numbering every time you go to normal mode. Author refuses to add a setting to avoid that)
Plugin 'myusuf3/numbers.vim'

" javascript complete after install the plugin, you must cd the install
" directory and run `npm install`, then add a .tern-project config file
" the doc at http://ternjs.net/doc/manual.html#vim
"Plugin 'marijnh/tern_for_vim'
" Golang Plugins
Plugin 'fatih/vim-go'

" JSX syntax highlight.
Plugin 'mxw/vim-jsx'
" Markdown syntastic highlight
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Markdown realtime preview
" Before you want to use it, please run
" `sudo npm -g install instant-markdown-d`
Plugin 'suan/vim-instant-markdown'
" Handlebars syntax highlighting
Plugin 'mustache/vim-mustache-handlebars'
" Vue.js syntax and highlighting
Plugin 'tao12345666333/vim-vue'
" True Sublime Text style multiple selections for Vim
Plugin 'terryma/vim-multiple-cursors'

" Plugins from vim-scripts repos:
" Search results counter
Plugin 'IndexedSearch'
" XML/HTML tags navigation
Plugin 'matchit.zip'
" Gvim colorscheme
"Plugin 'Wombat'
" Yank history navigation
"Plugin 'YankRing.vim'

" vim-easy-align
Plugin 'junegunn/vim-easy-align'

" vim char autocomplete
"Plugin 'Raimondi/delimitMate'

" Git Integration
" Plugin 'tpope/vim-fugitive'

" Powerline
Plugin 'Lokaltog/Powerline',{'rtp':'Powerline/bindings/vim/'}
let g:Powerline_symbols = 'unicode'


" ---------------------------------------
" Install Plugins the first time vim runs
" ---------------------------------------
if iCanHazVundle == 0
    echo "Install Plugins.please ignore key map error messages"
    echo ""
    :PluginInstall 
endif





"
" =======================================================================================
" All of your Plugins must be added before the following line
" =======================================================================================
call vundle#end()            " required


" =================================
" vim setting and mappings here
" =================================

" allow plugins by file type (required for plugins!)
filetype plugin on    " required
filetype indent on    " required

" tabs and spaces handling
set expandtab    
set tabstop=4   
set shiftwidth=4  
set softtabstop=4
set smarttab
"set autoindent
set smartindent 

" highlight cursor line and column
set cursorline
set cursorcolumn
" hidden startup messages
set shortmess=alI
" auto read and write
set autowrite
set autoread
" when deal with unsaved files ask what to do
set confirm
" no backup files
set nobackup

" other settings
set langmenu=zh_CN.UTF-8
"set mouse=a
set whichwrap+=<,>,h,l,[,]
set background=dark
set encoding=utf-8

" make backspace work like most other apps
set backspace=2 
set backspace=indent,eol,start

" tab length exceptions on some file types
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2

" auto open or close NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" always show status bar
set laststatus=2
" incremental search
set incsearch
" highlighted search results
set hlsearch
" search ignore case
set ignorecase
" muting search highlighting 
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" syntax highlight on
syntax on

" show line numbers
set nu

" tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

" navigate windows with meta+arrows
map <M-Right> <c-w>l
map <M-Left> <c-w>h
map <M-Up> <c-w>k
map <M-Down> <c-w>j
imap <M-Right> <ESC><c-w>l
imap <M-Left> <ESC><c-w>h
imap <M-Up> <ESC><c-w>k
imap <M-Down> <ESC><c-w>j

" old autocomplete keyboard shortcut
imap <C-J> <C-X><C-O>


" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
" Disabled by default because preview makes the window flicker
set completeopt-=preview

" save as sudo
"ca w!! w !sudo tee "%"
" :w!! 
" write the file when you accidentally opened it without the right (root) privileges
cmap w!! %!sudo tee %


" simple recursive grep
" both recursive grep commands with internal or external (fast) grep
command! -nargs=1 RecurGrep lvimgrep /<args>/gj ./**/*.* | lopen | set nowrap
command! -nargs=1 RecurGrepFast silent exec 'lgrep! <q-args> ./**/*.*' | lopen
" mappings to call them
nmap ,R :RecurGrep 
nmap ,r :RecurGrepFast 
" mappings to call them with the default word as search text
nmap ,wR :RecurGrep <cword><CR>
nmap ,wr :RecurGrepFast <cword><CR>

" use 256 colors when possible
if &term =~? 'mlterm\|xterm\|xterm-256\|screen-256'
    let &t_Co = 256
    colorscheme default
    "colorscheme moloakai
else 
    colorscheme default
   "colorscheme delek
endif

" colors for gvim
if has('gui_running')
    colorscheme wombat
endif

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" autocompletion of files and commands behaves like zsh
" (autocomplete menu)
set wildmenu
set wildmode=full

" **********************
" Tasklist
" **********************
" show pending tasks list
map <F2> :TaskList<CR>

" ************************************
" NERDTree map
" ************************************
" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don't show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

" ************************************
" Tagbar map
" ************************************
" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1

" ************************************
" CtrlP map
" ************************************
" file finder mapping
let g:ctrlp_map = ',e'
" hidden some types files
let g:ctrlp_show_hidden = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif
" tags (symbols) in current file finder mapping
nmap ,g :CtrlPBufTag<CR>
" tags (symbols) in all files finder mapping
nmap ,G :CtrlPBufTagAll<CR>
" general code finder in all files mapping
nmap ,f :CtrlPLine<CR>
" recent files finder mapping
nmap ,m :CtrlPMRUFiles<CR>
" commands finder mapping
nmap ,c :CtrlPCmdPalette<CR>
" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
   execute ':CtrlP' . a:ctrlp_command_end
   call feedkeys(a:search_text)
endfunction
" same as previous mappings, but calling with current word as default text
nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>
" don't change working directory
let g:ctrlp_working_path_mode = 0
" ignore these files and folders on file finder
let g:ctrlp_custom_ignore = {
   \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
   \ 'file': '\.pyc$\|\.pyo$',
   \ }

" ******************
" Syntastic
" ******************
" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>
" turn to next or previous errors, after open errors list
nmap <leader>n :lnext<CR>
nmap <leader>p :lprevious<CR>
" check also when just opened the file
let g:syntastic_check_on_open = 1
" syntastic checker for javascript.
" eslint is the only tool support JSX.
" If you don't need write JSX, you can use jshint.
" And eslint is slow, but not a hindrance
" let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['eslint']
" don't put icons on the sign column (it hides the vcs status icons of signify)
let g:syntastic_enable_signs = 0
" custom icons (enable them if you use a patched font, and enable the previous setting)
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'


" *********************
" Python-mode
" *********************
" don't use linter, we use syntastic for that
let g:pymode_lint_on_write = 0
let g:pymode_lint_signs = 0
" don't fold python code on open
let g:pymode_folding = 0
" don't load rope by default. Change to 1 to use rope
let g:pymode_rope = 0
" open definitions on same window, and custom mappings for definitions and
" occurrences
let g:pymode_rope_goto_definition_bind = ',d'
let g:pymode_rope_goto_definition_cmd = 'e'
nmap ,D :tab split<CR>:PymodePython rope.goto()<CR>
nmap ,o :RopeFindOccurrences<CR>

" ***********************
" NeoComplCache 
" ***********************
" most of them not documented because I'm not sure how they work
" (docs aren't good, had to do a lot of trial and error to make 
" it play nice)

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1

let g:complcache_enable_fuzzy_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 1
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_manual_completion_start_length = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_keyword_length = 1
let g:neocomplcache_min_syntax_length = 1
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" complete with workds from any opened file
let g:neocomplcache_same_filetype_lists = {}
let g:neocomplcache_same_filetype_lists._ = '_'
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
        let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()

" *****************
" TabMan
" *****************
" mappings to toggle display, and to focus on it
let g:tabman_toggle = 'tl'
let g:tabman_focus = 'tf'

" *****************
" Autoclose
" *****************
" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

" *******************
" DragVisuals
" *******************
" mappings to move blocks in 4 directions
vmap <expr> <S-M-LEFT> DVB_Drag('left')
vmap <expr> <S-M-RIGHT> DVB_Drag('right')
vmap <expr> <S-M-DOWN> DVB_Drag('down')
vmap <expr> <S-M-UP> DVB_Drag('up')
" mapping to duplicate block
vmap <expr> D DVB_Duplicate()

" **********************
" Signify
" **********************
" this first setting decides in which order try to guess your current vcs
" UPDATE it to reflect your preferences, it will speed up opening files
let g:signify_vcs_list = [ 'git', 'hg' ]
" mappings to jump to changed blocks
nmap <leader>sn <plug>(signify-next-hunk)
nmap <leader>sp <plug>(signify-prev-hunk)
" nicer colors
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

" *******************
" Window Chooser 
" *******************
" mapping
nmap  -  <Plug>(choosewin)
" show big letters
let g:choosewin_overlay_enable = 1

" ****************
" Airline 
" ****************
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'wombat'
let g:airline_theme = 'bubblegum'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#whitespace#enabled = 1

" to use fancy symbols for airline, uncomment the following lines and use a
" patched font (more info on the README.rst)
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
" let g:airline_symbols.branch = '⭠'
" let g:airline_symbols.readonly = '⭤'
" let g:airline_symbols.linenr = '⭡'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
"let g:airline_symbols.branch = '⎇'
let g:airline_symbols.readonly = ''
"let g:airline_symbols.readonly = 'RO'
"let g:airline_symbols.readonly = '✉'
let g:airline_symbols.linenr = ''

"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'

" new file set title and turn to endline
autocmd BufNewFile *.sh,*.yml,*.py,*.rb,*.[ch],*.cpp exec ":call SetTitle()"
function SetTitle()
    if &filetype == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "\################################################################################")
        call append(line(".")+1, "\#          FILE: ".expand('%'))
        call append(line(".")+2, "\#         USAGE: ")
        call append(line(".")+3, "\#   DESCRIPTION: ")
        call append(line(".")+4, "\#       OPTIONS: --- ")
        call append(line(".")+5, "\#          BUGS: --- ")
        call append(line(".")+6, "\#         NOTES: --- ")
        call append(line(".")+7, "\#        AUTHOR: niuzhiqiang, niuzhiqiang90@foxmail.com")
        call append(line(".")+8, "\#  ORGANIZATION: ")
        call append(line(".")+9, "\#       CREATED: ".strftime("%c"))
        call append(line(".")+10, "\#      REVISION: 1.0.0" )
        call append(line(".")+11, "\################################################################################")
        call append(line(".")+12, "")

    elseif &filetype == 'yaml'
        call setline(1,"################################################################################")
        call append(line("."), "#          FILE: ".expand('%'))
        call append(line(".")+1, "#         USAGE: ")
        call append(line(".")+2, "#   DESCRIPTION: ")
        call append(line(".")+3, "#       OPTIONS: --- ")
        call append(line(".")+4, "#          BUGS: --- ")
        call append(line(".")+5, "#         NOTES: --- ")
        call append(line(".")+6, "#        AUTHOR: niuzhiqiang, niuzhiqiang90@foxmail.com")
        call append(line(".")+7, "#  ORGANIZATION: ")
        call append(line(".")+8, "#       CREATED: ".strftime("%c"))
        call append(line(".")+9, "#      REVISION: 1.0.0")
        call append(line(".")+10, "\################################################################################")
        call append(line(".")+11, "")

    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "\################################################################################")
        call append(line(".")+2, "\#          FILE: ".expand('%'))
        call append(line(".")+3, "\#         USAGE: ")
        call append(line(".")+4, "\#   DESCRIPTION: ")
        call append(line(".")+5, "\#       OPTIONS: --- ")
        call append(line(".")+6, "\#          BUGS: --- ")
        call append(line(".")+7, "\#         NOTES: --- ")
        call append(line(".")+8, "\#        AUTHOR: niuzhiqiang, niuzhiqiang90@foxmail.com")
        call append(line(".")+9, "\#  ORGANIZATION: ")
        call append(line(".")+10, "\#       CREATED: ".strftime("%c"))
        call append(line(".")+11, "\#      REVISION: 1.0.0")
        call append(line(".")+12, "\################################################################################")
        call append(line(".")+13, "")

    elseif &filetype == 'ruby'
         call setline(1,"#!/usr/bin/env ruby")
         call append(line("."),"# encoding: utf-8")
         call append(line(".")+1, "")
    elseif &filetype =='c'
        call setline(1,"/********************************************************************************")
        call append(line("."), "*          FILE: ".expand('%'))
        call append(line(".")+1, "*         USAGE: ")
        call append(line(".")+2, "*   DESCRIPTION: ")
        call append(line(".")+3, "*       OPTIONS: --- ")
        call append(line(".")+4, "*          BUGS: --- ")
        call append(line(".")+5, "*         NOTES: --- ")
        call append(line(".")+6, "*        AUTHOR: niuzhiqiang, niuzhiqiang90@foxmail.com")
        call append(line(".")+7, "*  ORGANIZATION: ")
        call append(line(".")+8, "*       CREATED: ".strftime("%c"))
        call append(line(".")+9, "*      REVISION: 1.0.0")
        call append(line(".")+10, "*********************************************************************************/")
        call append(line(".")+11, "#include <stdio.h>")
        call append(line(".")+12, "")
    elseif &filetype == 'cpp'
        call setline(1,"/********************************************************************************")
        call append(line("."), "*          FILE: ".expand('%'))
        call append(line(".")+1, "*         USAGE: ")
        call append(line(".")+2, "*   DESCRIPTION: ")
        call append(line(".")+3, "*       OPTIONS: --- ")
        call append(line(".")+4, "*          BUGS: --- ")
        call append(line(".")+5, "*         NOTES: --- ")
        call append(line(".")+6, "*        AUTHOR: niuzhiqiang, niuzhiqiang90@foxmail.com")
        call append(line(".")+7, "*  ORGANIZATION: ")
        call append(line(".")+8, "*       CREATED: ".strftime("%c"))
        call append(line(".")+9, "*      REVISION: 1.0.0")
        call append(line(".")+10, "*********************************************************************************/")
        call append(line(".")+11, "#include <iostream>")
        call append(line(".")+12, "using namespace std;")
        call append(line(".")+13, "")
    endif
endfunction
autocmd BufNewFile * normal G

 map <F5> :call CompileRunGcc()<CR>
 func! CompileRunGcc()
     exec "w"
     if &filetype == 'c' 
         exec "!g++ % -o %<"
         exec "! ./%<"
     elseif &filetype == 'cpp'
         exec "!g++ % -o %<"
         exec "! ./%<"
     elseif &filetype == 'java'
         exec "!javac %" 
         exec "!java %<"
     elseif &filetype == 'sh'
         if expand('%:e') == 'sh'
             exec "!mv ./% ./%:t:r"
         endif
         :!./%:t:r
     elseif &filetype == 'python'
         exec "!python %"
         exec "!python %<"
     elseif &filetype == 'go'
         exec "!go run %"
     endif
 endfunc

" *********************
" Vim-jsx 
" *********************
" if you use JSX syntax in .js file, please enable it.
let g:jsx_ext_required = 0

" ************************
" Vim-markdown 
" ************************
" Disabled automatically folding
let g:vim_markdown_folding_disabled=1
" LeTeX math
let g:vim_markdown_math=1
" Highlight YAML frontmatter
let g:vim_markdown_frontmatter=1

" ********************
" Vim-instant-markdown 
" ********************
" If it takes your system too much, you can specify
" let g:instant_markdown_slow = 1
" if you don't want to manually control it
" you can open this setting
" and when you open this, you can manually trigger preview
" via the command :InstantMarkdownPreview
let g:instant_markdown_autostart = 0


" ********************
" vim-easy-align
" ********************
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive Easyalign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" *******************
""" numbers.vim
" *******************
""" Numbers Toggle
nnoremap <F7> :NumbersToggle<CR>
""" Numbers on/off
nnoremap <F8> :NumbersOnOff<CR>



set splitbelow
set splitright

""" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""" Enable folding
set foldmethod=indent
set foldlevel=99
set term=xterm-256color

""" when save the file than named *.conf and quit, the function Scpfile will be called
"function Scpfile()
"    execute 'ls'
"    execute '! scp % username@ip:~/tmp/test/'
"endfunction

"autocmd BufWritePost *.conf call Scpfile()

