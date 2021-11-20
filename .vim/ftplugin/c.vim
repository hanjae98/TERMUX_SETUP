syntax on
colo ds2
set number
set ts=4
set sw=4
set sts=4
set smartindent
set cindent
set formatoptions+=r

" function
function! InsertCopyright()
    let l:currentTime = strftime("%Y-%m-%d, %p %I:%M %a.")
    let l:fileName = expand('%:t')
    return
        \  "/* <" . l:fileName . ">\r"
        \. "\r"
        \. "\r"
        \. "\r"
        \. "\r"
    	\. "Author: Jaesung Han\r"
        \. "" . l:currentTime . "\r*/" 
endfunction

" init# => ESC => Function RETURN!
iabbrev <expr> init# InsertCopyright()
