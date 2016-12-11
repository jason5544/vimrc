""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""Vundle"""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required 不要使用vi的键盘模式，而是vim自己的
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

" Plugin 'vim-scripts/winmanager'

Plugin 'Valloric/YouCompleteMe'

Plugin 'ctags.vim'

" Plugin 'taglist.vim'

Plugin 'todolist.vim'

Plugin 'EasyGrep'

Plugin 'Tagbar'

Plugin 'a.vim'

Plugin 'SirVer/ultisnips'             " Track the engine.

Plugin 'honza/vim-snippets'  " Snippets are separated from the engine.

Plugin 'vim-scripts/indentpython.vim'  

" Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-fugitive'

" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'vim-scripts/tComment'

Plugin 'pbrisbin/vim-mkdir'

Plugin 'Lokaltog/vim-easymotion'

Plugin 'kien/ctrlp.vim'

" Plugin 'mattn/emmet-vim'

" Plugin 'vim-scripts/vim-auto-save'

Plugin 'scrooloose/nerdtree'

Plugin 'godlygeek/tabular'

Plugin 'plasticboy/vim-markdown'

Plugin 'suan/vim-instant-markdown'

" Plugin 'vim-airline/vim-airline'

" Plugin 'vim-airline/vim-airline-themes'

" Plugin 'Shougo/vimshell.vim'

" Plugin 'Shougo/vimproc.vim'

" Plugin 'ervandew/supertab' 

" Plugin 'gdbmgr' 

" Plugin 'txt.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required 允许插件,根据文件类型使用相应插件
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""键盘命令""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <leader>w :w!<cr>

nmap <leader>f :find<cr>


" 映射全选+复制 ctrl+a

map <C-A> ggVGY

map! <C-A> <Esc>ggVGY

map <F12> gg=G

" 选中状态下 Ctrl+c 复制

vmap <C-C> "+y

""黏贴"""""""
nmap <C-V> "+p

"去空行  

nnoremap <F2> :g/^\s*$/d<CR> 

"比较文件  

nnoremap <C-F2> :vert diffsplit 

"新建标签  

map <M-F2> :tabnew<CR>  

"列出当前目录文件  

map <F3> :tabnew .<CR>  

"打开树状文件目录  

map <C-F3> \be  

"C，C++ 按F5编译运行

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

         :!./%

     endif

 endfunc

"C,C++的调试

map <F8> :call Rungdb()<CR>

func! Rungdb()

    exec "w"

    exec "!g++ % -g -o %<" 

    exec "!gdb ./%<"

endfunc

"""""""""""""paste"""""""""""""""""""""""""""""
map <F9> :set paste<CR> 
map <F10> :set nopaste<CR> 

""""""""""插入模式下跳出括号""""""""""""""""""""
:inoremap <C-L> <ESC>la
:inoremap <C-H> <ESC>i


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""实用设置""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置当文件被改动时自动载入

set autoread

"自动保存

set autowrite

" quickfix模式

"autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>

"代码补全 

set completeopt=menu 

"共享剪贴板  

set clipboard+=unnamed 


"make 运行

"":set makeprg=g++\ -Wall\ \ %


" set ruler                   " 打开状态栏标尺

" set cursorline              " 突出显示当前行

" set magic                   " 设置魔术


" 设置在状态行显示的信息

set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\

" 总是显示状态行 1 为开始时显示， 2为总是显示

set laststatus=2

" 语法高亮

syntax on

" 去掉输入错误的提示声音

set noeb

" 在处理未保存或只读文件的时候，弹出确认

set confirm

" 智能缩进，其他模式autoindent, cindent

set smartindent

""""""""""""""" Tab键的宽度""""""""""""""""

set tabstop=4

" 统一缩进为4
set softtabstop=4

set shiftwidth=4

" 不要自动换行
set textwidth=0 

" 不要自动折断
" set nowrap

" 要用空格代替制表符
set expandtab

" 在行和段开始处使用制表符
set smarttab

" 显示行号
set number

" 历史记录数

set history=1000

"临时文件
set backup
set backupdir=~/.vim/backup

" set nobackup
" set noswapfile


"搜索忽略大小写
set ignorecase

"搜索逐字符高亮

set hlsearch

set incsearch

"行内替换

set gdefault

"语言设置

" set langmenu=zh_CN.UTF-8
"
" set helplang=cn
"
" 命令行（在状态行下）的高度，默认为1，这里是2

set cmdheight=1

set viminfo+=!

" 带有如下符号的单词不要被换行分割

set iskeyword+=_,$,@,%,#,-

" 字符间插入的像素行数目

set linespace=0

" 增强模式中的命令行自动完成操作

set wildmenu

" 使回格键（backspace）正常处理indent, eol, start等

set backspace=2

" 允许backspace和光标键跨越行边界

set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）

set mouse=a

set selection=exclusive

set selectmode=mouse,key

" 通过使用: commands命令，告诉我们文件的哪一行被改变过

set report=0

" 在被分割的窗口间显示空白，便于阅读

set fillchars=vert:\ ,stl:\ ,stlnc:\

" 高亮显示匹配的括号

set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）

set matchtime=1

" 光标移动到buffer的顶部和底部时保持3行距离

set scrolloff=3

"""""""""自动补全括号""""""""""""""""""""

:inoremap ( ()<ESC>i

:inoremap ) <c-r>=ClosePair(')')<CR>

" :inoremap { {}<ESC>i

:inoremap { {<CR>}<ESC>O

:inoremap } <c-r>=ClosePair('}')<CR>

:inoremap [ []<ESC>i

:inoremap ] <c-r>=ClosePair(']')<CR>

:inoremap " ""<ESC>i

:inoremap ' ''<ESC>i

function! ClosePair(char)

    if getline('.')[col('.') - 1] == a:char

        return "\<Right>"

    else

        return a:char

    endif

endfunction

""""""""""""""""""""编码设置""""""""""""""""""""

set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

set termencoding=utf-8

set encoding=utf-8

set fileencoding=utf-8


"""""""""""""py文件头自动添加注释"""""""""""""""""""""""""
autocmd bufnewfile *.py call HeaderPython()
function HeaderPython()
    call setline(1, "#!/usr/bin/env python3")
    call append(1, "# -*- coding: utf-8 -*-")
    normal G
    normal o
    normal o
endf


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""" CTags的设定  """"""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let Tlist_Sort_Type = "name"    " 按照名称排序  

let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  

let Tlist_Compart_Format = 1    " 压缩方式  

let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  

let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  

let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  

autocmd FileType java set tags+=D:\tools\java\tags  

"autocmd FileType h,cpp,cc,c set tags+=D:\tools\cpp\tags  

"let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的

"设置tags  

set tags=tags  

"set autochdir 


""""""""""""""""""""""""""""""" minibufexpl插件的一般设置""""""""""""""""""""""
"
" let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapWindowNavArrows = 1
" let g:miniBufExplMapCTabSwitchBufs = 1
" let g:miniBufExplModSelTarget = 1


""""""""""""""""""""""""""""""""""" Tag list (ctags) """"""""""""""""""""""""""""
" let Tlist_Ctags_Cmd = '/usr/local/bin/ctags' 
" let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的 
" let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim 
" let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
" let Tlist_Auto_Open=1 "默认打开Taglist 


""""""""""""""""""""""""""""""""""""""""" winManage 配置""""""""""""""""""""""""""
" let g:winManagerWindowLayout='FileExplorer|TagList'
"
" nmap wm :WMToggle<cr>


"""""""""""""""""""""""""""""""""""""""""cscope 配置""""""""""""""""""""""""""""""""
if has("cscope")

	  set csprg=/usr/bin/cscope

	  set csto=0

	  set cst

	  set nocsverb

	  " add any database in current directory

	  if filereadable("cscope.out")

		  cs add cscope.out

	  " else add database pointed to by environment

	  elseif $CSCOPE_DB != ""

		  cs add $CSCOPE_DB

	  endif

	  set csverb

endif

" nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
" nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR> 
" nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR> 
" nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR> 
" nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR> 
" nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR> 
" nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
" nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR> 
"
    
" map g<C-]>:cs find 3 <C-R>=expand(“<cword>”)<CR><CR>
" map g<C-/>:cs find 0 <C-R>=expand(“<cword>”)<CR><CR>



"""""""""""""""""""""""""""""""" youcompleteme setting""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf=0
let g:ycm_key_invoke_completion = '<C-/>'
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

"""""""""""""""""""""""""""""""""""tagbar"""""""""""""""""""""""""""""""

autocmd BufRead *.* nmap tb :Tagbar<cr>
let tagbar_ctags_bin='/usr/bin/ctags'
let tagbar_width=30
let g:tagbar_compact = 1
let g:tagbar_autoshowtag = 1


"""""""""""""""""""""""""""""""""""""a.vim"""""""""""""""""""""""""""""""""""
" nnoremap <silent> <F12> :A<CR>

""""""""""""""""""""""""""""""""""""snipet""""""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

""""""""""""""""""""""""""""""""""""折叠栏""""""""""""""""""""""""""""""""""""
"--fold setting--
" set foldmethod=syntax " 用语法高亮来定义折叠

set foldmethod=indent 
set foldenable              " 开始折叠
set foldlevel=100 " 启动vim时不要自动折叠代码
set foldcolumn=3  "设置折叠栏宽度
""set nofoldenable


""""""""""""""""""""""""""""""""""""easymotion""""""""""""""""""""""""""""""""
let g:EasyMotion_leader_key='<Space>'

"
" """""""""""""""""""""'""""""""""'""autosave""'""""""""""'"""""""""""""""""""""
" let g:auto_save = 1  " enable AutoSave on Vim startup
" let g:auto_save_no_updatetime = 1  " do not change the 'updatetime' option
" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
" let g:auto_save_silent = 1  " do not display the auto-save notification
"
"""""""""""""""""""""""""""""""""""NERD Tree""""""""""""""""""""""""""""""""""""
"不显示帮助信息
 let NERDTreeMinimalUI=1
"鼠标点击							 
 let NERDTreeMouseMode = 2
"宽度
 let g:NERDTreeWinSize = 20 
"忽略文件、隐藏文件
 let NERDTreeIgnore = ['\.pyc$', '\.o$', 'cscope.*','tags']
let NERDTreeSortOrder=['\/$', 'Makefile', 'makefile', '*', '\~$']
 nmap wm :NERDTreeToggle<cr>
"分割窗口移动快捷键
 nnoremap <c-h> <c-w>h
 nnoremap <c-j> <c-w>j
 nnoremap <c-k> <c-w>k
 nnoremap <c-l> <c-w>l
"autocmd BufRead *.py :NERDTreeToggle
"关闭窗口
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


""""""""""""""""""""""""""""""""""""Emmet""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_expandabbr_key = '<C-e>'


"""""""""""""""""""""""""""""""""""""""""doxygen toolkit """"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
" let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
" let g:DoxygenToolkit_blockFooter="--------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Jason Ding"
let g:DoxygenToolkit_licenseTag="License: GPL 2.0"

