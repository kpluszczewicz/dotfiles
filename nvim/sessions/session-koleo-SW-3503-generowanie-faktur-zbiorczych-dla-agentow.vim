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
badd +154 spec/services/agent_invoice/infakt_service_spec.rb
badd +1 app/services/agent_invoice/infakt_service/kml_astarium_to_agent.rb
badd +53 app/services/agent_invoice/infakt_service/base.rb
badd +842 db/structure.sql
badd +49 app/services/agent_invoice/factory.rb
badd +126 app/models/carrier.rb
badd +34 app/services/agent_invoice/infakt_service/kml.rb
badd +1 test/factories.rb
badd +106 spec/services/agent_invoice/factory_spec.rb
badd +25 app/models/company.rb
badd +54 app/services/invoice/invoice_factory/regular.rb
badd +8 app/services/invoice/invoice_factory/regular/kd.rb
badd +206 test/unit/company_test.rb
badd +1 ~/koleo/app/services/invoice/infakt_service/kd.rb
badd +36 ~/koleo/app/services/invoice/infakt_service/base.rb
badd +362 config/secrets.yml
badd +3 new
badd +3 app/models/agent_invoice.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit spec/services/agent_invoice/factory_spec.rb
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt spec/services/agent_invoice/infakt_service_spec.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
113,147fold
let &fdl = &fdl
113
normal! zo
let s:l = 106 - ((31 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 106
normal! 088|
tabnext
edit app/services/agent_invoice/factory.rb
argglobal
balt app/services/agent_invoice/infakt_service/base.rb
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
let s:l = 49 - ((22 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 49
normal! 09|
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
