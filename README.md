# vimrc
* 安装teminator
$ sudo apt-get intall teminator
复制配置文件到~/.config/terminator/

* 安装vundle
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

* 安装ctags
$ sudo apt-get install ctags

* 安装cscope
$ sudo apt-get install cscope

* 安装youcompleteme
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

* 在~/目录创建backup文件夹

* 安装markdown
[markdown安装过程](http://www.jianshu.com/p/24aefcd4ca93)

* 安装Doxygen

# vim 快捷键

映射
esc  ctrl + [
复制 ctrl + c
粘贴 ctrl + v
全选 ctrl + a

:set paste paste模式

:set nopaste

:set list 查看回车 ，tab, 空格

:set nolist

:args 打开多各文件

:argdo 批处理命令

:set fileencoding=utf-8

:set fileformat=unix

:set number

:cw quickfix模式

:make 编译

:find 查找文件

:new  创建文件

:e 重新编辑 打开文件 载入更改

:file 重命名

:sp 打开两个窗口
:vsp  水平打开两个窗口

:close
:only

ctrl + 方向
在窗口间移动

:marks
增加书签 
m a m A
` + a ` + A

跳转
ctrl + o
ctrl + i
返回''

# * 同字符跳转
0 $ ^ 同一行 跳转

输入shell
:! shell命令

H M L 光标在页 头 中 尾

翻页
ctrl + e 
ctrl + y
ctrl + u
ctrl + d
ctrl + f
ctrl + d

buffer
:ls
:b[n]

代码折叠
za

NBtree
打开文件目录
wm
R 刷新

tagbar
打开 tagbar
tb

autoformat
:Autoformat 自动对齐

a.vim
:A 头文件切换

grep
:Grep

git
:Git

doxygen
:Dox
:DoxAuthor

ctrlP 插件
ctrl + p
ctrl + j 向下
ctrl + k 向下
F5 刷新

ycm提供的文件跳转
, + a 声明
, + i 定义
, + o 打开文件

ctags 跳转
ctrl + ]
ctrl + T

cscopes
:cs find s
:cs find c

easy move
空格 + w

# vim 参数 
-d 比较不同
:vertical diffsplit
不同行之间的跳转[c ]c
dp diff put 
do diff get

-r 恢复

ctrl + F5 编译运行
ctrl + f8  调试 

F12 自动对齐
F11 全屏 

