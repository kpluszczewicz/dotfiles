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
badd +9 app/services/tickets_generator_helper.rb
badd +152 app/models/offer.rb
badd +35 app/models/calculator/group_price/skmt_group.rb
badd +86 app/models/calculator/group_price/basic.rb
badd +22 app/models/calculator/group_price/junior_senior.rb
badd +47 app/models/calculator/group_price/you_and123.rb
badd +36 app/models/kw/calculator/order_price/group_price.rb
badd +35 app/models/kw/calculator/order_price/you_and123.rb
badd +115 app/models/leo/calculator/price.rb
badd +31 app/models/sso/calculator/order/sso_ticket_helper.rb
badd +1 app/models/offer_ticket.rb
badd +5 app/models/kw/calculator/order_price/price.rb
badd +1 app/models/kw/calculator/order_price/group_price.rb:67
badd +52 app/models/order/additional_tickets_creator.rb
badd +137 test/unit/offer_ticket_test.rb
badd +389 app/models/order.rb
badd +436 app/models/order/creator.rb
badd +72 app/services/pr_sales/extras_dispenser.rb
badd +16 app/models/sso/calculator/order/season_price.rb
badd +146 test/unit/leo/price_calculator_test.rb
badd +2 kamil/konkurs.txt
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit app/models/sso/calculator/order/sso_ticket_helper.rb
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
exe 'vert 1resize ' . ((&columns * 40 + 106) / 212)
exe 'vert 2resize ' . ((&columns * 171 + 106) / 212)
argglobal
enew
file neo-tree\ git_status\ \[1]
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
balt kamil/konkurs.txt
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
let s:l = 31 - ((30 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 31
normal! 09|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 40 + 106) / 212)
exe 'vert 2resize ' . ((&columns * 171 + 106) / 212)
if exists(':tcd') == 2 | tcd ~/koleo | endif
tabnext
edit ~/koleo/app/models/offer.rb
argglobal
balt ~/koleo/app/models/kw/calculator/order_price/you_and123.rb
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
let s:l = 152 - ((22 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 152
normal! 012|
tabnext
edit ~/koleo/app/models/kw/calculator/order_price/group_price.rb
argglobal
balt ~/koleo/app/models/kw/calculator/order_price/group_price.rb:67
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
let s:l = 63 - ((18 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 63
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
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
