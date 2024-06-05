local key = vim.keymap.set
local nkey = vim.api.nvim_set_keymap
-- Neovim
key("n", "<leader>7", function()
	vim.cmd(":nohlsearch")
end, { noremap = true })
-- None-ls
key("n", "<leader>gf", vim.lsp.buf.format, {})
-- Neo tree
key("n", "<C-f>", "<cmd>Neotree toggle filesystem reveal left<cr>")
-- Oil vim
key("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })
-- Twilight
key("n", "<C-t>", "<cmd>Twilight<cr>", { desc = "Open twilight" })
-- Compiler
nkey("n", "<F6>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
-- Redo last selected option
nkey(
	"n",
	"<S-F6>",
	"<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
		.. "<cmd>CompilerRedo<cr>",
	{ noremap = true, silent = true }
)
-- Toggle compiler results
nkey("n", "<S-F7>", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
-- Telescope oldfiles
key("n", "<leader>r", "<cmd>Telescope oldfiles<cr>")
-- Noice
key("n", "<leader>cn", "<cmd>NoiceDismiss<cr>")
