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
badd +2 ~/koleo/app/models/order/push_message_texts_generation/push_service.rb
badd +18 app/jobs/push_ticket_to_mobile_job.rb
badd +21 app/jobs/push_auto_refund_job.rb
badd +2132 config/locales/pl.yml
badd +23 app/api/api/v2/main/orders_controller.rb
badd +82 config/routes/koleo_api_v2_routes.rb
badd +4 spec/unit/order/refund/push_service_spec.rb
badd +27 ~/koleo/spec/unit/order/push_message_texts_generation/base_spec.rb
badd +243 app/models/order/refunds_handler.rb
badd +2106 ~/koleo/config/locales/en.yml
badd +2150 ~/koleo/config/locales/fr.yml
badd +1 ~/koleo/config/locales/pluralization/fr.rb
badd +1 ~/koleo/config/locales/pluralization/en.rb
badd +1 ~/koleo/config/locales/pluralization/de.rb
badd +1 ~/koleo/config/locales/pluralization/ru.rb
badd +1 ~/koleo/config/locales/pluralization/uk.rb
badd +2226 ~/koleo/config/locales/ru.yml
badd +1953 ~/koleo/config/locales/uk.yml
badd +1845 ~/koleo/config/locales/cs.yml
badd +0 ~/koleo/config/locales/pluralization/cs.rb
badd +27 spec/unit/order/refunds_handler_spec.rb
badd +13 ~/koleo/app/models/order/push_message_texts_generation/refund.rb
badd +46 ~/koleo/app/models/order/push_message_texts_generation/sale.rb
badd +4 ~/koleo/spec/unit/order/push_message_texts_generation/sale_spec.rb
badd +4 ~/koleo/spec/unit/order/push_message_texts_generation/refund_spec.rb
badd +4 kamil/pytania.md
badd +23 spec/jobs/push_ticket_to_mobile_job_spec.rb
badd +107 app/models/order.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit app/jobs/push_ticket_to_mobile_job.rb
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
exe 'vert 1resize ' . ((&columns * 105 + 106) / 212)
exe 'vert 2resize ' . ((&columns * 106 + 106) / 212)
argglobal
balt app/models/order/refunds_handler.rb
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
let s:l = 15 - ((14 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 054|
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/app/models/order/push_message_texts_generation/sale.rb", ":p")) | buffer ~/koleo/app/models/order/push_message_texts_generation/sale.rb | else | edit ~/koleo/app/models/order/push_message_texts_generation/sale.rb | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/app/models/order/push_message_texts_generation/sale.rb
endif
balt app/models/order/refunds_handler.rb
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
let s:l = 109 - ((26 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 109
normal! 011|
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 106) / 212)
exe 'vert 2resize ' . ((&columns * 106 + 106) / 212)
tabnext
edit spec/jobs/push_ticket_to_mobile_job_spec.rb
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
exe 'vert 1resize ' . ((&columns * 106 + 106) / 212)
exe 'vert 2resize ' . ((&columns * 105 + 106) / 212)
argglobal
balt ~/koleo/app/models/order/push_message_texts_generation/refund.rb
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
let s:l = 23 - ((22 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 23
normal! 041|
wincmd w
argglobal
if bufexists(fnamemodify("app/jobs/push_ticket_to_mobile_job.rb", ":p")) | buffer app/jobs/push_ticket_to_mobile_job.rb | else | edit app/jobs/push_ticket_to_mobile_job.rb | endif
if &buftype ==# 'terminal'
  silent file app/jobs/push_ticket_to_mobile_job.rb
endif
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
let s:l = 18 - ((17 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 016|
wincmd w
exe 'vert 1resize ' . ((&columns * 106 + 106) / 212)
exe 'vert 2resize ' . ((&columns * 105 + 106) / 212)
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
