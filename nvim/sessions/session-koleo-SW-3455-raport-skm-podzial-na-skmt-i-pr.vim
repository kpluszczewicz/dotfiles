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
badd +34 app/controllers/admin/reports_controller.rb
badd +19 app/models/record_sales_summary/report.rb
badd +2 app/models/agent_sales_summary/report.rb
badd +52 app/jobs/sales_generate_custom_report_job.rb
badd +19 app/models/record_sales_summary/skmt/report_factory.rb
badd +103 app/models/record_sales_summary/skmt/worksheet.rb
badd +11 app/models/record_sales_summary/skmt/datastore_factory.rb
badd +19 app/models/record_sales_summary/skmt/datastore.rb
badd +33 app/models/record_sales_summary/skmt/utils.rb
badd +1 app/models/record_sales_summary/datastore.rb
badd +35 app/models/record_sales_summary/datastore_factory.rb
badd +1 app/models/record_sales_summary/skmt/worksheet/buy_with_refund.rb
badd +14 app/models/record_sales_summary/report_factory.rb
badd +137 app/models/carrier.rb
badd +5 app/models/record_sales_summary/skmt/month_report_factory.rb
argglobal
%argdel
edit app/models/record_sales_summary/skmt/worksheet.rb
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt app/models/record_sales_summary/skmt/utils.rb
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
let s:l = 103 - ((19 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 103
normal! 09|
if exists(':tcd') == 2 | tcd ~/koleo | endif
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
