let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/koleo
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 app/api/api/base/v1/serializer/payment_method_serializer.rb
badd +21 kamil/SW-3585-pay-by-link-api-cleanup.md
badd +12 app/api/api/v2/common/payment_methods_controller.rb
badd +19 app/api/api/v2/common/payment_orders_controller.rb
badd +10 app/api/api/v2/common/serializer/order_reservation_serializer.rb
badd +1 app/models/payment_method.rb
badd +22 app/models/payment_operator.rb
badd +1 app/services/p24/connector.rb
badd +30 ~/koleo/app/services/p24/secure/connector.rb
badd +1 ~/koleo/app/services/p24/secure/registration_handler/test_payment.rb
badd +55 ~/koleo/app/services/p24/secure/registration_handler.rb
badd +17 app/services/p24/secure/api_helper.rb
badd +56 app/api/api/v2/main/payments_controller.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit app/api/api/v2/common/serializer/order_reservation_serializer.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 130 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 107 + 119) / 238)
argglobal
balt app/api/api/v2/common/payment_orders_controller.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 10 - ((9 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("kamil/SW-3585-pay-by-link-api-cleanup.md", ":p")) | buffer kamil/SW-3585-pay-by-link-api-cleanup.md | else | edit kamil/SW-3585-pay-by-link-api-cleanup.md | endif
if &buftype ==# 'terminal'
  silent file kamil/SW-3585-pay-by-link-api-cleanup.md
endif
balt app/api/api/base/v1/serializer/payment_method_serializer.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 21 - ((13 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 21
normal! 0128|
wincmd w
exe 'vert 1resize ' . ((&columns * 130 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 107 + 119) / 238)
tabnext
edit app/api/api/v2/main/payments_controller.rb
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/koleo/app/services/p24/secure/registration_handler.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 56 - ((31 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 56
normal! 0127|
tabnext 2
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
