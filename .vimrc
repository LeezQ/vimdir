set nocompatible "关闭VI兼容模式

"编码设置
let &termencoding=$encoding
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin1

"缩进设置
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent

"GUI设置（关闭菜单栏和工具栏）
syntax enable
set background=dark
colorscheme solarized
set t_Co=256
set guioptions-=T
set guioptions-=m

"状态栏设置
set laststatus=2
set statusline=%F%m%r%h%w\ \[FORMAT=%{&ff}\]\ \[TYPE=%Y\]\ \[ASCII=%03.3b\]\ \[HEX=%02.2B\]\ \[POS=%04l,%04v\]\[%p%%\]\ \[LEN=%L\]
set nu "显示行号
set autochdir "自动切换工作目录
syntax on "语法高亮
filetype plugin indent on "开启插件
"set mouse=a "开启鼠标支持
set so=10 "设置光标距离上下边界的距离
set hidden "允许在有未保存的修改时切换缓冲区
set ruler "开启右下角光标位置显示
set showcmd "在窗口右下角显示完整命令已输入部分
set ignorecase "忽略大小写匹配
set incsearch "开启输入时的搜索
set magic "用于模式匹配的，建议开启
set hlsearch "搜索关键词高亮
set cmdheight=2 "设置命令行高度
setlocal noswapfile "关闭临时文件
set wildmenu "启用文本模式的菜单
set cursorline "高亮当前行
set foldlevelstart=99

"让.vimrc每次编辑保存后自动生效，避免重启
autocmd! bufwritepost .vimrc source ~/.vimrc

"匹配括号的规则，增加针对html的<>
set matchpairs=(:),{:},[:],<:>

"让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）
set whichwrap=b,s,<,>,[,]

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 自动补全 omnicomplete
set nocp
autocmd FileType text setlocal textwidth=79
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete


" VOOF
map <F11> :Voof<CR>
syn match zhead0 "^.\+{{{\d"
hi zhead0 gui=bold guibg=black
syn match zhead1 "^.\+{{{1"
hi zhead1 gui=bold guifg=red guibg=black
syn match zhead2 "^.\+{{{2"
hi zhead2 gui=bold guifg=green guibg=black
syn match url "\S*://\S*" 
hi url guifg=lightblue gui=underline

" NERDTree
map <F9> :NERDTreeToggle<CR>

" Buffer Explore
let g:bufExplorerSortBy='mru'
let g:bufExplorerSplitRight=0
let g:bufExplorerSplitVertical=1
let g:bufExplorerSplitVertSize = 30
let g:bufExplorerUseCurrentWindow=1
autocmd BufWinEnter \[Buf\ List\] setl nonumber

"对NERD_commenter的设置
let NERDShutUp=1
"支持单行和多行的选择，
map <c-z> ,c<space>

"设置折叠
map <F4> za

"设置函数列表
map <F3> :TlistToggle<CR>

" taglist
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_date = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Show_One_File = 0
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40
let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'

" autoload vimrc
autocmd! bufwritepost .vimrc source %

inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap < <><ESC>i
inoremap > <c-r>=ClosePair('>')<CR>

function! ClosePair(char)
  if getline('.')[col('.') - 1] == a:char
    return "\<Right>"
  else
    return a:char
  endif
endf

"js语法高亮脚本的设置
let g:javascript_enable_domhtmlcss=1
let b:javascript_fold=1
let g:tlist_javascript_settings = 'javascript;s:string;a:array;o:object;f:function;m:member'

runtime macros/matchit.vim 


