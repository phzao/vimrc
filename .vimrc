set t_Co=256
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set omnifunc=phpcomplete#CompletePHP
set modifiable
set noswapfile
" iset smarttab
set autoindent
set ignorecase
set smartcase
set ch=2
set vb
set backspace=2
set hidden
set cpoptions=ces$
set laststatus=2
set lazyredraw
set showcmd
set showmode
set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor  
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

"config teste
set mouse=a
set backspace=indent,eol,start
set hlsearch

set tabstop=4
set shiftwidth=4
set expandtab
map <silent> <Leader>d <esc>:call UiToggle()<CR>:bd<CR>:call UiToggle()<CR>

" set textwidth=8
"colorscheme jellybeans afterglow meta5
colorscheme gruvbox
syntax on
set guioptions-=m
set guioptions=ac
set history=100
set scrolloff=8
set virtualedit=all
set key=
set wildmenu
set showfulltag
" set textwidth=120
set textwidth=0
set fillchars=""
"set diffopt+=iwhite
set incsearch

set nocompatible
filetype plugin indent on
" Remove toolbar
set guioptions-=T
map <C-t> :FufFile **/<CR>
nnoremap <D-c> a
imap <D-c> <Esc>
set number
let g:TailMinusF_Center_Win = 1
set stl=%f\ %h\ %m\ %r\ %{rails#statusline()}%=\ %{fugitive#statusline()}%=\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]
" set stl=%f\ %h\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]
" statusline=%<%f %h%m%r%{rails#statusline()}%=
noremap <leader>t :NERDTreeToggle<CR>
set hlsearch
let NERDTreeWinPos='left'
let NERDTreeWinSize=60
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv
nnoremap <D-j> :m+<CR>==
nnoremap <D-k> :m-2<CR>==
inoremap <D-j> <Esc>:m+<CR>==gi
inoremap <D-k> <Esc>:m-2<CR>==gi
vnoremap <D-j> :m'>+<CR>gv=gv
vnoremap <D-k> :m-2<CR>gv=gv
set diffopt=filler
set diffopt+=iwhite
vmap <Leader>a; :Tabularize /:<CR>gv
vmap <Leader>a= :Tabularize /=<CR>gv
vmap <Leader>at :Tabularize /\|<CR>gv
nmap <silent> <Leader>at :let a=winsaveview()<CR>ggVG:Tabularize /\|/<CR>:call winrestview(a)<CR><ESC>
nmap <silent> <Leader>a= :let a=winsaveview()<CR>ggVG:Tabularize /=/<CR>:call winrestview(a)<CR><ESC>
nmap <silent> <Leader>a; :let a=winsaveview()<CR>ggVG:Tabularize /:/<CR>:call winrestview(a)<CR><ESC>
nmap <silent> <Leader>h :call HexHighlight()<CR>
let mapleader = "\\"
let g:mapleader = "\\"

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'Shougo/deoplete.nvim'

Plug 'mxw/vim-jsx'

Plug 'leafgarland/typescript-vim'

Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

Plug 'vim-vdebug/vdebug'

Plug 'dbakker/vim-projectroot'

Plug 'andymass/vim-matchup'

Plug 'editorconfig/editorconfig-vim'

Plug 'eliba2/vim-node-inspect'

Plug 'christophermca/meta5'

Plug 'danilo-augusto/vim-afterglow'

Plug 'maksimr/vim-jsbeautify'

Plug 'Chiel92/vim-autoformat'

Plug 'townk/vim-autoclose'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

Plug 'alvan/vim-closetag'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'sheerun/vim-polyglot'

Plug 'dense-analysis/ale'

Plug 'StanAngeloff/php.vim'

Plug 'pangloss/vim-javascript'

Plug 'Shougo/neocomplete.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'puremourning/vimspector'

Plug 'mhinz/vim-signify'

Plug 'yggdroot/indentline'
Plug 'tpope/vim-surround'

Plug 'vim-scripts/vcscommand.vim'

Plug 'scrooloose/nerdcommenter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'arnaud-lb/vim-php-namespace'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'airblade/vim-rooter'

Plug 'phpstan/vim-phpstan'

Plug '~/projects/vim-functions'

Plug 'ddrscott/vim-side-search'

Plug 'wellle/targets.vim'

Plug '2072/PHP-Indenting-for-VIm'

Plug '2072/vim-syntax-for-PHP'

Plug 'itchyny/lightline.vim'

Plug 'majutsushi/tagbar'

Plug 'vim-php/tagbar-phpctags.vim'

Plug 'ludovicchabant/vim-gutentags'

" Initialize plugin system
call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"let g:php_version_id = 70300
let g:polyglot_disabled = ['css']
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
"call deoplete#custom#option('sources', {
"\ '_': ['ale', 'foobar'],
"\})
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_tsserver_autoimport = 1

"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
"let g:neocomplete#sources#dictionary#dictionaries = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"        \ }

" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
"    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
"  let g:neocomplete#sources#omni#input_patterns = {}
"endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" [Buffers] Jump to the existing window if possible
"let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
set buftype=
" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
" augroup javascript_folding
"    au!
"    au FileType javascript setlocal foldmethod=syntax
" augroup END
set conceallevel=1
let g:ack_apply_lmappings = 1
map <c-f> :call JsBeautify()<cr>

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
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

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

set autochdir 
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
"let g:ctrlp_custom_ignore = 'vendor/\|tests\/log\|git\|env\|build/\|dist/\|__pycache__\|docs\/build/\|public_html\/api/\|public_html\/docs/\|*.pyc'
let g:ctrlp_match_current_file = 1
let g:ctrlp_lazy_update = 1
let g:ctrlp_extensions = ['tag', 'buffertag']
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_use_caching = 0
" ==== End CtrlP settings ====

" ==== End gutentags settings ====
"
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
    \   'lineinfo': '%l\%L [%p%%], %c, %n',
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

" ==== Autoclose 
inoremap { {}<ESC>ha
inoremap { []<ESC>ha
inoremap { ()<ESC>ha
inoremap { ""<ESC>ha
inoremap { ''<ESC>ha

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
set relativenumber                        

let g:vdebug_options = {
      \ 'port' : 9008,
      \ 'server' : '',
      \ 'path_maps': {
        \ '/application': '/Users/paulohenriquepachecobotelho/Dev/fractal/siga-api'
      \ }
      \}

" PROJECTROOT
let g:rootmarkers = ['.projectroot', 'docker-compose.yml', '.git', '.hg', '.svn', '.bzr','_darcs','build.xml']

function! SetupDebug()
  let g:vdebug_options['path_maps'] = {'/app': call('projectroot#get', a:000)}
  " Hack to override vdebug options
  source ~/.vim/plugged/vdebug/plugin/vdebug.vim
endfunction
autocmd VimEnter * :call SetupDebug()
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
packadd! vimspector

"JS import
set tagfunc=jsfileimport#tagfunc
let g:js_file_import_sort_after_insert = 0
let g:js_file_import_prompt_if_no_tag = 1
let g:js_file_import_package_first = 0
let g:js_file_import_omit_semicolon = 0
set wildignore+=*node_modules/**
