" Sublime Merge Executable
" Prerably in your path, but can be specified with a full path.
" Here we're assuming that the smerge command is in your path.
" if it is not, then supply the full path to the executable in your vimrc
let g:sublime_merge_exe = 'smerge'

" SMergeCurrentFileDirectory
" Opens Sublime Merge in the current directory of the current open Buffer.
" Sublime Merge will look for a .git/ directory in each folder under that.
function! SMergeCurrentFileDirectory()
  silent !clear
  execute "!" . g:sublime_merge_exe . " " . expand('%:p:h')
  execute "redraw!"
endfunction

command! SMerge :call SMergeCurrentFileDirectory()

