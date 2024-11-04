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
badd +1 ~/koleo/spec/requests/swagger/api/v2/main/base_controller_spec.rb
badd +11 app/controllers/livesearch_controller.rb
badd +45 ~/koleo/spec/requests/swagger/api/v2/main/stations_controller_spec.rb
badd +49 ~/koleo/spec/requests/swagger/api/v2/main/livesearch_controller_spec.rb
badd +75 spec/fixtures/rswag/stations.yml
badd +513 ~/koleo/swagger/base_template.yaml
badd +1 app/utils/view_refresher.rb
badd +57 spec/swagger_helper.rb
badd +91 app/services/livesearch_service.rb
badd +76 config/routes/koleo_api_v2_routes.rb
badd +6 app/api/api/v2/main/livesearch_controller.rb
argglobal
%argdel
edit ~/koleo/spec/requests/swagger/api/v2/main/stations_controller_spec.rb
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
balt ~/koleo/spec/requests/swagger/api/v2/main/livesearch_controller_spec.rb
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
let s:l = 50 - ((10 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 50
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/spec/requests/swagger/api/v2/main/livesearch_controller_spec.rb", ":p")) | buffer ~/koleo/spec/requests/swagger/api/v2/main/livesearch_controller_spec.rb | else | edit ~/koleo/spec/requests/swagger/api/v2/main/livesearch_controller_spec.rb | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/spec/requests/swagger/api/v2/main/livesearch_controller_spec.rb
endif
balt app/utils/view_refresher.rb
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
let s:l = 49 - ((10 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 49
normal! 034|
wincmd w
argglobal
if bufexists(fnamemodify("spec/fixtures/rswag/stations.yml", ":p")) | buffer spec/fixtures/rswag/stations.yml | else | edit spec/fixtures/rswag/stations.yml | endif
if &buftype ==# 'terminal'
  silent file spec/fixtures/rswag/stations.yml
endif
balt app/services/livesearch_service.rb
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
let s:l = 100 - ((30 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 100
normal! 09|
wincmd w
2wincmd w
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
