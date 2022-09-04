
require('nvim_comment').setup()

local null_ls_status_ok, null_ls = pcall(require, "null-ls")

if not null_ls_status_ok then
  return
end

--local sources = { null_ls.builtins.formatting.eslint }
--
local nu = null_ls.builtins


local command_resolver = require("null-ls.helpers.command_resolver")
local sources = { 
  nu.formatting.eslint.with({
      dynamic_command = function(params)
            return command_resolver.from_node_modules(params)
                or command_resolver.from_yarn_pnp(params)
                or vim.fn.executable(params.command) == 1 and params.command
        end,
    }),
  nu.diagnostics.eslint
}

null_ls.setup({
  debug = true,
  sources = sources,
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    vim.lsp.buf.formatting_sync()
                end,
            })
        end
    end,
})

 require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules" }} }


