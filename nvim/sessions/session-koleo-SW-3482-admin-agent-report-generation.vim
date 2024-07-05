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
badd +16 app/models/agent_sales_summary/report_factory.rb
badd +8 test/unit/agent_sales_summary/report_factory_test.rb
badd +97 app/models/agent_sales_summary/datastore_factory.rb
badd +49 test/unit/agent_sales_summary/datastore_factory_test.rb
badd +14 app/views/admin/agent_reports/new.html.haml
badd +16 app/views/admin/agent_reports/index.html.haml
badd +63 app/controllers/admin/agent_reports_controller.rb
badd +4 app/jobs/agent_sales_generate_report_job.rb
badd +81 test/controllers/admin/agent_reports_controller_test.rb
badd +3 term://~/koleo//41712:zsh
badd +23 config/environments/test.rb
badd +13 app/models/agent_sales_summary/datastore.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit app/views/admin/agent_reports/new.html.haml
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
exe 'vert 1resize ' . ((&columns * 45 + 91) / 182)
exe 'vert 2resize ' . ((&columns * 136 + 91) / 182)
argglobal
balt app/views/admin/agent_reports/index.html.haml
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
let s:l = 14 - ((13 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
let s:c = 34 - ((30 * winwidth(0) + 22) / 45)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 34 . '|'
else
  normal! 034|
endif
wincmd w
argglobal
if bufexists(fnamemodify("app/controllers/admin/agent_reports_controller.rb", ":p")) | buffer app/controllers/admin/agent_reports_controller.rb | else | edit app/controllers/admin/agent_reports_controller.rb | endif
if &buftype ==# 'terminal'
  silent file app/controllers/admin/agent_reports_controller.rb
endif
balt app/views/admin/agent_reports/new.html.haml
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
let s:l = 42 - ((26 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 42
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 45 + 91) / 182)
exe 'vert 2resize ' . ((&columns * 136 + 91) / 182)
tabnext
edit app/models/agent_sales_summary/report_factory.rb
argglobal
balt test/controllers/admin/agent_reports_controller_test.rb
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
let s:l = 16 - ((15 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
normal! 0
if exists(':tcd') == 2 | tcd ~/koleo | endif
tabnext
edit ~/koleo/app/models/agent_sales_summary/datastore_factory.rb
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
exe '1resize ' . ((&lines * 23 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 76 + 91) / 182)
exe '2resize ' . ((&lines * 23 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 105 + 91) / 182)
argglobal
balt ~/koleo/app/models/agent_sales_summary/datastore.rb
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
let s:l = 4 - ((3 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/test/unit/agent_sales_summary/datastore_factory_test.rb", ":p")) | buffer ~/koleo/test/unit/agent_sales_summary/datastore_factory_test.rb | else | edit ~/koleo/test/unit/agent_sales_summary/datastore_factory_test.rb | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/test/unit/agent_sales_summary/datastore_factory_test.rb
endif
balt ~/koleo/app/models/agent_sales_summary/datastore_factory.rb
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
let s:l = 13 - ((12 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
normal! 067|
wincmd w
exe '1resize ' . ((&lines * 23 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 76 + 91) / 182)
exe '2resize ' . ((&lines * 23 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 105 + 91) / 182)
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
