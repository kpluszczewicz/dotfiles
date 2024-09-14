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
badd +4 ~/dziennik_pracy.md
badd +43 app/services/mobile_push_service.rb
badd +29 app/jobs/send_push_notifications_job.rb
badd +10 app/jobs/push_message_job.rb
badd +9 app/jobs/push_ticket_to_mobile_job.rb
badd +988 Gemfile.lock
badd +1 Gemfile
badd +18 app/models/user.rb
badd +20 app/api/api/v2/main/firebase_tokens_controller.rb
badd +29 spec/controllers/api/v2/main/firebase_tokens_controller_spec.rb
badd +247 config/routes/koleo_api_v2_routes.rb
badd +4 app/services/huawei_push_kit.rb
badd +20 app/jobs/api_order_update_push_job.rb
badd +25 app/jobs/luggage_plus_push_notification_job.rb
badd +33 app/jobs/push_auto_refund_job.rb
badd +12 app/jobs/push_groove_hq_notification_job.rb
badd +10 app/jobs/push_excess_payment_auto_refund_job.rb
badd +17 app/jobs/push_renewal_order_job.rb
badd +22 kamil/SW-3743-FCM-migration-to-http-v1-api.md
badd +1 app/services/errors/koleo_shop_api_error.rb
badd +29 spec/services/mobile_push_service_spec.rb
badd +6 app/services/errors/fcm_request_error.rb
badd +35 app/services/koleo_shop_service.rb
badd +102 spec/jobs/payment_card_registration_job_spec.rb
badd +10 spec/jobs/push_groove_hq_notification_job_spec.rb
badd +1 spec/jobs/push_ticket_to_mobile_job_spec.rb
badd +14 spec/jobs/push_auto_refund_job_spec.rb
badd +22 spec/jobs/send_push_notifications_job_spec.rb
badd +16 app/jobs/clear_cache_job.rb
badd +6 spec/jobs/clear_cache_job_spec.rb
badd +1 spec/jobs/push_excess_payment_auto_refund_job_spec.rb
badd +61 .rubocop_koleo_settings.yml
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit .rubocop_koleo_settings.yml
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe 'vert 1resize ' . ((&columns * 105 + 106) / 212)
exe '2resize ' . ((&lines * 19 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 106 + 106) / 212)
exe '3resize ' . ((&lines * 19 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 106 + 106) / 212)
tcd ~/koleo
argglobal
balt ~/koleo/spec/jobs/clear_cache_job_spec.rb
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
let s:l = 61 - ((27 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 61
normal! 020|
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/spec/jobs/send_push_notifications_job_spec.rb", ":p")) | buffer ~/koleo/spec/jobs/send_push_notifications_job_spec.rb | else | edit ~/koleo/spec/jobs/send_push_notifications_job_spec.rb | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/spec/jobs/send_push_notifications_job_spec.rb
endif
balt ~/koleo/spec/jobs/push_ticket_to_mobile_job_spec.rb
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
let s:l = 26 - ((9 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 26
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/app/jobs/clear_cache_job.rb", ":p")) | buffer ~/koleo/app/jobs/clear_cache_job.rb | else | edit ~/koleo/app/jobs/clear_cache_job.rb | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/app/jobs/clear_cache_job.rb
endif
balt ~/koleo/spec/jobs/push_auto_refund_job_spec.rb
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
let s:l = 19 - ((9 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 05|
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 106) / 212)
exe '2resize ' . ((&lines * 19 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 106 + 106) / 212)
exe '3resize ' . ((&lines * 19 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 106 + 106) / 212)
tabnext
edit ~/koleo/spec/jobs/send_push_notifications_job_spec.rb
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
balt ~/koleo/kamil/SW-3743-FCM-migration-to-http-v1-api.md
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
let s:l = 22 - ((21 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 22
normal! 044|
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/kamil/SW-3743-FCM-migration-to-http-v1-api.md", ":p")) | buffer ~/koleo/kamil/SW-3743-FCM-migration-to-http-v1-api.md | else | edit ~/koleo/kamil/SW-3743-FCM-migration-to-http-v1-api.md | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/kamil/SW-3743-FCM-migration-to-http-v1-api.md
endif
balt ~/koleo/spec/jobs/send_push_notifications_job_spec.rb
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
let s:l = 22 - ((21 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 22
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
