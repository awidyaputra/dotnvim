function DetectGoHtmlTmpl()
    if expand('%:e') == "html" && search("{{") != 0
        set filetype=gohtmltmpl
    endif
endfunction

" augroup filetypedetect
    " gohtmltmpl
au BufRead,BufNewFile *.html call DetectGoHtmlTmpl()
" augroup END
