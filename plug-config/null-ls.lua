require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules" }} }

require('onedark').setup({ transparent = false, })

require('onedark').load()

require('nvim_comment').setup()

require('null-ls').setup({
    sources = {
        require('null-ls').builtins.formatting.eslint_d,
        require('null-ls').builtins.diagnostics.eslint_d,
    },
})


require('lsp_lines').setup()

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
	update_in_insert = true,
})

