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
badd +23 app/jobs/p24/secure/status_check_job.rb
badd +5 app/jobs/blik/secure/status_check_job.rb
badd +4 app/jobs/p24/secure/payment_card_payments_status_check_job.rb
badd +2 app/jobs/test_job.rb
badd +136 app/controllers/admin/users_controller.rb
badd +31 ~/koleo/app/jobs/sidekiq_job.rb
badd +2 ~/koleo/app/jobs/blik/alias_transaction_job.rb
badd +2 ~/koleo/app/jobs/blik/blik_job.rb
badd +9 ~/koleo/app/jobs/blik/status_check_job.rb
badd +90 Gemfile
badd +795 Gemfile.lock
badd +3 ~/koleo/app/jobs/blik/transaction_job.rb
badd +3 ~/koleo/app/jobs/blik/tpay/alias_transaction_job.rb
badd +3 ~/koleo/app/jobs/blik/tpay/transaction_job.rb
badd +2 ~/koleo/app/jobs/blik/secure/alias_transaction_job.rb
badd +2 ~/koleo/app/jobs/blik/secure/transaction_job.rb
badd +2 ~/koleo/app/jobs/blik/eservice/transaction_job.rb
argglobal
%argdel
edit ~/koleo/app/jobs/sidekiq_job.rb
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
exe 'vert 1resize ' . ((&columns * 106 + 119) / 238)
exe '2resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 131 + 119) / 238)
exe '3resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 131 + 119) / 238)
argglobal
balt app/controllers/admin/users_controller.rb
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
let s:l = 31 - ((30 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 31
normal! 070|
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
let s:l = 5 - ((4 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 032|
wincmd w
argglobal
enew
file oil:///Users/kamilpluszczewicz/koleo/app/jobs/blik/
balt ~/koleo/app/jobs/blik/status_check_job.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
exe 'vert 1resize ' . ((&columns * 106 + 119) / 238)
exe '2resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 131 + 119) / 238)
exe '3resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 131 + 119) / 238)
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
