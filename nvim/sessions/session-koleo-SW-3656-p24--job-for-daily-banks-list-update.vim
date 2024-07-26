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
badd +10 ~/koleo/app/services/p24/secure/payment_methods_updater.rb
badd +92 payment_methods_p24.rb
badd +1 ~/koleo/app/models/payment_method/blik_one_click.rb
badd +1 ~/koleo/app/models/payment_method/other.rb
badd +1 ~/koleo/app/models/payment_method/one_click.rb
badd +1 ~/koleo/app/models/payment_method/null_payment.rb
badd +1 ~/koleo/app/models/payment_method/koleo_wallet.rb
badd +1 ~/koleo/app/models/payment_method/google_pay.rb
badd +35 kamil/SW-3656-p24--job-for-daily-banks-list-update.md
badd +32 spec/unit/p24/secure/payment_methods_updater_spec.rb
badd +1009 spec/factories.rb
badd +1 ~/koleo/app/services/p24/secure/google_pay_service.rb
badd +1 ~/koleo/spec/unit/p24/secure/payment_cards_service_spec.rb
argglobal
%argdel
edit ~/koleo/app/services/p24/secure/payment_methods_updater.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
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
wincmd =
argglobal
balt ~/koleo/app/services/p24/secure/google_pay_service.rb
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
let s:l = 10 - ((9 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
let s:c = 81 - ((62 * winwidth(0) + 35) / 70)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 81 . '|'
else
  normal! 081|
endif
wincmd w
argglobal
if bufexists(fnamemodify("spec/unit/p24/secure/payment_methods_updater_spec.rb", ":p")) | buffer spec/unit/p24/secure/payment_methods_updater_spec.rb | else | edit spec/unit/p24/secure/payment_methods_updater_spec.rb | endif
if &buftype ==# 'terminal'
  silent file spec/unit/p24/secure/payment_methods_updater_spec.rb
endif
balt ~/koleo/spec/unit/p24/secure/payment_cards_service_spec.rb
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
let s:l = 32 - ((26 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 32
normal! 017|
wincmd w
argglobal
if bufexists(fnamemodify("kamil/SW-3656-p24--job-for-daily-banks-list-update.md", ":p")) | buffer kamil/SW-3656-p24--job-for-daily-banks-list-update.md | else | edit kamil/SW-3656-p24--job-for-daily-banks-list-update.md | endif
if &buftype ==# 'terminal'
  silent file kamil/SW-3656-p24--job-for-daily-banks-list-update.md
endif
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
let s:l = 35 - ((7 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 35
normal! 03|
wincmd w
argglobal
if bufexists(fnamemodify("payment_methods_p24.rb", ":p")) | buffer payment_methods_p24.rb | else | edit payment_methods_p24.rb | endif
if &buftype ==# 'terminal'
  silent file payment_methods_p24.rb
endif
balt kamil/SW-3656-p24--job-for-daily-banks-list-update.md
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
let s:l = 92 - ((8 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 92
normal! 05|
wincmd w
4wincmd w
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
