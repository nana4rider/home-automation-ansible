syntax on
" set number
set mouse-=a
set clipboard=unnamed

augroup osc52
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' | call SendViaOSC52(getreg(v:event.regname)) | endif
augroup END
