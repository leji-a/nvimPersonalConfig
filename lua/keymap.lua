-- Neovim
vim.keymap.set("n", "<leader>7", function()
  vim.cmd(":nohlsearch")
end, { noremap = true })
-- None-ls
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
-- Neo tree
vim.keymap.set("n", "<C-f>", ":Neotree toggle filesystem reveal left<CR>")
-- Oil vim
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- Twilight
vim.keymap.set("n", "<C-t>", ":Twilight<CR>", { desc = "Open twilight" })
-- Compiler
vim.api.nvim_set_keymap('n', '<F6>', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
-- Redo last selected option
vim.api.nvim_set_keymap('n', '<S-F6>',
     "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
  .. "<cmd>CompilerRedo<cr>",
 { noremap = true, silent = true })
-- Toggle compiler results
vim.api.nvim_set_keymap('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
