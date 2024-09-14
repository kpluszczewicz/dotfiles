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
badd +0 ~/koleo/spec/utils/slack/test.rb
badd +128 spec/controllers/admin/carrier_sale_locks_controller_spec.rb
badd +15 app/utils/slack/it_support.rb
badd +1 ~/koleo/app/utils/slack/general.rb
badd +29 ~/koleo/app/utils/slack.rb
badd +1 config/secrets.yml
badd +8 app/utils/slack/test.rb
badd +1 kamil/SW-3664-powiadomienia-it-support-na-slacku-o-blokadach.md
badd +134 ~/.zshrc
badd +262 ~/koleo/kamil/env-for-rails-console
badd +83 app/controllers/admin/carrier_sale_locks_controller.rb
badd +1 ~/koleo/spec/support/combination_helper.rb
badd +1 ~/koleo/spec/support/eol_response_helper.rb
badd +1 ~/koleo/spec/support/travel_connection_helper.rb
badd +0 ~/koleo/spec/support/slack_helper.rb
badd +358 ~/koleo/spec/support/api_helper.rb
badd +1 ~/koleo/spec/support/caching_helper.rb
badd +1 ~/koleo/spec/support/coupon_fraud_helper.rb
badd +1 ~/koleo/spec/support/discount_calculator_helper.rb
badd +1 ~/koleo/spec/support/exchange_helper.rb
badd +1 ~/koleo/spec/support/groove_hq_response_helper.rb
badd +1 ~/koleo/spec/support/images_helper.rb
badd +1 ~/koleo/spec/support/keygen_helper.rb
badd +1 ~/koleo/spec/support/km_sales_helper.rb
badd +33 spec/unit/km_sales/connections/validator_spec.rb
badd +1 ~/koleo/app/utils/slack/log.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit spec/controllers/admin/carrier_sale_locks_controller_spec.rb
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/koleo/spec/support/api_helper.rb
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
let s:l = 128 - ((28 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 128
normal! 035|
tabnext
edit ~/koleo/app/utils/slack.rb
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
balt ~/koleo/app/utils/slack/general.rb
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
let s:l = 29 - ((28 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 29
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("kamil/SW-3664-powiadomienia-it-support-na-slacku-o-blokadach.md", ":p")) | buffer kamil/SW-3664-powiadomienia-it-support-na-slacku-o-blokadach.md | else | edit kamil/SW-3664-powiadomienia-it-support-na-slacku-o-blokadach.md | endif
if &buftype ==# 'terminal'
  silent file kamil/SW-3664-powiadomienia-it-support-na-slacku-o-blokadach.md
endif
balt ~/koleo/kamil/env-for-rails-console
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
let s:l = 5 - ((4 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 0
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
