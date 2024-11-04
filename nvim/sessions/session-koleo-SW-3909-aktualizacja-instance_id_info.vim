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
badd +3 app/services/instance_id_info.rb
badd +22 app/models/firebase_id.rb
badd +1 app/services/mobile_push_service.rb
badd +9 app/jobs/refresh_instance_id_info_job.rb
badd +29 spec/services/instance_id_info_spec.rb
badd +2 kamil/SW-3909-aktualizacja-instance_id_info.md
badd +21 app/controllers/admin/push_notifications_controller.rb
badd +19 app/models/push_notification.rb
badd +5 app/jobs/schedule_push_notifications_job.rb
badd +15 app/services/push_notifications_scheduler.rb
badd +10 app/jobs/send_push_notifications_job.rb
badd +1401 spec/factories.rb
badd +27 app/api/api/v2/common/station_announcements_controller.rb
badd +18 app/controllers/station_announcements_controller.rb
badd +1 ~/koleo/app/jobs/push_message_job.rb
badd +19 config/sidekiq.yml
badd +13 app/api/api/v2/main/firebase_tokens_controller.rb
badd +11 app/utils/firebase_ids_refresher.rb
badd +7 spec/utils/firebase_ids_refresher_spec.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit spec/utils/firebase_ids_refresher_spec.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
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
exe '1resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 1resize ' . ((&columns * 106 + 106) / 212)
exe '2resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 106 + 106) / 212)
exe '3resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 3resize ' . ((&columns * 105 + 106) / 212)
exe '4resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 4resize ' . ((&columns * 105 + 106) / 212)
argglobal
balt app/models/firebase_id.rb
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
let s:l = 7 - ((6 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("spec/utils/firebase_ids_refresher_spec.rb", ":p")) | buffer spec/utils/firebase_ids_refresher_spec.rb | else | edit spec/utils/firebase_ids_refresher_spec.rb | endif
if &buftype ==# 'terminal'
  silent file spec/utils/firebase_ids_refresher_spec.rb
endif
balt app/models/firebase_id.rb
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
let s:l = 18 - ((11 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 023|
wincmd w
argglobal
if bufexists(fnamemodify("app/models/firebase_id.rb", ":p")) | buffer app/models/firebase_id.rb | else | edit app/models/firebase_id.rb | endif
if &buftype ==# 'terminal'
  silent file app/models/firebase_id.rb
endif
balt config/sidekiq.yml
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
let s:l = 23 - ((11 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 23
normal! 03|
wincmd w
argglobal
if bufexists(fnamemodify("app/utils/firebase_ids_refresher.rb", ":p")) | buffer app/utils/firebase_ids_refresher.rb | else | edit app/utils/firebase_ids_refresher.rb | endif
if &buftype ==# 'terminal'
  silent file app/utils/firebase_ids_refresher.rb
endif
balt app/jobs/refresh_instance_id_info_job.rb
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
let s:l = 11 - ((8 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 11
normal! 048|
wincmd w
exe '1resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 1resize ' . ((&columns * 106 + 106) / 212)
exe '2resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 106 + 106) / 212)
exe '3resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 3resize ' . ((&columns * 105 + 106) / 212)
exe '4resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 4resize ' . ((&columns * 105 + 106) / 212)
tabnext
edit spec/factories.rb
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
balt spec/services/instance_id_info_spec.rb
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
let s:l = 1401 - ((26 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1401
normal! 058|
wincmd w
argglobal
if bufexists(fnamemodify("spec/utils/firebase_ids_refresher_spec.rb", ":p")) | buffer spec/utils/firebase_ids_refresher_spec.rb | else | edit spec/utils/firebase_ids_refresher_spec.rb | endif
if &buftype ==# 'terminal'
  silent file spec/utils/firebase_ids_refresher_spec.rb
endif
balt spec/services/instance_id_info_spec.rb
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
let s:l = 14 - ((13 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 010|
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 106) / 212)
exe 'vert 2resize ' . ((&columns * 106 + 106) / 212)
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
