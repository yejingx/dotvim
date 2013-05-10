set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
filetype plugin indent on

Bundle 'python.vim'
Bundle 'pyflakes.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'groenewege/vim-less'
Bundle 'lastpos.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'snipmate-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'flazz/vim-colorschemes'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'AutoComplPop'
Bundle 'Pydiction'
Bundle 'minibufexpl.vim'
Bundle 'pylint.vim'
Bundle 'lukaszb/vim-web-indent'

"
"语法高亮
syntax on

"关闭备份
set nobackup

"不要闪烁
set novisualbell

"去窗口标题
set go=

"忽略启动提示
set shortmess=atl

"关闭遇到错误时的声音提示
set noerrorbells

"设置编码自动识别, 中文引号显示  
"set fileencodings=utf-8,cp936,big5,euc-jp,euc-kr,latin1,ucs-bom  
set fileencodings=utf-8,gbk  
set ambiwidth=double 

"ColorScheme
colorscheme desert

"允许退格键删除和tab操作  
set smartindent  
set smarttab  
set expandtab  
set tabstop=4  
set softtabstop=4  
set shiftwidth=4  
set backspace=2

"tw太小会按空格等字符自动截断行
set textwidth=200

"启用鼠标  
set mouse=  
  
"启用行号  
set nu 

"折叠
set foldmethod=indent

set nofoldenable

"自动补全  
filetype plugin indent on
set completeopt=longest,menu

"自动补全命令时候使用菜单式匹配列表  
set wildmenu
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complet

"Pydiction
let g:pydiction_location='~/.vim/bundle/Pydiction/complete-dict'

filetype plugin on
set autoindent
syntax enable
set number
"defalut g:pydiction_menu_height == 15
"let g:pydiction_menu_height = 20

"minibufexplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1


"
filetype plugin on
set ofu=syntaxcomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python runtime! autoload/pythoncomplete.vim

set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

"TagList
let g:ctags_statusline=1
let generate_tags=1
let Tlist_Use_Horiz_Window=0
map <F4> : TlistToggle<cr>
let Tlist_Use_Left_Window=1
let Tlist_Compact_Format=1
let Tlist_Exit_OnlyWindow=1
let Tlist_GainFocus_On_toggleOpen=1
let Tlist_File_Fold_Auto_Close=1

"NerdTree
map <F3> :NERDTreeToggle<CR>

inoremap ;; <esc>:w<cr>a
inoremap ,, <esc>
"inoremap ) ()<Esc>i
"inoremap ( ()<Esc>i
"inoremap { {}<Esc>i
"inoremap } {}<Esc>i
"inoremap [ []<Esc>i
"inoremap ] []<Esc>i
"inoremap < <><Esc>i
"inoremap > <><Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i

set listchars=tab:>-,trail:-
set list

"透明度
"map <F10> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 200)<CR>
"map <F11> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 255)<CR>

hi MatchParen ctermbg=blue guibg=lightblue

"字体设置
set guifont=Consolas:h12

map <F12> :!python %
map <F5> :!pylint %

set showcmd
