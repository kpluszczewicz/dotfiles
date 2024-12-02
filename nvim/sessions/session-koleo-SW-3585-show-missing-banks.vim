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
badd +35 ~/koleo/db/migrate/20241125133220_activate_missing_banks.rb
badd +3 ~/koleo/update_banks_job.rb
badd +334 ~/koleo/kamil/p24_payment_methods_list.json
badd +5 ~/koleo/db/migrate/20241126103231_update_arriva_prices_for151224.rb
badd +50 ~/koleo/db/migrate/20241128093115_add_station_krakow_piastow_280603_6702.rb
badd +21 app/services/p24/connector.rb
badd +20974 db/structure.sql
badd +53 app/models/payment_method.rb
badd +6 app/api/api/v2/common/payment_methods_controller.rb
badd +30 spec/unit/p24/connector_service_spec.rb
badd +72 ~/koleo/spec/unit/p24/secure/registration_handler_spec.rb
badd +10 app/api/api/v2/main/serializer/estimated_timetable/minimal_call_serializer.rb
argglobal
%argdel
edit app/services/p24/connector.rb
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
balt app/api/api/v2/main/serializer/estimated_timetable/minimal_call_serializer.rb
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
let s:l = 32 - ((31 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 32
normal! 07|
wincmd w
argglobal
if bufexists(fnamemodify("app/models/payment_method.rb", ":p")) | buffer app/models/payment_method.rb | else | edit app/models/payment_method.rb | endif
if &buftype ==# 'terminal'
  silent file app/models/payment_method.rb
endif
balt db/structure.sql
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
let s:l = 53 - ((20 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 53
normal! 05|
wincmd w
2wincmd w
wincmd =
tabnext 1
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
