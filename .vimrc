set nocompatible
set number "show line numbers
set tabstop=2
set shiftwidth=2
syntax on "enable syntax highlighting
set expandtab "Use spaces when tabbing
set incsearch  " Enable incremental search
set hlsearch   " Enable highlight search
"Create default mappings for nerdcommenter
let g:NERDCreateDefaultMappings = 1
filetype plugin indent on

inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
noremap  <Up>    <NOP>
noremap  <Down>  <NOP>
noremap  <Left>  <NOP>
noremap  <Right> <NOP>
noremap <Leader>b :ls<CR>:b
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

call plug#begin()
Plug 'flazz/vim-colorschemes' "A bunch of colorschemes
"Begin Set up vim like an IDE
Plug 'prettier/vim-prettier'
Plug 'jiangmiao/auto-pairs' "close quotes, brackets, etc etc
Plug 'alvan/vim-closetag' "automatically close (x)html tags
Plug 'tpope/vim-surround' "change matching "surrounds" like <b> </b> using "csX" (change.surround.X)
Plug 'sheerun/vim-polyglot' "Syntax highlighting / language packs indentaation
Plug 'preservim/nerdcommenter' "Syntax highlighting
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'dyng/ctrlsf.vim' "Enables asynchronously searching the file system. 
Plug 'ervandew/supertab'
Plug 'PhilRunninger/nerdtree-visual-selection'
"Plug 'neoclide/coc.nvim', {'branch': 'release'} "Conquer of Completion (code completion)
"End Set up vim like an IDE
call plug#end()

set t_Co=256
"colorscheme Tomorrow-Night-Bright
colorscheme simple_dark 


" START SETTINGS FOR VIM-CLOSETAG
"
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.vue'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *.vue'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml, *.vue'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx, *.vue'

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
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" END SETTINGS FOR VIM-CLOSETAG
