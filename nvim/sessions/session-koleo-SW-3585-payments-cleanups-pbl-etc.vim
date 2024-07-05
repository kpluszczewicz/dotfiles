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
badd +53 app/models/payment_method.rb
badd +22 app/models/payment_operator.rb
badd +28 db/migrate/20240326101308_add_new_payment_method_operator.rb
badd +4 app/models/payment_method_type.rb
badd +17 payment_card_flow.json
badd +74 app/services/p24/registration_handler.rb
badd +28 app/services/p24/secure/registration_handler.rb
badd +1 app/controllers/payments_controller.rb
badd +1 app/api/api/v2/main/payments_controller.rb
badd +28 app/api/api/v2/main/proxy/payment_method_handler.rb
badd +1 ~/koleo/app/models/payment_method/blik.rb
badd +1 ~/koleo/app/models/payment_method/bank.rb
badd +21 app/models/payment.rb
badd +3 app/controllers/pbns_controller.rb
badd +7 app/api/api/v2/common/payment_methods_controller.rb
badd +8 app/api/api/base/v1/serializer/payment_method_serializer.rb
badd +28 kamil/SW-3585-payments-cleanups-pbl-etc.md
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit app/api/api/v2/main/payments_controller.rb
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
exe '1resize ' . ((&lines * 38 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 118 + 85) / 171)
exe '2resize ' . ((&lines * 38 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 119 + 85) / 171)
argglobal
balt app/controllers/payments_controller.rb
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
let s:l = 40 - ((19 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 40
normal! 011|
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
let s:l = 28 - ((25 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 28
normal! 0
wincmd w
exe '1resize ' . ((&lines * 38 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 118 + 85) / 171)
exe '2resize ' . ((&lines * 38 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 119 + 85) / 171)
tabnext
edit app/api/api/v2/common/payment_methods_controller.rb
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
exe 'vert 1resize ' . ((&columns * 86 + 85) / 171)
exe 'vert 2resize ' . ((&columns * 84 + 85) / 171)
argglobal
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
let s:l = 6 - ((5 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 043|
wincmd w
argglobal
if bufexists(fnamemodify("app/models/payment_method.rb", ":p")) | buffer app/models/payment_method.rb | else | edit app/models/payment_method.rb | endif
if &buftype ==# 'terminal'
  silent file app/models/payment_method.rb
endif
balt app/models/payment.rb
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
let s:l = 55 - ((27 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 55
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 86 + 85) / 171)
exe 'vert 2resize ' . ((&columns * 84 + 85) / 171)
tabnext
edit app/services/p24/secure/registration_handler.rb
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
exe 'vert 1resize ' . ((&columns * 81 + 85) / 171)
exe 'vert 2resize ' . ((&columns * 89 + 85) / 171)
argglobal
balt payment_card_flow.json
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
let s:l = 36 - ((20 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 36
normal! 077|
wincmd w
argglobal
if bufexists(fnamemodify("app/services/p24/registration_handler.rb", ":p")) | buffer app/services/p24/registration_handler.rb | else | edit app/services/p24/registration_handler.rb | endif
if &buftype ==# 'terminal'
  silent file app/services/p24/registration_handler.rb
endif
balt app/services/p24/secure/registration_handler.rb
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
let s:l = 62 - ((17 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 62
normal! 09|
wincmd w
exe 'vert 1resize ' . ((&columns * 81 + 85) / 171)
exe 'vert 2resize ' . ((&columns * 89 + 85) / 171)
tabnext
edit app/services/p24/registration_handler.rb
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
wincmd =
argglobal
balt kamil/SW-3585-payments-cleanups-pbl-etc.md
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
let s:l = 74 - ((26 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 74
normal! 036|
wincmd w
argglobal
if bufexists(fnamemodify("kamil/SW-3585-payments-cleanups-pbl-etc.md", ":p")) | buffer kamil/SW-3585-payments-cleanups-pbl-etc.md | else | edit kamil/SW-3585-payments-cleanups-pbl-etc.md | endif
if &buftype ==# 'terminal'
  silent file kamil/SW-3585-payments-cleanups-pbl-etc.md
endif
balt app/services/p24/registration_handler.rb
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
let s:l = 28 - ((27 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 28
normal! 0
wincmd w
wincmd =
tabnext 4
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
