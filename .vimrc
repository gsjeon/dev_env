filetype plugin on

execute pathogen#infect()
filetype plugin indent on

"Flake8 문법검사기
autocmd BufWritePost *.py call flake8#Flake8()
autocmd FileType python map <buffer> <F7> :call Flake8()<CR>
let g:flake8_max_markers=500  " maximum # of markers to show(500 is default)
let g:flake8_show_in_file=1   " show


set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8
set ts=4						"tabstop
set sts=4						"softtabstop
set sw=4						"shiftwidth
set hlsearch					"검색어 하이라이팅
set laststatus=2				"상태바 항상 표시
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set ruler						"현재 커서 위치(줄,칸) 표시
set showmatch                   "괄호 하이라이트
set textwidth=79                "라인당 79자 제한


" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

"구문 강조 사용
syntax on
