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
badd +97 app/models/record_sales_summary/ald/datastore_factory.rb
badd +74 app/models/leo/calculator/price.rb
badd +46 app/models/record_sales_summary/ald/datastore.rb
badd +41 app/models/record_sales_summary/ald/utils.rb
badd +149 spec/unit/record_sales_summary/ald/report_factory_spec.rb
badd +114 app/models/record_sales_summary/ald/report_factory/financial_report_worksheet.rb
badd +37 app/models/record_sales_summary/ald/report_factory/statistical_report_worksheet.rb
badd +9 kamil/SW-3982-ald-raport.md
badd +32 app/models/record_sales_summary/ald/report_factory/sales_by_line_report_worksheet.rb
badd +1 app/services/hades.rb
badd +116 app/services/hades/leo/importer.rb
badd +5 app/services/leo_sales/leo_client.rb
badd +237 config/secrets.yml
badd +1 app/services/leo_sales/connector.rb
badd +51 ~/koleo/app/models/record_sales_summary/ald/report_factory/worksheet.rb
badd +32 ~/koleo/spec/fixtures/unit/discounts.yml
badd +1 app/models/discount.rb
badd +251 app/models/proxy_sales_record.rb
badd +66 app/models/proxy_sales_record/refund.rb
badd +1147 spec/factories.rb
badd +42 spec/unit/record_sales_summary/kd/report_factory_spec.rb
badd +114 spec/unit/luggage_plus_summary/report_factory_spec.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit app/models/record_sales_summary/ald/datastore_factory.rb
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
balt app/models/record_sales_summary/ald/report_factory/financial_report_worksheet.rb
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
let s:l = 97 - ((22 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 97
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("app/models/record_sales_summary/ald/datastore_factory.rb", ":p")) | buffer app/models/record_sales_summary/ald/datastore_factory.rb | else | edit app/models/record_sales_summary/ald/datastore_factory.rb | endif
if &buftype ==# 'terminal'
  silent file app/models/record_sales_summary/ald/datastore_factory.rb
endif
balt app/models/proxy_sales_record/refund.rb
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
let s:l = 27 - ((14 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 27
normal! 0
wincmd w
wincmd =
tabnext
edit spec/unit/record_sales_summary/ald/report_factory_spec.rb
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
balt ~/koleo/spec/fixtures/unit/discounts.yml
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
let s:l = 148 - ((18 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 148
normal! 038|
wincmd w
argglobal
if bufexists(fnamemodify("spec/unit/luggage_plus_summary/report_factory_spec.rb", ":p")) | buffer spec/unit/luggage_plus_summary/report_factory_spec.rb | else | edit spec/unit/luggage_plus_summary/report_factory_spec.rb | endif
if &buftype ==# 'terminal'
  silent file spec/unit/luggage_plus_summary/report_factory_spec.rb
endif
balt app/models/record_sales_summary/ald/report_factory/statistical_report_worksheet.rb
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
let s:l = 144 - ((10 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 144
normal! 018|
wincmd w
wincmd =
tabnext
edit spec/factories.rb
argglobal
balt spec/unit/record_sales_summary/ald/report_factory_spec.rb
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
let s:l = 1168 - ((10 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1168
normal! 05|
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
