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
badd +57 ~/koleo/app/api/api/v2/common/orders_controller.rb
badd +432 app/models/order.rb
badd +341 .env-docker
badd +1 app/utils/firebase_ids_refresher.rb
badd +31 app/services/tos_assigner.rb
badd +33 app/api/api/v2/common/services/tos_assigner.rb
badd +1027 app/models/ticket.rb
badd +0 app/models/connection.rb
badd +87 config/routes/koleo_api_v2_routes.rb
badd +63 ~/koleo/config/routes.rb
badd +5 app/jobs/ald_import_job.rb
badd +2 ~/koleo/app/jobs/kml_import_job.rb
badd +124 app/models/carrier.rb
badd +4 spec/services/hades/kml/ald_importer_spec.rb
badd +4 spec/jobs/skpl_import_job_spec.rb
badd +30 config/clock/imports.rb
badd +1 ~/koleo/spec/jobs/ald_import_job_spec.rb
badd +16 app/jobs/import_job.rb
badd +8 app/services/hades/kml/ald_importer.rb
badd +57 app/views/admin/imports/index.html.haml
badd +1 ~/koleo/app/views/admin/imports/show.html.haml
badd +1 app/models/import_version.rb
badd +10 app/controllers/admin/imports_controller.rb
badd +5 app/presenters/import_presenter.rb
badd +126 app/models/train.rb
badd +31 app/models/brand.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit app/controllers/admin/imports_controller.rb
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
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 238)
argglobal
balt app/models/brand.rb
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
let s:l = 10 - ((9 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 053|
wincmd w
argglobal
if bufexists(fnamemodify("app/presenters/import_presenter.rb", ":p")) | buffer app/presenters/import_presenter.rb | else | edit app/presenters/import_presenter.rb | endif
if &buftype ==# 'terminal'
  silent file app/presenters/import_presenter.rb
endif
balt app/controllers/admin/imports_controller.rb
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
let s:l = 31 - ((18 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 31
normal! 044|
wincmd w
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 238)
tabnext
edit app/views/admin/imports/index.html.haml
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
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 238)
argglobal
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
let s:l = 56 - ((18 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 56
normal! 030|
wincmd w
argglobal
if bufexists(fnamemodify("app/presenters/import_presenter.rb", ":p")) | buffer app/presenters/import_presenter.rb | else | edit app/presenters/import_presenter.rb | endif
if &buftype ==# 'terminal'
  silent file app/presenters/import_presenter.rb
endif
balt app/views/admin/imports/index.html.haml
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
let s:l = 5 - ((4 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 03|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 238)
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
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
