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
badd +9 config/initializers/doorkeeper.rb
badd +3 kamil/zapamietywanie-sesji/token.http
badd +3 ~/koleo/kamil/flipper-api.http
badd +6 app/api/api/v2/main/users_controller.rb
badd +30 app/api/api/v2/main/module/user_selector.rb
badd +9 app/api/api/android/v1/module/doorkeeper_application_protector.rb
badd +17 app/controllers/sessions_controller.rb
badd +176 ~/koleo/config/initializers/devise.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit kamil/zapamietywanie-sesji/token.http
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
exe '1resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe '2resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 118 + 119) / 238)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 238)
argglobal
balt config/initializers/doorkeeper.rb
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
let s:l = 3 - ((2 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("app/api/api/v2/main/users_controller.rb", ":p")) | buffer app/api/api/v2/main/users_controller.rb | else | edit app/api/api/v2/main/users_controller.rb | endif
if &buftype ==# 'terminal'
  silent file app/api/api/v2/main/users_controller.rb
endif
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
let s:l = 5 - ((4 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 040|
wincmd w
argglobal
if bufexists(fnamemodify("rest_nvim_result\#Response", ":p")) | buffer rest_nvim_result\#Response | else | edit rest_nvim_result\#Response | endif
if &buftype ==# 'terminal'
  silent file rest_nvim_result\#Response
endif
balt kamil/zapamietywanie-sesji/token.http
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
let s:l = 1 - ((0 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 118 + 119) / 238)
exe '2resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 118 + 119) / 238)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 238)
tabnext
edit config/initializers/doorkeeper.rb
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
balt ~/koleo/config/initializers/devise.rb
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
normal! 010|
wincmd w
argglobal
if bufexists(fnamemodify("app/controllers/sessions_controller.rb", ":p")) | buffer app/controllers/sessions_controller.rb | else | edit app/controllers/sessions_controller.rb | endif
if &buftype ==# 'terminal'
  silent file app/controllers/sessions_controller.rb
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
let s:l = 17 - ((16 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 17
normal! 010|
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
