vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>7", function()
  vim.cmd(":nohlsearch")
end, { noremap = true })
