-- neomvim
vim.keymap.set("n", "<leader>7", function()
	vim.cmd(":nohlsearch")
end, { noremap = true })
-- none-ls
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
