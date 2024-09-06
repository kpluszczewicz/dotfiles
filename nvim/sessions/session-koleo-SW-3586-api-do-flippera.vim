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
badd +11918 db/structure.sql
badd +13 kamil/SW-3586-api-do-flippera.md
badd +1 config/routes.rb
badd +334 ~/koleo/config/routes/koleo_api_v2_routes.rb
badd +28 ~/koleo/spec/controllers/api/v2/main/users_controller_spec.rb
badd +5 app/api/api/v2/main/users_controller.rb
badd +1 ~/koleo/app/api/api/v2/main/module/not_null_user.rb
badd +4 ~/koleo/app/api/api/v2/common/users_controller.rb
badd +25 app/api/api/v2/main/module/user_selector.rb
badd +31 ~/koleo/spec/controllers/api/v2/main/user_flags_controller_spec.rb
badd +56 spec/support/api_helper.rb
badd +4 app/api/api/v2/main/base_controller.rb
badd +15 ~/koleo/app/api/api/v2/main/user_flags_controller.rb
badd +0 app/api/api/v2/common/station_announcements_controller.rb
badd +5 app/api/api/android/v1/module/doorkeeper_application_protector.rb
badd +5 app/api/api/android/v1/module/user_selector.rb
badd +3 ~/koleo/db/migrate/20240903114810_turn_off_ks_quartelry.rb
badd +2 ~/koleo/db/migrate/20240902133554_update_pr_offer_name.rb
badd +8 ~/koleo/db/migrate/20240826114002_add_skmt_91_92_36_612_offers.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit app/api/api/v2/main/users_controller.rb
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
balt app/api/api/android/v1/module/doorkeeper_application_protector.rb
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
let s:l = 6 - ((5 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 040|
wincmd w
argglobal
if bufexists(fnamemodify("kamil/SW-3586-api-do-flippera.md", ":p")) | buffer kamil/SW-3586-api-do-flippera.md | else | edit kamil/SW-3586-api-do-flippera.md | endif
if &buftype ==# 'terminal'
  silent file kamil/SW-3586-api-do-flippera.md
endif
balt app/api/api/v2/main/module/user_selector.rb
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
let s:l = 9 - ((8 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 9
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 238)
tabnext
edit ~/koleo/spec/controllers/api/v2/main/user_flags_controller_spec.rb
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
balt spec/support/api_helper.rb
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
let s:l = 31 - ((30 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 31
normal! 09|
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/app/api/api/v2/main/user_flags_controller.rb", ":p")) | buffer ~/koleo/app/api/api/v2/main/user_flags_controller.rb | else | edit ~/koleo/app/api/api/v2/main/user_flags_controller.rb | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/app/api/api/v2/main/user_flags_controller.rb
endif
balt app/api/api/android/v1/module/user_selector.rb
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
let s:l = 15 - ((14 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 015|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 238)
tabnext
edit app/api/api/v2/common/station_announcements_controller.rb
argglobal
balt ~/koleo/app/api/api/v2/main/user_flags_controller.rb
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
let s:l = 2 - ((1 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
tabnext
edit ~/koleo/config/routes/koleo_api_v2_routes.rb
argglobal
balt app/api/api/v2/main/users_controller.rb
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
let s:l = 62 - ((30 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 62
normal! 025|
tabnext 2
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
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
