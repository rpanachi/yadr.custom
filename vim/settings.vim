
for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ XL\ 12,Inconsolata\ 15,Monaco\ 12
  else
    set guifont=Inconsolata\ XL:h14,Inconsolata:h30,Monaco:h14
  end
endif


" Disable Rubocop Checker
let g:loaded_syntastic_ruby_rubocop_checker = 0

" cw working with underscore ex user_id
set iskeyword-=_
