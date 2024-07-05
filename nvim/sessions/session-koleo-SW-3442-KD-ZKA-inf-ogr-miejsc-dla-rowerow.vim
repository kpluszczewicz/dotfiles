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
badd +855 test/unit/travel/connection_test.rb
badd +289 app/models/travel/connection.rb
badd +2319 config/locales/pl.yml
badd +330 test/factories.rb
badd +2323 config/locales/fr.yml
badd +2406 config/locales/ru.yml
badd +2272 config/locales/en.yml
badd +2336 config/locales/de.yml
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit test/unit/travel/connection_test.rb
argglobal
balt test/factories.rb
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
let s:l = 791 - ((18 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 791
normal! 032|
tabnext
edit app/models/travel/connection.rb
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
exe 'vert 1resize ' . ((&columns * 106 + 110) / 220)
exe 'vert 2resize ' . ((&columns * 113 + 110) / 220)
argglobal
balt test/unit/travel/connection_test.rb
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
let s:l = 289 - ((37 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 289
normal! 021|
wincmd w
argglobal
if bufexists(fnamemodify("app/models/travel/connection.rb", ":p")) | buffer app/models/travel/connection.rb | else | edit app/models/travel/connection.rb | endif
if &buftype ==# 'terminal'
  silent file app/models/travel/connection.rb
endif
balt test/unit/travel/connection_test.rb
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
let s:l = 284 - ((23 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 284
normal! 07|
wincmd w
exe 'vert 1resize ' . ((&columns * 106 + 110) / 220)
exe 'vert 2resize ' . ((&columns * 113 + 110) / 220)
tabnext
edit config/locales/de.yml
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
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
exe '1resize ' . ((&lines * 38 + 26) / 52)
exe 'vert 1resize ' . ((&columns * 109 + 110) / 220)
exe '2resize ' . ((&lines * 38 + 26) / 52)
exe 'vert 2resize ' . ((&columns * 110 + 110) / 220)
exe '3resize ' . ((&lines * 10 + 26) / 52)
argglobal
balt config/locales/pl.yml
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
let s:l = 2335 - ((17 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2335
normal! 05|
wincmd w
argglobal
if bufexists(fnamemodify("config/locales/en.yml", ":p")) | buffer config/locales/en.yml | else | edit config/locales/en.yml | endif
if &buftype ==# 'terminal'
  silent file config/locales/en.yml
endif
balt config/locales/ru.yml
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
let s:l = 2269 - ((15 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2269
normal! 05|
wincmd w
argglobal
enew
balt config/locales/pl.yml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 38 + 26) / 52)
exe 'vert 1resize ' . ((&columns * 109 + 110) / 220)
exe '2resize ' . ((&lines * 38 + 26) / 52)
exe 'vert 2resize ' . ((&columns * 110 + 110) / 220)
exe '3resize ' . ((&lines * 10 + 26) / 52)
tabnext 3
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
