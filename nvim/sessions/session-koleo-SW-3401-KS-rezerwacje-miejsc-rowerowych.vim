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
badd +1 db/migrate/20200423142113_update_pr_prices.rb
badd +10 app/models/order/creator.rb
badd +1 db/migrate/20200205183429_update_wkd_prices.rb
badd +1 db/migrate/20191213082158_update_kd_pricelists.rb
badd +1 db/migrate/20220127141121_update_ic_prices_2022.rb
badd +3 db/migrate/20230726113917_update_bike_price_type.rb
badd +35 app/models/carrier.rb
badd +5 db/migrate/20240424141717_ks_update_bike_prices_and_bike_offer_number.rb
badd +4711 db/structure.sql
badd +66 test/unit/sso_sales/bike_reservation_handler_test.rb
badd +49 app/services/sso_sales/bike_reservation_handler.rb
badd +31 ~/koleo/app/services/sso_sales/bike_reservation_handler/ks.rb
argglobal
%argdel
edit db/migrate/20240424141717_ks_update_bike_prices_and_bike_offer_number.rb
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
exe '1resize ' . ((&lines * 21 + 23) / 47)
exe '2resize ' . ((&lines * 22 + 23) / 47)
argglobal
balt test/unit/sso_sales/bike_reservation_handler_test.rb
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
let s:l = 5 - ((4 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 043|
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/app/services/sso_sales/bike_reservation_handler/ks.rb", ":p")) | buffer ~/koleo/app/services/sso_sales/bike_reservation_handler/ks.rb | else | edit ~/koleo/app/services/sso_sales/bike_reservation_handler/ks.rb | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/app/services/sso_sales/bike_reservation_handler/ks.rb
endif
balt app/services/sso_sales/bike_reservation_handler.rb
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
let s:l = 51 - ((10 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 51
normal! 07|
wincmd w
exe '1resize ' . ((&lines * 21 + 23) / 47)
exe '2resize ' . ((&lines * 22 + 23) / 47)
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
