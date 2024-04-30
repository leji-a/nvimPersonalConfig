-- neomvim
vim.keymap.set("n", "<leader>7", function()
	vim.cmd(":nohlsearch")
end, { noremap = true })

-- lsp-config
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- none-ls
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
