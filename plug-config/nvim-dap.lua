-- debugging dap
vim.keymap.set('n', '<leader>b', ':lua require"dap".toggle_breakpoint()<CR>')
vim.keymap.set('n', '<F5>', ':lua require"dap".continue()<CR>')
vim.keymap.set('n', '<F10>', ':lua require"dap".step_over()<CR>')
vim.keymap.set('n', '<F11>', ':lua require"dap".step_into()<CR>')
vim.keymap.set('n', '<F12>', ':lua require"dap".step_out()<CR>')

