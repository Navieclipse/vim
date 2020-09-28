" standard
filetype plugin indent on " ファイルタイプに基づいたインデントを有効化
set autoindent          " オートインデント
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=2
packloadall " プラグインのロード
silent! helptags ALL " プラグインのヘルプファイルのロード

" setting
set ignorecase          " 大文字小文字を区別しない
set smartcase           " 検索文字に大文字がある場合は大文字小文字を区別
set incsearch           " インクリメンタルサーチ
set hlsearch            " 検索マッチテキストをハイライト (2013-07-03 14:30 修正）

" edit
set shiftround          " '<'や'>'でインデントする際に'shiftwidth'の倍数に丸める
set infercase           " 補完時に大文字小文字を区別しない
set virtualedit=all     " カーソルを文字が存在しない部分でも動けるようにする
set hidden              " バッファを閉じる代わりに隠す（Undo履歴を残すため）
set switchbuf=useopen   " 新しく開く代わりにすでに開いてあるバッファを開く
set showmatch           " 対応する括弧などをハイライト表示する
set matchtime=3         " 対応括弧のハイライト表示を3秒にする

" Swapファイル？Backupファイ全て無効化
set nowritebackup
set nobackup
set noswapfile

"show
set list                " 不可視文字の可視化
set number              " 行番号の表示
set wrap                " 長いテキストの折り返し
set encoding=utf-8
set history=2000
set helplang=en
set guicursor=a:blinkon0
let &t_SI .= "\e[3 q"
let &t_EI .= "\e[1 q"

 " デフォルト不可視文字を変更
set listchars=tab:≫-,trail:-,extends:≫,precedes:≪,nbsp:%

" Tue Feb 11 03:07:33 UTC 2020 : (molo.sh)
syntax on
colorscheme molokai
set t_Co=256

hi Comment ctermfg=102
hi Visual  ctermbg=236

" plugin
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'tomasr/molokai'
call plug#end()

