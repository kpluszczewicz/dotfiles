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
badd +112 app/models/agent_sales_summary/report_factory.rb
badd +75 app/models/agent_sales_summary/datastore_factory.rb
badd +31 config/initializers/sidekiq.rb
badd +45 test/unit/agent_sales_summary/datastore_factory_test.rb
badd +188 test/controllers/admin/tickets_controller_test.rb
badd +175 app/models/ticket.rb
badd +1 app/models/proxy_sales_record/buy.rb
badd +12 app/models/proxy_sales_record/refund.rb
badd +27 app/models/per_day_sales_summary/datastore_factory.rb
badd +465 test/unit/ticket_test.rb
badd +866 test/unit/record_sales_summary/datastore_factory_test.rb
badd +19 test/unit/agent_sales_summary/report_factory_test.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit test/unit/ticket_test.rb
argglobal
balt test/unit/record_sales_summary/datastore_factory_test.rb
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
let s:l = 465 - ((21 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 465
normal! 011|
tabnext
edit test/unit/agent_sales_summary/report_factory_test.rb
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
exe 'vert 1resize ' . ((&columns * 97 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 140 + 119) / 238)
argglobal
balt test/unit/agent_sales_summary/datastore_factory_test.rb
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
let s:l = 56 - ((33 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 56
normal! 040|
wincmd w
argglobal
if bufexists(fnamemodify("test/unit/agent_sales_summary/report_factory_test.rb", ":p")) | buffer test/unit/agent_sales_summary/report_factory_test.rb | else | edit test/unit/agent_sales_summary/report_factory_test.rb | endif
if &buftype ==# 'terminal'
  silent file test/unit/agent_sales_summary/report_factory_test.rb
endif
balt test/unit/agent_sales_summary/datastore_factory_test.rb
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
let s:l = 19 - ((18 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 042|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 97 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 140 + 119) / 238)
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
