" .vimrc
" 参见: http://vimdoc.sourceforge.net/htmldoc/options.html 获取更多信息

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/ma/.vim/bundle'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'Lokaltog/vim-powerline'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"archwiki通用配置
"set nocompatible  "非兼容模式，使用vim高级特性
" 对于多字节字符支持 (如 CJK 支持):
set fileencodings=utf-8,cucs-bom,p936,big5,euc-jp,euc-kr,gb18030,latin1,gbk
       
set tabstop=4       " 文件中一个 <Tab> 占据的空格数。
 
set shiftwidth=4    " 每一级自动缩进的空格数。
 
set expandtab       " 使用合适数目的空格插入 <Tab>.
                    " 当 '自动缩进' 打开时使用 '>' 和 '<' 命令来用空格缩进
                    " 当 'expandtab' 打开时使用 CTRL-V <Tab> 来插入tab.
 
set smarttab        " 当打开时，行首的 <Tab> 会按照 'shiftwidth' 插入空白
                    " 在其他地方使用 'tabstop'
                    " 一个 <退格> 会删除行首的一个 'shiftwidth' 大小的空格
 
set showcmd         " 在状态栏中显示(部分)命令。

set number          " 显示行号。

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
 
set hlsearch        " 当有一个符合之前搜索的值时，高亮所有匹配
 
set incsearch       " 当输入搜索命令时，离开显示符合与目前输入的模式匹配的内容
 
set ignorecase      " 在搜索中忽略大小写
 
set smartcase       " 如果搜索中有大写字符，忽略 'ignorecase' 选项
 
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
 
set autoindent      " 当开始新行时复制当前行的缩进
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
 
set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
 
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
 
set ruler           " 显示当前光标位置的行号和列号，用逗号分割
 
set background=dark " 当设置为 "dark" 时，Vim 会尝试使用在暗色背景中合适的颜色。
                    " 当设置为 "light" 时，Vim 会尝试使用在亮色背景中合适的颜色。
                    " 其他值是非法的
 
set mouse=a         " 启用鼠标的使用
 
"filetype plugin indent on
syntax on
set backupdir=~/.vim/backup
"set spell
set whichwrap=b,s,<,>,[,]
set laststatus=2
set t_Co=256 "Explicity tell Vim that the terminal supports 256 colors
colorscheme molokaiv2
let g:Powerline_symbols = 'fancy'
