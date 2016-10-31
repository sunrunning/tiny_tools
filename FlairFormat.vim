let s:FlcDivider            = "/******************************************************************************/"
let s:FlcStartCommentBlock  = "/******************************************************************************"
let s:FlcInterCommentBlock  = "**"
let s:FlcEndCommentBlock    = "*******************************************************************************/"
let s:FlcStartMatch         = "[<<"
let s:FlcEndMatch           = ">>]"
let s:FlcFirstVer           = "1.0"
let s:FlcAuther             = "Zhu ChenKai"
let s:FlcLicTag             = "  Copyright (C) 2015 Flaircomm Microelectronics, Inc.\<enter>"
let s:FlcLicTag = s:FlcLicTag . "\<enter>"
let s:FlcLicTag = s:FlcLicTag . " File Name:\<enter>"
let s:FlcLicTag = s:FlcLicTag . "\<Tab>\<Tab>\<enter>"
let s:FlcLicTag = s:FlcLicTag . " File Description:\<enter>"
let s:FlcLicTag = s:FlcLicTag . "\<Tab>\<Tab>".s:FlcStartMatch."Type File Description Here".s:FlcEndMatch."\<enter>"
let s:FlcLicTag = s:FlcLicTag . " File History:\<enter>"
let s:FlcLicTag = s:FlcLicTag . "-----------------------------------------------------------------------------\<enter>"
let s:FlcLicTag = s:FlcLicTag . "\<Tab>Ver\<Tab>\<Tab>Date\<Tab>\<Tab>Author\<Tab>\<Tab>Description\<enter>"
let s:FlcLicTag = s:FlcLicTag . "-----------------------------------------------------------------------------\<enter>"
let s:FlcLicTag = s:FlcLicTag . "\<Tab>".s:FlcFirstVer."\<Tab>\<Tab>".s:FlcStartMatch."Date".s:FlcEndMatch."\<Tab>".s:FlcAuther."\<Tab>"."Des"
let s:FlcCppDefineStart     = "#ifdef __cplusplus\<enter>extern \"C\" {\<enter>#endif"
let s:FlcCppDefineEnd       = "#ifdef __cplusplus  // close out \"C\" linkage in case of c++ compiling\<enter>}\<enter>#endif"



""""""""""""""""""""""""""
" FlairMicro Function FlcGetFileName
""""""""""""""""""""""""""
function! FlcGetFileName()
    let filename=expand("%:t")
    let filename=toupper(filename)
    let _name=substitute(filename,'\.','_',"g")
    let _name="__"._name."__"
    return _name
endfunction
"
"let g:template['c']['ff'] = "#ifndef  \<c-r>=GetFileName()\<cr>\<CR>#define  \<c-r>=GetFileName()\<cr>".
"            \repeat("\<cr>",5)."#endif  /*\<c-r>=GetFileName()\<cr>*/".repeat("\<up>",3)

""""""""""""""""""""""""""
" FlairMicro Complete Date
""""""""""""""""""""""""""
function! FlcCompleteDate()
    let patt=s:FlcStartMatch."Date".s:FlcEndMatch
    normal gg
    exec "normal :%s/".escape(patt,'[]')."/".escape(strftime("%m/%d/%Y"),'/')."/g\<CR>"


endfunction
""""""""""""""""""""""""""
" FlairMicro license comment
""""""""""""""""""""""""""
function! <SID>FlcLicenseFunc()

    "set fo-=cro

    set nocindent
    set fo-=cro
    " Test authorName variable
    exec "normal gg"
    exec "normal A".strpart( s:FlcStartCommentBlock, 0 )
    exec "normal o".s:FlcInterCommentBlock.substitute( s:FlcLicTag, "\<enter>", "\<enter>".s:FlcInterCommentBlock, "g" )
    exec "normal o".strpart( s:FlcEndCommentBlock, 0 )
    exec "normal 5GA".expand("%:t")
    call FlcCompleteDate()
    normal G
    "normal gg
    "call search(s:FlcStartMatch,'c')
    "normal v
    "call search(s:FlcEndMatch,'e')
    "exec "normal o\<C-G>"
    
endfunction
 
""""""""""""""""""""""""""
" FlairMicro cpp define
""""""""""""""""""""""""""
function! <SID>FlcDefineCpp()
    exec "normal A".s:FlcCppDefineStart
    mark d
    "normal 2o
    exec "normal o".s:FlcDivider
    exec "normal o".s:FlcCppDefineEnd
    normal 2o
    normal 'd
endfunction

""""""""""""""""""""""""""
" FlairMicro Comment Section
""""""""""""""""""""""""""
function! <SID>FlcSection(strTitle)
    normal 2o
    exec "normal o".s:FlcStartCommentBlock
    exec "normal o\<Tab>\<Tab>\<Tab>".a:strTitle
    exec "normal o".s:FlcEndCommentBlock
endfunction

""""""""""""""""""""""""""
" FlairMicro define Filename
""""""""""""""""""""""""""
function! <SID>FlcDefineFilename()
    "let filename=FlcGetFileName()
    "exec "normal o#ifndef  "
    exec "normal o#ifndef  \<c-r>=GetFileName()\<cr>\<CR>#define  \<c-r>=GetFileName()\<cr>"
    exec "normal o".s:FlcDivider
    normal o
    mark d
    exec "normal o".s:FlcDivider
    exec "normal o#endif  /*\<c-r>=GetFileName()\<cr>*/"
    normal 'd
            "\repeat("\<cr>",5)."#endif  /*\<c-r>=GetFileName()\<cr>*/".repeat("\<up>",3)
endfunction

""""""""""""""""""""""""""
" FlairMicro Complete .h Files
""""""""""""""""""""""""""
function! <SID>FlcCompleteHFile()
    call <SID>FlcLicenseFunc()
    normal 2o
    call <SID>FlcDefineFilename()
    call <SID>FlcDefineCpp()
    call <SID>FlcSection("INCLUDE FILES SECTION")
    call <SID>FlcSection("GLOBAL EXPORTED TYPE, CONSTANT, MACRO DEFINITIONS SECTION")
    call <SID>FlcSection("GLOBAL EXPORTED VARIABLES DECLARATIONS SECTION")
    call <SID>FlcSection("GLOBAL EXPORTED FUNCTIONS DECLARATIONS SECTION")
    normal 2o
endfunction

""""""""""""""""""""""""""
" Shortcut...
""""""""""""""""""""""""""
command! -nargs=0 FlcLic    :call <SID>FlcLicenseFunc()
command! -nargs=0 FlcDiv    exec "normal o".s:FlcDivider
command! -nargs=0 FlcCpp    :call <SID>FlcDefineCpp()
command! -nargs=1 FlcSct    :call <SID>FlcSection(<q-args>)
command! -nargs=0 FlcTest   :call <SID>FlcDefineFilename()
command! -nargs=0 FlcHFile     :call <SID>FlcCompleteHFile()
