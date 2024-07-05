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
badd +916 app/models/order.rb
badd +255 app/models/order/refunds_handler.rb
badd +73 app/controllers/orders_controller.rb
badd +40 app/api/api/v2/common/orders_controller.rb
badd +26 app/api/api/base/v1/serializer/order_serializer.rb
badd +11 app/services/tickets_name_changer.rb
badd +21 app/api/api/v2/common/exchanges_controller.rb
badd +24 app/api/api/v2/common/exchange_with_new_names_controller.rb
badd +2 app/controllers/exchange_with_new_names_controller.rb
badd +1 app/api/api/v2/main/exchange_with_new_names_controller.rb
badd +1 test/api/v2/main/exchange_with_new_names_controller_test.rb
badd +4 app/services/tickets_name_change/tech_break_error.rb
badd +1059 test/api/v2/main/orders_controller_test.rb
badd +17 app/models/event_log.rb
badd +46 app/api/api/v2/common/base_controller.rb
badd +10 app/models/event_log/app_exchange.rb
badd +69 kamil/SW-3385-ic-tech-break-przyciski-zwrotu-i-wymiany.md
badd +1135 test/unit/order_test.rb
badd +205 test/api/v2/main/exchanges_controller_test.rb
badd +8 .rgignore
badd +139 app/models/order/creator.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit app/models/order.rb
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt app/models/order/creator.rb
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
let s:l = 916 - ((31 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 916
normal! 02|
tabnext
edit test/unit/order_test.rb
argglobal
balt app/models/order.rb
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
let s:l = 158 - ((25 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 158
normal! 011|
tabnext
edit test/api/v2/main/exchange_with_new_names_controller_test.rb
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
balt kamil/SW-3385-ic-tech-break-przyciski-zwrotu-i-wymiany.md
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
let s:l = 184 - ((10 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 184
normal! 042|
wincmd w
argglobal
if bufexists(fnamemodify("kamil/SW-3385-ic-tech-break-przyciski-zwrotu-i-wymiany.md", ":p")) | buffer kamil/SW-3385-ic-tech-break-przyciski-zwrotu-i-wymiany.md | else | edit kamil/SW-3385-ic-tech-break-przyciski-zwrotu-i-wymiany.md | endif
if &buftype ==# 'terminal'
  silent file kamil/SW-3385-ic-tech-break-przyciski-zwrotu-i-wymiany.md
endif
balt test/api/v2/main/exchange_with_new_names_controller_test.rb
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
let s:l = 73 - ((21 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 73
normal! 0
wincmd w
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
