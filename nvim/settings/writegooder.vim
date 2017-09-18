
set g:writegooder_disable_mappings = 1
nmap <leader>wg :WritegooderToggle<cr>

autocmd FileType markdown call s:enable_writegooder()
function! s:enable_writegooder()
  autocmd VimEnter * :WritegooderEnable
endfunction
