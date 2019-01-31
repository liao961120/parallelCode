reticulate::use_python(Sys.which("python3"), required = T)

gh_edit_path <- paste0('https://github.com/liao961120/parallelCode/edit/master/', knitr::current_input())

edit_btn <- paste0('<a href="', gh_edit_path, '">',
                   '<i class="fa fa-edit" ',
                   'style="font-size: 0.5em;"></i></a>')
