let mapleader="ù"
let maplocalleader="ù" 

inoremap kj <Esc>
inoremap <Esc> <nop>
vnoremap kj <Esc>
vnoremap <Esc> <nop>

nnoremap L $
nnoremap H 0
nnoremap J L
nnoremap K H

nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>

nnoremap <Leader>ekm :vsplit ~/.vim/keymap.vim<Return>
nnoremap <Leader>erc :vsplit $MYVIMRC<Return>
nnoremap <Leader>src :source $MYVIMRC<Return> 

nnoremap <Leader>" ea"<Esc>bi"<Esc>le2l

"Make quick syntax correct function for the c language
augroup ccodes
	autocmd!
	autocmd FileType c :inoremap <LocalLeader>( ()<Space>{<Return><Tab><++><Return><Bs>}<Return><Return><++><Esc>?)<Return>i
augroup END
inoremap <Space><Space> <Esc>/<++><Return>:noh<Return>4xa
