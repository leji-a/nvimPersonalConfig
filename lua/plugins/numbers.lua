return {
	"nkakouros-original/numbers.nvim",
	config = function()
		require("numbers").setup({
			excluded_filetypes = {
				"nerdtree",
				"unite",
			},
		})
	end,
}
