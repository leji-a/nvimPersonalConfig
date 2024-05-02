-- neomvim
vim.keymap.set("n", "<leader>7", function()
  vim.cmd(":nohlsearch")
end, { noremap = true })
-- none-ls
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
-- neo tree
vim.keymap.set("n", "<C-f>", ":Neotree toggle filesystem reveal left<CR>")
-- oil nvim
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
