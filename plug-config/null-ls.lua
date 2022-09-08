require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules" }} }

require('onedark').setup({ transparent = true, style = 'cool' })

require('onedark').load()

require('nvim_comment').setup()

require('null-ls').setup({
    sources = {
        require('null-ls').builtins.formatting.eslint_d,
    },
})


require('lsp_lines').setup()

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
	update_in_insert = true,
})

require'nvim-treesitter.configs'.setup {
    ensure_installed = {'javascript'},
    rainbow = {
        eneable = true,
        max_file_lines = nil,
    },
    highlight = {
        enable = true,
        custom_captures = {
            ["punctuation.bracket"] = "",
            ["constructor"] = "",
        },
    },
    incremental_selection = {
        enable = false,
    },
}
