set nocompatible             					 " Lastest settings and options"

so ~/.vim/plugins.vim

set backspace=indent,eol,start
let mapleader = ','

"Open NERDTree when there is no arg"
autocmd VimEnter * if !argc() | NERDTree | endif
autocmd FileType vue syntax sync fromstart




"------------------Ctrl-P------------------"
"set runtimepath^=~/.vim/bundle/ctrlp.vim"




"------------------Visuals------------------"
colorscheme material-theme
set background=dark
set number
set linespace=8
set termguicolors
syntax enable
set guifont=Operator_Mono_book:h13
let NERDTreeShowHidden = 1
let NERDTreeHijackNetrw = 0

"Remove Scrollbars"
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R




"------------------Search------------------"
set hlsearch
set incsearch





"------------------Auto-Commands------------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END





"------------------Mappings------------------"
"Make it easy to edit Vimrc File 
nmap <Leader>ev :tabedit $MYVIMRC<cr>
"Add simple highligt removal"
nmap <Leader><space> :nohlsearch <cr>





"-------------Split Management--------------"
set splitbelow 								"Make splits default to below...
set splitright								"And to the right. This feels more natural.

"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>





"------------------Close Tags------------------"
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.vue'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,vue'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,vue'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
