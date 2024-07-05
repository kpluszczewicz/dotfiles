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
badd +56 app/helpers/offer_availability_helper.rb
badd +33 app/services/kw_sales/bike_reservation_handler.rb
badd +7 app/services/kw_sales/connector.rb
badd +30 config/database.yml
badd +284 .env-docker
badd +55 test/unit/kw_sales/bike_reservation_handler_test.rb
badd +2 ~/.config/nvim/init.lua
badd +90 ~/.config/nvim/lua/vim-options.lua
badd +60 ~/koleo/app/services/sso_sales/bike_reservation_handler/ks.rb
badd +23 ~/koleo/app/services/sso_sales/bike_reservation_handler.rb
badd +1 config/environments.rb
badd +1 config/environments/sandbox.rb
badd +1 config/deploy/production.rb
badd +1 test/unit/ic_grm/availability_handler_test.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit test/unit/kw_sales/bike_reservation_handler_test.rb
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
exe 'vert 1resize ' . ((&columns * 76 + 76) / 153)
exe 'vert 2resize ' . ((&columns * 76 + 76) / 153)
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
let s:l = 65 - ((16 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 65
normal! 013|
wincmd w
argglobal
if bufexists(fnamemodify("app/services/kw_sales/bike_reservation_handler.rb", ":p")) | buffer app/services/kw_sales/bike_reservation_handler.rb | else | edit app/services/kw_sales/bike_reservation_handler.rb | endif
if &buftype ==# 'terminal'
  silent file app/services/kw_sales/bike_reservation_handler.rb
endif
balt test/unit/kw_sales/bike_reservation_handler_test.rb
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
let s:l = 48 - ((16 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 48
normal! 034|
wincmd w
exe 'vert 1resize ' . ((&columns * 76 + 76) / 153)
exe 'vert 2resize ' . ((&columns * 76 + 76) / 153)
tabnext
edit app/services/kw_sales/bike_reservation_handler.rb
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt test/unit/ic_grm/availability_handler_test.rb
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
let s:l = 33 - ((8 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 33
normal! 034|
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
