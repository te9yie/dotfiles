let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
let g:clang_enable_format_command = 0

let g:clang_format#code_style = 'chromium'
let g:clang_format#style_options = {
      \ "NamespaceIndentation": "All",
      \ "Standard": "C++11" }
let g:clang_format#auto_format = 1

let g:neocomplete#disable_auto_complete = 1
