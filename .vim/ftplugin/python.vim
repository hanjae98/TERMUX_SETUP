syntax on
set tabstop=4              
set expandtab
set softtabstop=4             
set autoindent           
set smartindent
set formatoptions+=r
set nu                
set bg=dark
colo ds2

" function
function! InsertCopyright()
    let l:currentTime = strftime("%Y-%m-%d, %p %I:%M %a.")
    let l:fileName = expand('%:t')
    return
        \  "# <" . l:fileName . ">\r"
        \. "- \r"
        \. "- \r"
        \. "- \r"
        \. "- \r"
    	\. "Author: Jaesung Han \r"
        \. "" . l:currentTime . "" 
endfunction

" init# => ESC => Function RETURN!
iabbrev <expr> init# InsertCopyright()
