" Toggle vimfiler split.
nnoremap <silent> <Leader>I :<C-U>VimFilerSplit
  \ -toggle -no-quit -no-focus -buffer-name=main<CR>

" Open and focus vimfiler.
nnoremap <silent> <Leader>i :<C-U>VimFilerSplit -no-quit -buffer-name=main<CR>

" Set vimfiler buffer mappings.
augroup vimfiler-local-mappings
  autocmd!
  " Restore Ctrl-J, Ctrl-L, and space behavior.
  autocmd FileType vimfiler nunmap <buffer> <C-J>
  autocmd FileType vimfiler nunmap <buffer> <C-L>
  autocmd FileType vimfiler nunmap <buffer> <Space>

  " Add new mappings for the ones reset above.
  autocmd FileType vimfiler nmap <buffer> <C-'> <Plug>(vimfiler_redraw_screen)
  autocmd FileType vimfiler nmap <buffer> <C-;>
    \ <Plug>(vimfiler_switch_to_history_directory)
  autocmd FileType vimfiler nmap <buffer> <Tab>
    \ <Plug>(vimfiler_toggle_mark_current_line)
augroup END
