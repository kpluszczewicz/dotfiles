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
badd +1 app/services/agent_invoice/factory.rb
badd +16 ~/koleo/app/services/agent_invoice/infakt_service/arriva.rb
badd +74 ~/koleo/app/services/agent_invoice/infakt_service/base.rb
badd +27 ~/koleo/app/services/agent_invoice/infakt_service/kml.rb
badd +23 ~/koleo/app/services/agent_invoice/infakt_service/ks.rb
badd +1 ~/koleo/app/services/agent_invoice/infakt_service/kw.rb
badd +6 ~/koleo/app/services/agent_invoice/infakt_service/leo.rb
badd +57 spec/services/agent_invoice/factory_spec.rb
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/koleo/app/services/agent_invoice/infakt_service/arriva.rb
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
exe '1resize ' . ((&lines * 19 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 85 + 106) / 212)
exe '2resize ' . ((&lines * 19 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 85 + 106) / 212)
exe 'vert 3resize ' . ((&columns * 126 + 106) / 212)
argglobal
balt app/services/agent_invoice/factory.rb
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
let s:l = 16 - ((9 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
normal! 042|
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/app/services/agent_invoice/infakt_service/leo.rb", ":p")) | buffer ~/koleo/app/services/agent_invoice/infakt_service/leo.rb | else | edit ~/koleo/app/services/agent_invoice/infakt_service/leo.rb | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/app/services/agent_invoice/infakt_service/leo.rb
endif
balt ~/koleo/app/services/agent_invoice/infakt_service/arriva.rb
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
let s:l = 14 - ((9 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/koleo/app/services/agent_invoice/infakt_service/base.rb", ":p")) | buffer ~/koleo/app/services/agent_invoice/infakt_service/base.rb | else | edit ~/koleo/app/services/agent_invoice/infakt_service/base.rb | endif
if &buftype ==# 'terminal'
  silent file ~/koleo/app/services/agent_invoice/infakt_service/base.rb
endif
balt ~/koleo/app/services/agent_invoice/infakt_service/arriva.rb
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
let s:l = 27 - ((26 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 27
normal! 0
wincmd w
exe '1resize ' . ((&lines * 19 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 85 + 106) / 212)
exe '2resize ' . ((&lines * 19 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 85 + 106) / 212)
exe 'vert 3resize ' . ((&columns * 126 + 106) / 212)
tabnext
edit spec/services/agent_invoice/factory_spec.rb
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/koleo/app/services/agent_invoice/infakt_service/arriva.rb
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
let s:l = 57 - ((19 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 57
normal! 0
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
