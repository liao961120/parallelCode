reticulate::use_python(Sys.which("python3"), required = T)

gh_edit_path <- paste0('https://github.com/liao961120/parallelCode/edit/master/', knitr::current_input())

edit_btn <- paste0('<a href="', gh_edit_path, '">',
                   '<img src="https://bit.ly/2RRirG7" ',
                   'alt="fa-edit" ',
                   'class="edit"></a>')

# https://bit.ly/2RRirG7
# source: https://upload.wikimedia.org/wikipedia/commons/4/4c/Edit_font_awesome.svg

# Set knitr options
options(knitr.duplicate.label = 'allow')
knitr::opts_chunk$set(
	echo = TRUE,
	message = FALSE,
	warning = FALSE,
	dev='svg',
	comment = '#>',
	fig.dim = c(5.5, 3.5)   # width height
	)