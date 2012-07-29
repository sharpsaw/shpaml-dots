fun! s:CompileShpaml(base_file_name)
  let html = a:base_file_name . '.html'
  let shpaml = a:base_file_name . '.shpaml'
  silent exec '!rm -f ' . html
  silent exec '!shpaml ' . shpaml . ' > ' . html
endfun
au BufWritePost *.shpaml call s:CompileShpaml(expand('%:r'))
