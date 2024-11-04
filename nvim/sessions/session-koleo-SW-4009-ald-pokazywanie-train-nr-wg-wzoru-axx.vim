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
badd +6 app/api/api/v2/main/serializer/train_timetable_serializer.rb
badd +27 app/api/api/v2/common/serializer/train_serializer.rb
badd +17 app/serializers/train_serializer.rb
badd +5 app/serializers/travel_train_serializer.rb
badd +12 app/serializers/train_calendar_serializer.rb
badd +13 app/controllers/train_calendars_controller.rb
badd +28 app/services/sso_sales/offer_service/kml.rb
badd +31 db/migrate/20241023132110_add_ald_code_to_discounts.rb
badd +39 spec/serializers/train_calendar_serializer_spec.rb
badd +27 app/models/train.rb
badd +61 config/routes/koleo_api_v2_routes.rb
badd +86 app/api/api/v2/common/serializer/connection_serializer.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit app/serializers/train_serializer.rb
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
exe '1resize ' . ((&lines * 36 + 25) / 50)
exe 'vert 1resize ' . ((&columns * 134 + 136) / 272)
exe '2resize ' . ((&lines * 36 + 25) / 50)
exe 'vert 2resize ' . ((&columns * 137 + 136) / 272)
exe '3resize ' . ((&lines * 10 + 25) / 50)
argglobal
balt app/serializers/travel_train_serializer.rb
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
let s:l = 17 - ((16 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 17
normal! 016|
wincmd w
argglobal
if bufexists(fnamemodify("app/api/api/v2/common/serializer/train_serializer.rb", ":p")) | buffer app/api/api/v2/common/serializer/train_serializer.rb | else | edit app/api/api/v2/common/serializer/train_serializer.rb | endif
if &buftype ==# 'terminal'
  silent file app/api/api/v2/common/serializer/train_serializer.rb
endif
balt app/serializers/train_serializer.rb
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
let s:l = 25 - ((22 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 0
wincmd w
argglobal
enew
balt app/api/api/v2/main/serializer/train_timetable_serializer.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
exe '1resize ' . ((&lines * 36 + 25) / 50)
exe 'vert 1resize ' . ((&columns * 134 + 136) / 272)
exe '2resize ' . ((&lines * 36 + 25) / 50)
exe 'vert 2resize ' . ((&columns * 137 + 136) / 272)
exe '3resize ' . ((&lines * 10 + 25) / 50)
tabnext
edit app/api/api/v2/common/serializer/connection_serializer.rb
argglobal
balt config/routes/koleo_api_v2_routes.rb
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
let s:l = 86 - ((24 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 86
normal! 019|
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
