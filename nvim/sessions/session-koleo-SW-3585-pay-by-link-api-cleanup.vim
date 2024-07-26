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
badd +7 ~/koleo/app/services/p24/registration_handler.rb
badd +5 kamil/SW-3585-pay-by-link-api-cleanup.md
badd +26 ~/koleo/app/services/p24/secure/connector.rb
badd +1 ~/koleo/app/services/p24/secure/registration_handler/test_payment.rb
badd +1 ~/koleo/app/services/p24/secure/payment_cards/connector.rb
badd +26 ~/koleo/app/services/p24/connector.rb
badd +45 ~/koleo/app/services/p24/payment_cards/service.rb
badd +1 ~/koleo/app/services/p24/payment_cards/error.rb
badd +1 ~/koleo/app/services/p24/payment_cards/connector.rb
badd +12 app/services/p24/secure/api_helper.rb
badd +26 payment_methods_p24.rb
badd +22 ~/koleo/app/services/p24/payment_service_helper.rb
badd +29 app/api/api/v2/main/proxy/payment_method_handler.rb
badd +44 app/api/api/v2/main/payments_controller.rb
badd +6 app/api/api/v2/common/serializer/payment_method_serializer.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit kamil/SW-3585-pay-by-link-api-cleanup.md
argglobal
balt ~/koleo/app/services/p24/registration_handler.rb
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
let s:l = 5 - ((4 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 012|
tabnext
edit app/services/p24/secure/api_helper.rb
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
exe 'vert 1resize ' . ((&columns * 80 + 81) / 162)
exe 'vert 2resize ' . ((&columns * 81 + 81) / 162)
argglobal
balt ~/koleo/app/services/p24/secure/connector.rb
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
let s:l = 25 - ((24 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 07|
wincmd w
argglobal
if bufexists(fnamemodify("app/api/api/v2/main/proxy/payment_method_handler.rb", ":p")) | buffer app/api/api/v2/main/proxy/payment_method_handler.rb | else | edit app/api/api/v2/main/proxy/payment_method_handler.rb | endif
if &buftype ==# 'terminal'
  silent file app/api/api/v2/main/proxy/payment_method_handler.rb
endif
balt app/api/api/v2/main/payments_controller.rb
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
let s:l = 29 - ((23 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 29
normal! 053|
wincmd w
exe 'vert 1resize ' . ((&columns * 80 + 81) / 162)
exe 'vert 2resize ' . ((&columns * 81 + 81) / 162)
tabnext
edit app/api/api/v2/common/serializer/payment_method_serializer.rb
argglobal
balt payment_methods_p24.rb
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
let s:l = 6 - ((5 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 027|
tabnext 3
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
