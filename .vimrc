colorscheme gruvbox
syntax on
set mouse=a
set guioptions-=m
set guioptions=ac
set history=100
set scrolloff=8
set virtualedit=all
set number
set noswapfile
set showcmd
set showmode
set wildmenu
set laststatus=2

set cmdheight=2
set ch=2
set vb
set backspace=2
set backspace=indent,eol,start
set hlsearch

let g:loaded_matchit = 1
set tabstop=4
set shiftwidth=2
set expandtab

function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

map <silent> <Leader>d <esc>:call UiToggle()<CR>:bd<CR>:call UiToggle()<CR>
let g:TailMinusF_Center_Win = 1
set stl=%f\ %h\ %m\ %r\ %{rails#statusline()}%=\ %{FugitiveStatusLine()}%=\ [%{mode()}%=]\ %{StatuslineGit()}%=\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'metalelf0/supertab'

Plug 'preservim/nerdtree'

Plug 'majutsushi/tagbar'

Plug 'Shougo/deoplete.nvim'

Plug 'vim-php/tagbar-phpctags.vim'

Plug 'ludovicchabant/vim-gutentags'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

Plug 'alvan/vim-closetag'

Plug 'mileszs/ack.vim'

Plug 'dyng/ctrlsf.vim'

Plug 'wellle/targets.vim'

Plug 'Shougo/neocomplete.vim'

Plug 'dense-analysis/ale'

Plug 'StanAngeloff/php.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'arnaud-lb/vim-php-namespace'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-surround'

Plug 'andymass/vim-matchup'

Plug 'scrooloose/nerdcommenter'

Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

Plug 'puremourning/vimspector'

Plug 'sheerun/vim-polyglot'

Plug 'mhinz/vim-signify'

Plug 'yggdroot/indentline'

Plug 'vim-scripts/vcscommand.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'itchyny/lightline.vim'

Plug 'vim-syntastic/syntastic'
Plug 'neomake/neomake'

Plug 'pangloss/vim-javascript'

Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular'
Plug 'benmills/vimux'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'gilsondev/searchtasks.vim'
Plug 'tpope/vim-dispatch'

Plug 'majutsushi/tagbar'
Plug 'wesQ3/vim-windowswap'
Plug 'SirVer/ultisnips'

" Git Support
Plug 'kablamo/vim-git-log'
Plug 'gregsexton/gitv'
Plug 'jaxbot/github-issues.vim'"

" PHP Support
" Plug 'phpvim/phpcd.vim'
Plug 'tobyS/pdv'

" Theme / Interface
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plug 'junegunn/limelight.vim'
Plug 'mkarmona/colorsbox'
Plug 'romainl/Apprentice'
Plug 'Lokaltog/vim-distinguished'
Plug 'chriskempson/base16-vim'
Plug 'w0ng/vim-hybrid'
Plug 'AlessandroYorba/Sierra'
Plug 'daylerees/colour-schemes'
Plug 'effkay/argonaut.vim'
Plug 'ajh17/Spacegray.vim'
Plug 'atelierbram/Base2Tone-vim'
Plug 'colepeters/spacemacs-theme.vim'

" flutter dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

call plug#end()

set langmenu=it_IT.UTF-8
language messages it_IT.UTF-8

"dart
let g:lsc_auto_map = v:true
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"end dart

let g:NERDTreeGlyphReadOnly = "RO"
let NERDTreeNodeDelimiter = "\t"
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

packloadall
silent! helptags ALL

set signcolumn=yes

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

if exists('*complete_info')
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

let NERDTreeShowHidden=1
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
set buftype=
" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

set tags=tags;/

let g:gutentags_cache_dir = '~/.vim/gutentags'

let g:gutentags_ctages_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
            \ '*.phar', '*.ini', '*.rst', '*.md',
            \ '*vendor/*/test*', '*vendor/*/Test*',
            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
            \ '*var/cache*', '*var/log*']

map <silent> <leader>jd :CtrlPTag<cr><C-\>w
let g:tagbar_phpctags_bin='~/.vim/phpctags'

" ==== CtrlP settings ====
" Open CtrlP buffers
map <tab> :CtrlPBuffer<cr>
map <leader>tb :CtrlPBufTag<cr>
map <leader>ta :CtrlPTag<cr>
" Jump to definition
map <silent> <leader>jd :CtrlPTag<cr><C-\>w
" Things to ignore with CtrlP
let g:ctrlp_user_command = 'ag %s -l --nocolor -g "" '
" uses ~/.agignore
let g:ctrlp_match_current_file = 1
let g:ctrlp_lazy_update = 1
let g:ctrlp_extensions = ['tag', 'buffertag']
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_use_caching = 0
" ==== End CtrlP settings ====

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" ==== End gutentags settings ====

" Equivalent to the above.
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
            \   'php': ['php'],
            \}
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" ==== lightline settings ====
let g:lightline = {
            \ 'active': {
            \   'left': [['mode'], ['readonly', 'filename', 'modified'], ['tagbar', 'gutentags']],
            \   'right': [['lineinfo'], ['filetype']]
            \ },
            \ 'inactive': {
            \   'left': [['absolutepath']],
            \   'right': [['lineinfo'], ['filetype']]
            \ },
            \ 'component': {
            \   'lineinfo': '%l\%L [%p%%], %c, %n, %{StatuslineGit()}',
            \   'tagbar': '%{tagbar#currenttag("[%s]", "", "f")}',
            \   'gutentags': '%{gutentags#statusline("[Generating...]")}'
            \ },
            \ }
" ==== End lightline settings ====

" ==== vim-php-namespace settings ====
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>pnu <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>pnu :call PhpInsertUse()<CR>
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>pne <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>pne :call PhpExpandClass()<CR>
autocmd FileType php inoremap <Leader>pns <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>pns :call PhpSortUse()<CR>
let g:php_namespace_sort_after_insert=1

" ==== End plugin settings ====

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
            \ 'typescript.tsx': 'jsxRegion,tsxRegion',
            \ 'javascript.jsx': 'jsxRegion',
            \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

"JS import
set tagfunc=jsfileimport#tagfunc
let g:js_file_import_sort_after_insert = 0
let g:js_file_import_prompt_if_no_tag = 1
let g:js_file_import_package_first = 0
let g:js_file_import_omit_semicolon = 0
set wildignore+=*node_modules/**

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" === COMMENT code
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

autocmd VimEnter * redraw!

set listchars=
"set listchars+=tab:𐄙\
set listchars+=tab:\ \
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:⣿

"New confs
set ruler
set smarttab

set cursorline
" Theme and Styling 
" set t_Co=256
set background=dark

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" Syntastic Configuration
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" "
" Vim-PDV Configuration 
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

" Markdown Syntax Support
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Vim-Supertab Configuration
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
"
" " Settings for Writting
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
let g:languagetool_jar  = '/opt/languagetool/languagetool-commandline.jar'
"
" " Vim-pencil Configuration
augroup pencil
    autocmd!
    autocmd FileType markdown,mkd call pencil#init()
    autocmd FileType text         call pencil#init()
augroup END
"
"" Vim-UtilSnips Configuration
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split
"
"" Vim-Test Configuration
let test#strategy = "vimux"

function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

let g:fzf_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }

" Default fzf layout
" " - down / up / left / right
let g:fzf_layout = { 'down': '~40%'  }
let g:fzf_layout = { 'window': 'enew'  }
let g:fzf_layout = { 'window': '-tabnew'  }

let g:fzf_colors ={ 'fg':      ['fg', 'Normal'],'bg':      ['bg', 'Normal'],'hl':      ['fg', 'Comment'],'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],'bg+':     ['bg', 'CursorLine', 'CursorColumn'],'hl+':     ['fg', 'Statement'],'info':    ['fg', 'PreProc'],'prompt':  ['fg', 'Conditional'],'pointer': ['fg', 'Exception'],'marker':  ['fg', 'Keyword'],'spinner': ['fg', 'Label'],'header':  ['fg', 'Comment']  }

" Enable per-command history.
" " CTRL-N and CTRL-P will be automatically bound to next-history and
" " previous-history instead of down and up. If you don't like the change,
" " explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
" let g:fzf_history_dir = '~/.local/share/fzf-history'
" "

"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
map <C-m> :TagbarToggle<CR>
"
"""""""""""""""""""""""""""""""""""""
" Omnicomplete Better Nav
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"
" " <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"
" " Mapping selecting Mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

nnoremap <Leader>o :Files<CR> 
nnoremap <Leader>O :CtrlP<CR>
nnoremap <Leader>w :w<CR>

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

autocmd FileType php inoremap <C-p> <ESC>:call pdv#DocumentWithSnip()<CR>i
autocmd FileType php nnoremap <C-p> :call pdv#DocumentWithSnip()<CR>
autocmd FileType php setlocal omnifunc=phpcd#CompletePHP

if get(g:, 'elite_mode')
    nnoremap <Up>    :resize +2<CR>
    nnoremap <Down>  :resize -2<CR>
    nnoremap <Left>  :vertical resize +2<CR>
    nnoremap <Right> :vertical resize -2<CR>
endif

map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>
noremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

set encoding=UTF-8
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction

autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>
autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>

let g:php_namespace_sort_after_insert = 1

"vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" augroup javascript_folding
"     au!
"     au FileType javascript setlocal foldmethod=syntax
" augroup END

" let g:javascript_conceal_arrow_function       = "⇒"

" set conceallevel=1
set shell=/bin/zsh
set nocompatible

" resize split window using mouse
set ttymouse=sgr
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end