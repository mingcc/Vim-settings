if has('gui_running')
    if has('unix')
        set guifont=Monospace\ 10
    elseif has('win32')
        set guifont=Consolas:h14,Courier\ New:h20
    endif
    set lines=50 columns=180
endif

autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python nnoremap <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" more natural splitting
set splitbelow
set splitright




" General
" =========
"set bg=dark
inoremap jj <Esc>
set encoding=utf-8
set mouse=a
set backspace=indent,eol,start
set background=dark
set wildmode=list:longest " make TAB behave like in a shell
set autoread
colorscheme distinguished
set wildignore+=*.pyc
noremap <Leader>h :nohl<CR>

"original: set grepprg=grep\ -rnH\ --exclude='.*.swp'\ --exclude='*~'\ --exclude=tags
"found : https://github.com/tpope/tpope/blob/master/.vimrc
set grepprg=grep\ -rnH\ --exclude=tags


" better copy & paste
" ====================
set pastetoggle=<F2>
set clipboard=unnamed  " Operation such as yy,D and P work with the system clipboard

syntax on
" Rebind <leader> key
let mapleader = ","

" Quicksave command
noremap <c-z> :update<CR>
vnoremap <c-z> <C-C>:update<CR>
inoremap <c-z> <C-D>:update<CR>

" Quick quit command
noremap <Leader>e :q<CR> " Quick close current window
noremap <Leader>er :q!<CR>
noremap <Leader>E :qa!<CR>  " Quick close all windows


" don't use tabs but spaces
set tabstop=4
set softtabstop=4     "tabs key indent by four spaces
set shiftwidth=4
set shiftround
set expandtab         "convert tabs to whitespace

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv
map <c-a> ggVG  " select all

" filetype
filetype off
filetype plugin indent on
"filetype plugin on



" Make case search insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" disable backup and swap files
set nobackup
set nowritebackup
set noswapfile 
" setup Pathogen to manage your plugins
call pathogen#infect()
call pathogen#helptags()



" settings for powerline
set laststatus=2

" settings for ctrlp
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$|.pyc$|virtualenv|venv'
noremap <Leader>b :CtrlPBuffer<CR>
noremap <Leader>m :CtrlPMRUFiles<CR>



" show line numbers and length
set nu
set t_Co =256
set tw=79 " width of document  (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't actomatically wrap text when typing
"highlight ColorColumn ctermbg=233
set colorcolumn=+1
"highlight PmenuSel ctermbg=15 guibg=white






" Show most plugin keybinding
noremap <silent><Leader>? :map <Leader><CR>




" DelimitMate
let delimitMate_expand_cr = 1




" UltiSnips
" =========
" set runtimepath+=~/.vim/ulti_snippets
let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips/"
let g:UltiSnipsSnippetDirectories = ['UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"



" Syntastic
" =========
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 1


" Settings for jedi-vim
" =====================
let g:jedi#usages_command = "<leader>n"
let g:jedi#popup_select_first = 0

map <F5> :pyfile %<cr>





" Buffer movement
map <right>  :bnext<cr>
map <left>  :bprevious<cr>





let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"


" Movement
" =========
" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h





set completeopt=longest,menuone





map <Leader>, <esc>:tabprevious<CR>
map <Leader>. <esc>:tabnext<CR>




" NERD_tree config
"  let NERDTreeChDirMode=2
let NERDTreeRespectWildIgnore = 1
let NERDTreeShowBookmarks=1
map <F4> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree




vmap <C-y> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
imap <C-v> <Esc><C-v>







"" Youcomplete plugin
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
