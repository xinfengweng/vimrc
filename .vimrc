set ai 
"自动缩进宽度
set sw=4 
set ts=4 
"关闭高亮显示
set nohlsearch   
set is
set ignorecase
set incsearch 
set backspace=indent,eol,start
set clipboard=unnamed
set number

:nnoremap . .<Esc>

"重新生成选中项目的解决方案快捷键
:nnoremap ,b :vsc Build.RebuildSelection<CR>

:inoremap jj <Esc>
:nnoremap <c-j> <c-w>j
:nnoremap <c-k> <c-w>k
:nnoremap <c-l> <c-w>l
:nnoremap <c-h> <c-w>h

:nnoremap <c-o> :vsc View.NavigateBackward<CR>
:nnoremap <c-i> :vsc View.NavigateForward<CR>

:nnoremap ,t :vsc Window.NextTab<CR>
:nnoremap ,r :vsc Window.PreviousTab<CR>

:nnoremap ,n :vsc Window.NextDocumentWindow<CR>
:nnoremap ,p :vsc Window.PreviousDocumentWindow<CR>

"显示错误列表的快捷键
:nnoremap cl :vsc View.ErrorList<CR>
:nnoremap cn :vsc View.NextError<CR>
:nnoremap cp :vsc View.PreviousError<CR>

"添加注释
"vv是为了退出visual line模式
:vnoremap ci :s/^/\/\/<cr>vv
:vnoremap cu :s/\/\//<cr>vv
:nnoremap ci :s/^/\/\/<cr>
:nnoremap cu :s/\/\//<cr>

"居中显示查找结果
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz


"去定义
:nnoremap gd <C-]>zz

"查看函数列表 list methods
:nnoremap zm :vsc VAssistX.ListMethodsInCurrentFile<CR>

"打开查看类的对话框
:nnoremap cs :vsc VAssistX.FindSymbolDialog<CR>

"打开解决方案资源管理器
:nnoremap cv :vsc View.SolutionExplorer<CR>

"查找在当前文件中的引用
:nnoremap cj :vsc VAssistX.FindReferencesinFile<CR>

"在文件中查找
:nnoremap ck :vsc Edit.FindinFiles<CR>

"打开文件所在文件夹
:nnoremap cm :vsc File.OpenContainingFolder<CR>

"快速查看方法定义 
:nnoremap zj :vsc Edit.QuickInfo<CR>





"gq->== 整理代码格式
:nnoremap gq ==
:vnoremap gq ==

"format code
:nnoremap == :vsc Edit.FormatDocument<CR>

"重命名
:nnoremap gr :vsc VAssistX.RefactorRename<CR>


"查找所有引用--
":nnoremap ca :vsc Edit.FindAllReferences<CR>
"或者使用VA的命令（vs2017中使用va命令比较好）
 :nnoremap ca :vsc VAssistX.FindReferences<CR>


"打开查看文件的对话框
:nnoremap cf :vsc VAssistX.OpenFileInSolutionDialog<CR>

"open VAOutline
:nnoremap co :vsc VAssistX.VAOutline<CR>
"方向键下 -> Ctrl + j （用于选择自动补全的项）
":nnoremap <A-j> <Down>

"快速查看方法的所有定义,鼠标在方法parameter上的时候显示的东西
:nnoremap zk :vsc Edit.ParameterInfo<CR>

"打开查找符号结果
:nnoremap zs :vsc View.FindSymbolResults<CR>

"打开查找结果1
:nnoremap zi :vsc View.FindResults1<CR>

"打开查找结果2
:nnoremap zu :vsc View.FindResults2<CR>

"打开va的在本文件中查找结果
:nnoremap ,i :vsc VAssistX.FindReferencesResults<CR>

"实现interface接口
:nnoremap zp :vsc VAssistX.RefactorImplementInterface<CR>

"可视模式中，使用 * 和 # 查找
":vnoremap * "/y/<C-r>/<CR>
":vnoremap # "/y?<C-r>/<CR>

"打开折叠或者关闭折叠
":nnoremap <space> za

"normal模式下光标跳至行尾 line end，此时H，L是跳至当前所看到的内容的最前与最后（不是页首，页尾） 
:nmap le <$>
"光标跳至行首
:nmap la <^>

"vnoremap模式下  H--行首 L--行尾
:vnoremap H <^>
:vnoremap L <$>
