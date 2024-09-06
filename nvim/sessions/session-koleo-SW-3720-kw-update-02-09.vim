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
badd +5 ~/koleo/db/migrate/20240827132730_add_kw271and273offers.rb
badd +8433 db/structure.sql
badd +63 app/models/kw/calculator/group_price.rb
badd +1 ~/koleo/app/models/kw/calculator/passenger_price.rb
badd +1 ~/koleo/app/models/kw/calculator/price.rb
badd +1 ~/koleo/app/models/kw/calculator/still_loading_error.rb
badd +1 ~/koleo/app/models/kw/calculator/price_error.rb
badd +1 ~/koleo/app/models/kw/calculator/passengers_grouper.rb
badd +1 ~/koleo/app/models/kw/calculator/kw_group.rb
badd +16 app/models/calculator/tariff_validator/distance.rb
badd +28 app/models/calculator/tariff_validator/connection.rb
badd +103 spec/unit/kw/calculator/price_spec.rb
badd +29 spec/unit/calculator/tariff_validator/distance_validator_spec.rb
badd +145 ~/koleo/app/models/kw/calculator/price/season.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/koleo/app/models/kw/calculator/price/season.rb
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
balt app/models/kw/calculator/group_price.rb
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
let s:l = 145 - ((35 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 145
normal! 07|
wincmd w
argglobal
if bufexists(fnamemodify("app/models/calculator/tariff_validator/connection.rb", ":p")) | buffer app/models/calculator/tariff_validator/connection.rb | else | edit app/models/calculator/tariff_validator/connection.rb | endif
if &buftype ==# 'terminal'
  silent file app/models/calculator/tariff_validator/connection.rb
endif
balt app/models/calculator/tariff_validator/distance.rb
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
let s:l = 18 - ((17 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 026|
wincmd w
wincmd =
tabnext
edit ~/koleo/db/migrate/20240827132730_add_kw271and273offers.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
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
enew
balt ~/koleo/db/migrate/20240827132730_add_kw271and273offers.rb
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
let s:l = 7 - ((6 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 02|
wincmd w
wincmd =
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
