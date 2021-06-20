set number    " line 표시
set ai    " auto indent
set si " smart indent
set cindent    " c style indent
set shiftwidth=4    " 자동 공백 채움 시 4칸
set tabstop=4    " tab을 4칸 공백으로
set ts=4 sw=4 et
set ignorecase    " 검색 시 대소문자 무시
set hlsearch    " 검색 시 하이라이트
set nocompatible    " 방향키로 이동 가능
set fileencodings=utf-8,euc-kr    " 파일 저장 인코딩 : utf-8, euc-kr
set fencs=ucs-bom,utf-8,euc-kr    " 한글 파일은 euc-kr, 유니코드는 유니코드
set bs=indent,eol,start    " backspace 사용가능
set ruler    " 상태 표시줄에 커서 위치 표시
set title    " 제목 표시
set showmatch    " 다른 코딩 프로그램처럼 매칭되는 괄호 보여줌
set wmnu    " tab 을 눌렀을 때 자동완성 가능한 목록
set mouse=a    " 커서 이동을 마우스로 가능하도록
set autoindent
set clipboard=unnamed
set pumheight=7
set cindent
set cursorline
set relativenumber
set signcolumn=yes

filetype indent on    " 파일 종류에 따른 구문 강조
if has("syntax")
    syntax on
endif

"set plugin
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'bling/vim-airline'
Plug 'edkolev/promptline.vim'
Plug 'Raimondi/delimitMate'
Plug 'frazrepo/vim-rainbow'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '907th/vim-auto-save'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'terryma/vim-multiple-cursors'
Plug 'tomasiser/vim-code-dark'
Plug 'nono/vim-handlebars'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'miyakogi/seiya.vim'

call plug#end()

"set color scheme
"colorscheme jellybeans "curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
"colorscheme desert
"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'

colorscheme codedark
let g:airline_theme = 'codedark'

let g:seiya_auto_enable=1

"highlight Normal ctermbg=none
"highlight NonText ctermbg=none

"set delimitmate- auto pair
let delimitMate_expand_cr=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0

map <F2> :w!<CR>
"map <F9> :! g++ -o % %<CR> && ./%<CR>
map <F9> :!g++ -o  %:r.out % && ./%:r.out<CR> 
map <F10> :! ./%<<CR>
map <C-J> :bprev<CR>
map <C-K> :bnext<CR>

"save option
nmap <C-S> :w<CR>
imap <C-S> <ESC>:w<CR>a
nnoremap <C-p> :Files<Cr>
let g:auto_save = 1
let g:auto_save_silent = 1


let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'

"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


"rainbow pair
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
"let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'magenta']

"vim indent guide
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_indent_level=2
let g:indent_guides_guide_size=1



" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
