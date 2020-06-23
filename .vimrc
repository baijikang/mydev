""""" ********************************************  基础配置 ********************************************  
"设置文件的代码形式
set fenc=utf-8
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936

set nu                  " 使用行号
set rnu                 " 使用相对行号
syntax enable           " 语法高亮
set so=10               " 光标下面保留 10 行
set mouse=a             " 使用鼠标滚动
set hls                 " 搜索时高亮
set softtabstop=2       " tab 宽度为 2
set shiftwidth=2        " 设定 << 和 >> 命令移动时的宽度为 2
set nowrap              " 不自动换行
set showtabline=2       " 
set autoindent          " 自动对齐
set smartindent         " 关闭 vi 兼容模式
set nocompatible        " vi 兼容模式
set autochdir           " 自动切换当前目录为当前文件所在的目录
set incsearch           " 输入搜索内容时就显示搜索结果
set clipboard=unnamed   " 默认使用系统剪切板
set ruler               "打开状态栏标尺
set ai                  " 自动缩进
set nocompatible        " 关闭括号匹配高亮
filetype off            " 关闭自动文件类型
set ic                  " 搜索时忽略大小写，要关闭设置 set noic
set foldmethod=manual   " 设置代码这折叠, zf 折叠，zo 打开
set tabstop=2           " 制表符为2
set expandtab           " 
set nrformats=          " 
set noswapfile          " 禁止产生临时交互文件
set noautochdir         " 不自动改变 vim 工作目录
autocmd InsertEnter,InsertLeave * set cul!  " insert 模式下，高亮行
" ********************************************  基础配置 ********************************************  





" ********************************************  按键映射  ********************************************  
noremap <Tab><Tab> >>
noremap <S-Tab><S-Tab> <<
noremap <C-h> b
noremap <C-l> w
noremap <C-z> u
noremap <S-l> vl
noremap <S-h> vh
noremap <S-j> vj
noremap <S-k> vk
noremap <C-s> :w<CR>
noremap <F8> <C-w>\|<C-w>_
noremap <S-F8> <C-w>=
noremap <F4> :terminal<CR>
noremap <F12> :tabnew<CR>
noremap <F10> :tabp<CR>
noremap <F11> :tabn<CR>
noremap tt yyp<ESC>a/<ESC>f <ESC>C><ESC>O
noremap {{ vi{=
noremap __ vg_
noremap ( viwc(<ESC>pa)<ESC>
noremap ' viwc'<ESC>pa'<ESC>
noremap " viwc"<ESC>pa"<ESC>
noremap "P "0p
noremap S c^
noremap <C-p>  :LeaderfFile<CR>


" 调节窗口
noremap <F6>  <C-w>+     " 增加高度
noremap <S-F6>  <C-w>-   " 减少高度
noremap <F7>  <C-w>>     " 增加宽度
noremap <S-F7>  <C-w><   " 减少宽度


inoremap [ []<ESC>i
inoremap ( ()<ESC>i
inoremap () ()
inoremap [] []
inoremap { {}<ESC>i
inoremap {} {}<ESC>i
inoremap {<CR> {<CR>}<ESC>O
inoremap [<CR> [<CR>]<ESC>O
inoremap < <><ESC>i
inoremap `` ``<ESC>i
inoremap ` ``<ESC>i
inoremap '' ''<ESC>i
inoremap ' ''<ESC>i
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-s> <ESC>:w<CR>a

vnoremap ' c'<ESC>pa'<ESC>
vnoremap ` c`<ESC>pa`<ESC>
vnoremap " c"<ESC>pa"<ESC>
vnoremap ( c(<ESC>pa)<ESC>
vnoremap { c{<CR>}<ESC>Pvi{=
vnoremap <S-l> l
vnoremap <S-h> h
vnoremap <S-j> j
vnoremap <S-k> k
vnoremap 1jj :join<CR>

cnoremap 1js setfiletype javascript
cnoremap 1html setfiletype html
cnoremap 1ack Ack! -i --ignore-dir=node_modules --ignore-dir=.git --ignore-dir=dist --ignore-dir=mockServer  
cnoremap 1css setfiletype css
cnoremap 1nnn <backspace><backspace><backspace><backspace><backspace> let i=1 \| '<,'>g/1/ s//\=i/ \| let i+=1  
cnoremap <C-l> <Right>
cnoremap <C-h> <Left>

map <C-f> +
map <space><space> <Plug>(easymotion-s)
map <C-j> <Plug>(easymotion-j)
map <C-k> <Plug>(easymotion-k)

" ********************************************  按键映射  ********************************************  





" ********************************************  插件设置  ********************************************  
" 安装插件
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'                   " 主题插件
" Plug 'altercation/vim-colors-solarized' " 主题插件
" Plug 'kien/ctrlp.vim'                   " mac 上不用，给不支持 Leaderf 的 centos 用
Plug 'scrooloose/nerdtree'              " 左侧树插件
Plug 'easymotion/vim-easymotion'        " 快速定位光标
Plug 'mileszs/ack.vim'                  " 需要系统先安装 ack 如: brew install ask
" Plug 'Yggdroot/LeaderF'                 " 模糊搜搜，ctrl 替代品
Plug 'mg979/vim-visual-multi/'          " ctrl + n 多光标插件，ctrl + up/down 多光标 , ctrl+b 多选相同单词
" Plug 'vim-airline/vim-airline'          " 底栏增强
Plug 'MattesGroeger/vim-bookmarks'      " 书签插件
" Plug 'isRuslan/vim-es6'                 " es6 语法
Plug 'tpope/vim-commentary'             " 注释插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " 代码补全工具
Plug 'posva/vim-vue'                    " vue 插件
Plug 'leafgarland/typescript-vim'
call plug#end()



" 关于插件的设置，要放在插件之后，否不生效
colorscheme molokai
" colorscheme delek
let g:molokai_original = 1
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
set t_Co=256
map <F2> :NERDTreeToggle<CR>

" 设置 tab 标签的底色，激活样式，未激活样式
hi TabLineFill ctermfg=238
hi TabLineSel ctermfg=white ctermbg=red
hi TabLine ctermfg=52 ctermbg=grey

" 文本选中颜色
hi Visual ctermbg=24
hi CursorLine ctermbg=236
hi MatchParen ctermbg=24 ctermfg=white

" 底栏加强
set laststatus=2 " 永远显示状态栏
" 分隔符设置
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_section_c='%F | %{&fenc} | %3p%%,%L,%2c'
" 其他区域都禁用掉
let g:airline_section_b=''
let g:airline_section_x=''
let g:airline_section_y = ''
let g:airline_section_z=''
let g:airline_section_error=''
let g:airline_section_warning=''
let g:airline_section_statistics=''

" coc 相关设置
let g:coc_node_path = '/usr/local/bin/node'
autocmd FileType json syntax match Comment +\/\/.\+$+

" ctrl+p 配置 , 留着，给不支持 Leaderf 的 centos 用
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|node_modules|dist|temp_publish'

" vim-visual-multi 相关设置
let g:VM_maps = {}
let g:VM_maps["Select Cursor Down"]='<C-j>'
let g:VM_maps["Select Cursor Up"]='<C-k>'
" let g:VM_maps["Select All"]='<C-a>' // 有冲突，先禁用

