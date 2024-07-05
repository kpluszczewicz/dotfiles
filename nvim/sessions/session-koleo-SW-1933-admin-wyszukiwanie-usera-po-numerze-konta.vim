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
badd +5 app/views/admin/users/show.html.haml
badd +1 app/views/admin/users/_user_info.html.haml
badd +137 ~/koleo/app/presenters/user_presenter.rb
badd +67 app/services/pr_sales/extras_dispenser.rb
badd +33 app/models/sso/calculator/order/sso_ticket_helper.rb
badd +30 app/services/tickets_generator_helper.rb
badd +37 app/models/kw/calculator/order_price/group_price.rb
badd +23 ~/koleo/app/views/admin/users/_user.html.haml
badd +50 ~/koleo/app/views/admin/users/index.html.haml
badd +37 app/controllers/admin/users_controller.rb
badd +52 app/models/admin/user_finder.rb
argglobal
%argdel
edit app/models/admin/user_finder.rb
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
balt ~/koleo/app/views/admin/users/index.html.haml
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
let s:l = 52 - ((10 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 52
normal! 019|
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/app/views/admin/users/index.html.haml", ":p")) | buffer ~/koleo/app/views/admin/users/index.html.haml | else | edit ~/koleo/app/views/admin/users/index.html.haml | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/app/views/admin/users/index.html.haml
endif
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
let s:l = 50 - ((23 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 50
normal! 085|
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
