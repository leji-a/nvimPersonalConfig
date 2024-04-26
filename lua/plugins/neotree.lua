return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					hidden_dotfiles = false,
					hide_gitignired = false,
				},
			},
		})
		vim.keymap.set("n", "<C-f>", ":Neotree toggle filesystem reveal right<CR>")
	end,
}
