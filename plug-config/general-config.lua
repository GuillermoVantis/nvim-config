require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules" }} }
     
require('onedark').setup({ transparent = false, })

require('onedark').load()
     
require('nvim_comment').setup()
