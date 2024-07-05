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
badd +22 app/jobs/p24/secure/status_check_job.rb
badd +5 app/jobs/blik/secure/status_check_job.rb
badd +0 app/jobs/p24/secure/payment_card_payments_status_check_job.rb
badd +2 app/jobs/test_job.rb
badd +135 app/controllers/admin/users_controller.rb
argglobal
%argdel
edit app/jobs/p24/secure/status_check_job.rb
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
wincmd =
argglobal
balt app/jobs/test_job.rb
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
let s:l = 22 - ((14 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 22
normal! 038|
wincmd w
argglobal
if bufexists(fnamemodify("app/controllers/admin/users_controller.rb", ":p")) | buffer app/controllers/admin/users_controller.rb | else | edit app/controllers/admin/users_controller.rb | endif
if &buftype ==# 'terminal'
  silent file app/controllers/admin/users_controller.rb
endif
balt app/jobs/test_job.rb
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
let s:l = 136 - ((9 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 136
normal! 017|
wincmd w
argglobal
if bufexists(fnamemodify("app/jobs/blik/secure/status_check_job.rb", ":p")) | buffer app/jobs/blik/secure/status_check_job.rb | else | edit app/jobs/blik/secure/status_check_job.rb | endif
if &buftype ==# 'terminal'
  silent file app/jobs/blik/secure/status_check_job.rb
endif
balt app/jobs/p24/secure/payment_card_payments_status_check_job.rb
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
let s:l = 5 - ((4 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 032|
wincmd w
argglobal
if bufexists(fnamemodify("app/jobs/p24/secure/payment_card_payments_status_check_job.rb", ":p")) | buffer app/jobs/p24/secure/payment_card_payments_status_check_job.rb | else | edit app/jobs/p24/secure/payment_card_payments_status_check_job.rb | endif
if &buftype ==# 'terminal'
  silent file app/jobs/p24/secure/payment_card_payments_status_check_job.rb
endif
balt app/jobs/blik/secure/status_check_job.rb
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
let s:l = 4 - ((3 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
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
