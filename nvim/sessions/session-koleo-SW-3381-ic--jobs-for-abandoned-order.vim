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
badd +69 app/models/order/refunds_handler.rb
badd +461 app/models/ticket.rb
badd +1 ~/koleo/app/models/ticket/kd_combined.rb
badd +28 ~/koleo/app/models/ticket/kd.rb
badd +35 app/models/payment_attempt.rb
badd +1 kamil/SW-3381-ic--jobs-for-abandoned-order.md
badd +0 ~/koleo/kamil/readme-sw-3381-refunding-jobs.md
badd +1 app/models/concerns/workflowable/ticket.rb
badd +1 Gemfile
badd +0 ~/koleo/app/models/ticket/ic.rb
badd +343 spec/unit/order/refunds_handler_spec.rb
badd +23 app/jobs/abandon_orders_job.rb
badd +0 app/models/order.rb
badd +31 app/helpers/offer_availability_helper.rb
badd +33 ~/koleo/app/models/concerns/workflowable/order.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit app/models/order/refunds_handler.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
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
exe '1resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe '2resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 118 + 119) / 238)
exe '3resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 238)
exe '4resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 4resize ' . ((&columns * 119 + 119) / 238)
argglobal
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
let s:l = 70 - ((10 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 70
normal! 07|
wincmd w
argglobal
if bufexists(fnamemodify("app/models/order/refunds_handler.rb", ":p")) | buffer app/models/order/refunds_handler.rb | else | edit app/models/order/refunds_handler.rb | endif
if &buftype ==# 'terminal'
  silent file app/models/order/refunds_handler.rb
endif
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
let s:l = 265 - ((9 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 265
normal! 05|
wincmd w
argglobal
if bufexists(fnamemodify("app/models/ticket.rb", ":p")) | buffer app/models/ticket.rb | else | edit app/models/ticket.rb | endif
if &buftype ==# 'terminal'
  silent file app/models/ticket.rb
endif
balt app/models/order/refunds_handler.rb
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
let s:l = 190 - ((10 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 190
normal! 06|
wincmd w
argglobal
if bufexists(fnamemodify("app/models/ticket.rb", ":p")) | buffer app/models/ticket.rb | else | edit app/models/ticket.rb | endif
if &buftype ==# 'terminal'
  silent file app/models/ticket.rb
endif
balt app/models/order/refunds_handler.rb
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
let s:l = 1201 - ((10 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1201
normal! 07|
wincmd w
exe '1resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe '2resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 118 + 119) / 238)
exe '3resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 238)
exe '4resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 4resize ' . ((&columns * 119 + 119) / 238)
tabnext
edit spec/unit/order/refunds_handler_spec.rb
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
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 238)
argglobal
balt app/models/order/refunds_handler.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
345,355fold
363,391fold
398,415fold
417,434fold
437,459fold
461,481fold
483,504fold
let &fdl = &fdl
398
normal! zo
let s:l = 407 - ((68 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 407
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("spec/unit/order/refunds_handler_spec.rb", ":p")) | buffer spec/unit/order/refunds_handler_spec.rb | else | edit spec/unit/order/refunds_handler_spec.rb | endif
if &buftype ==# 'terminal'
  silent file spec/unit/order/refunds_handler_spec.rb
endif
balt app/models/order/refunds_handler.rb
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
let s:l = 343 - ((30 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 343
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 238)
tabnext
edit app/models/order/refunds_handler.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
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
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe '2resize ' . ((&lines * 11 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 238)
exe '3resize ' . ((&lines * 29 + 22) / 44)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 238)
argglobal
balt app/models/ticket.rb
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
let s:l = 258 - ((20 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 258
normal! 06|
wincmd w
argglobal
if bufexists(fnamemodify("app/models/order/refunds_handler.rb", ":p")) | buffer app/models/order/refunds_handler.rb | else | edit app/models/order/refunds_handler.rb | endif
if &buftype ==# 'terminal'
  silent file app/models/order/refunds_handler.rb
endif
balt app/models/ticket.rb
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
let s:l = 269 - ((5 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 269
normal! 05|
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/app/models/ticket/ic.rb", ":p")) | buffer ~/koleo/app/models/ticket/ic.rb | else | edit ~/koleo/app/models/ticket/ic.rb | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/app/models/ticket/ic.rb
endif
balt app/models/ticket.rb
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
let s:l = 2 - ((1 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe '2resize ' . ((&lines * 11 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 238)
exe '3resize ' . ((&lines * 29 + 22) / 44)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 238)
tabnext
edit ~/koleo/app/models/concerns/workflowable/order.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
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
balt app/models/concerns/workflowable/ticket.rb
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
let s:l = 33 - ((28 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 33
normal! 041|
wincmd w
argglobal
if bufexists(fnamemodify("app/jobs/abandon_orders_job.rb", ":p")) | buffer app/jobs/abandon_orders_job.rb | else | edit app/jobs/abandon_orders_job.rb | endif
if &buftype ==# 'terminal'
  silent file app/jobs/abandon_orders_job.rb
endif
balt kamil/SW-3381-ic--jobs-for-abandoned-order.md
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
let s:l = 8 - ((7 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 07|
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/kamil/readme-sw-3381-refunding-jobs.md", ":p")) | buffer ~/koleo/kamil/readme-sw-3381-refunding-jobs.md | else | edit ~/koleo/kamil/readme-sw-3381-refunding-jobs.md | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/kamil/readme-sw-3381-refunding-jobs.md
endif
balt kamil/SW-3381-ic--jobs-for-abandoned-order.md
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
let s:l = 7 - ((6 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 022|
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
