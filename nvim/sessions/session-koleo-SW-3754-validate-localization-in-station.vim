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
badd +97 ~/koleo/app/models/station.rb
badd +3 kamil/imports.rb
badd +20 app/services/hades/ks/importer.rb
badd +117 app/services/hades/lka/importer.rb
badd +232 app/services/hades/certus_xml/importer.rb
badd +77 app/services/hades/km/importer.rb
badd +16 app/api/api/base/v1/serializer/station_serializer.rb
badd +23 spec/unit/station_spec.rb
badd +1 app/models/station_info.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit app/services/hades/lka/importer.rb
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
balt app/services/hades/km/importer.rb
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
let s:l = 117 - ((18 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 117
normal! 021|
wincmd w
argglobal
if bufexists(fnamemodify("app/api/api/base/v1/serializer/station_serializer.rb", ":p")) | buffer app/api/api/base/v1/serializer/station_serializer.rb | else | edit app/api/api/base/v1/serializer/station_serializer.rb | endif
if &buftype ==# 'terminal'
  silent file app/api/api/base/v1/serializer/station_serializer.rb
endif
balt ~/koleo/app/models/station.rb
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
let s:l = 15 - ((14 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 03|
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 106) / 212)
exe 'vert 2resize ' . ((&columns * 106 + 106) / 212)
tabnext
edit spec/unit/station_spec.rb
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
balt app/services/hades/lka/importer.rb
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
let s:l = 23 - ((22 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 23
normal! 055|
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/app/models/station.rb", ":p")) | buffer ~/koleo/app/models/station.rb | else | edit ~/koleo/app/models/station.rb | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/app/models/station.rb
endif
balt spec/unit/station_spec.rb
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
let s:l = 103 - ((20 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 103
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 106) / 212)
exe 'vert 2resize ' . ((&columns * 106 + 106) / 212)
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
