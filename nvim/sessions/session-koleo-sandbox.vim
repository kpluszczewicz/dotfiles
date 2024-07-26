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
badd +71 app/services/kw_sales/bike_reservation_handler.rb
badd +59 app/helpers/offer_availability_helper.rb
badd +10 app/models/section_ticket.rb
badd +7164 db/structure.sql
badd +58 app/models/ticket.rb
badd +1 app/models/section.rb
badd +1 test/unit/sso_sales/bike_reservation_handler_test.rb
badd +26 app/services/sso_sales/bike_reservation_handler.rb
badd +22 ~/koleo/app/services/sso_sales/bike_reservation_handler/ks.rb
badd +8 app/models/connection.rb
badd +6 app/controllers/admin/invoice_tickets_controller.rb
badd +54 spec/controllers/admin/invoice_tickets_controller_spec.rb
argglobal
%argdel
$argadd app/services/kw_sales/bike_reservation_handler.rb
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit app/helpers/offer_availability_helper.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
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
exe '1resize ' . ((&lines * 18 + 20) / 40)
exe '2resize ' . ((&lines * 18 + 20) / 40)
argglobal
balt app/services/kw_sales/bike_reservation_handler.rb
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
let s:l = 66 - ((11 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 66
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("app/services/kw_sales/bike_reservation_handler.rb", ":p")) | buffer app/services/kw_sales/bike_reservation_handler.rb | else | edit app/services/kw_sales/bike_reservation_handler.rb | endif
if &buftype ==# 'terminal'
  silent file app/services/kw_sales/bike_reservation_handler.rb
endif
balt ~/koleo/app/services/sso_sales/bike_reservation_handler/ks.rb
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
let s:l = 7 - ((6 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 024|
wincmd w
exe '1resize ' . ((&lines * 18 + 20) / 40)
exe '2resize ' . ((&lines * 18 + 20) / 40)
tabnext
edit app/controllers/admin/invoice_tickets_controller.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
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
exe '1resize ' . ((&lines * 18 + 20) / 40)
exe '2resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 80 + 81) / 162)
exe '3resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 3resize ' . ((&columns * 81 + 81) / 162)
argglobal
balt app/services/kw_sales/bike_reservation_handler.rb
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
let s:l = 6 - ((5 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 053|
wincmd w
argglobal
if bufexists(fnamemodify("spec/controllers/admin/invoice_tickets_controller_spec.rb", ":p")) | buffer spec/controllers/admin/invoice_tickets_controller_spec.rb | else | edit spec/controllers/admin/invoice_tickets_controller_spec.rb | endif
if &buftype ==# 'terminal'
  silent file spec/controllers/admin/invoice_tickets_controller_spec.rb
endif
balt app/controllers/admin/invoice_tickets_controller.rb
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
let s:l = 54 - ((8 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 54
normal! 027|
wincmd w
argglobal
if bufexists(fnamemodify("spec/controllers/admin/invoice_tickets_controller_spec.rb", ":p")) | buffer spec/controllers/admin/invoice_tickets_controller_spec.rb | else | edit spec/controllers/admin/invoice_tickets_controller_spec.rb | endif
if &buftype ==# 'terminal'
  silent file spec/controllers/admin/invoice_tickets_controller_spec.rb
endif
balt app/controllers/admin/invoice_tickets_controller.rb
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
let s:l = 48 - ((8 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 48
normal! 08|
wincmd w
exe '1resize ' . ((&lines * 18 + 20) / 40)
exe '2resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 80 + 81) / 162)
exe '3resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 3resize ' . ((&columns * 81 + 81) / 162)
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
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
