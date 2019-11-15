
" 设置vim-plug管理的插件安装位置
 call plug#begin('~/.vim/bundle')


" 下面就是一些插件的例子.
" 插件必须装在  plug#begin/end这两行命令之间.
" 对于在github上面的插件, 我们可以用以下方法添加, 只需要添加`用户名/插件名称`就行
" Plug 'tpope/vim-fugitive'
" 对于在http://vim-scripts.org/vim/scripts.html下的插件, 我们直接添加插件名称就行
" Plug 'L9'
" 对于不是github也不是vim-scripts的插件, 则需要用完整路径
" Plug 'git://git.wincent.com/command-t.git'
" 本地或者你自己的插件
" Plug 'file:///home/gmarik/path/to/plugin'

Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'neoclide/coc.nvim', {'tag':'*','do':{ -> coc#util#install()}}

Plug 'jiangmiao/auto-pairs'

Plug 'honza/vim-snippets'

Plug 'SirVer/ultisnips'

" Plug 'majutsushi/tagbar'
" 所有的插件都需要安装在这条命令之前
call plug#end()            " 必须的



" NERDTree
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" 关闭NERDTree快捷键
" map <leader>t :NERDTreeToggle<CR>
" 显示行号
" let NERDTreeShowLineNumbers=1
" let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <F5> :NERDTreeToggle<CR>

" airline
"打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
