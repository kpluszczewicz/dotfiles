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
badd +6 app/helpers/ip_check_helper.rb
badd +13 app/controllers/p24_payments_controller.rb
badd +13 spec/controllers/p24_payments_controller_spec.rb
badd +6 config/initializers/payment_operator_ip.rb
badd +1 app/services/p24/refund_error.rb
badd +1 ~/koleo/app/services/p24/registration_handler.rb
badd +2 ~/koleo/app/services/p24/unauthorized_access_error.rb
argglobal
%argdel
edit app/helpers/ip_check_helper.rb
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
exe 'vert 1resize ' . ((&columns * 105 + 106) / 212)
exe '2resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 105 + 106) / 212)
exe 'vert 3resize ' . ((&columns * 106 + 106) / 212)
argglobal
balt app/controllers/p24_payments_controller.rb
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
normal! 012|
wincmd w
argglobal
if bufexists(fnamemodify("config/initializers/payment_operator_ip.rb", ":p")) | buffer config/initializers/payment_operator_ip.rb | else | edit config/initializers/payment_operator_ip.rb | endif
if &buftype ==# 'terminal'
  silent file config/initializers/payment_operator_ip.rb
endif
balt app/helpers/ip_check_helper.rb
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
let s:l = 2 - ((1 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("spec/controllers/p24_payments_controller_spec.rb", ":p")) | buffer spec/controllers/p24_payments_controller_spec.rb | else | edit spec/controllers/p24_payments_controller_spec.rb | endif
if &buftype ==# 'terminal'
  silent file spec/controllers/p24_payments_controller_spec.rb
endif
balt app/helpers/ip_check_helper.rb
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
let s:l = 13 - ((12 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
normal! 088|
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 1resize ' . ((&columns * 105 + 106) / 212)
exe '2resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 105 + 106) / 212)
exe 'vert 3resize ' . ((&columns * 106 + 106) / 212)
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
