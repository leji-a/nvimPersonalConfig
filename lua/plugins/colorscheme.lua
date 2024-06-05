local gruvbox = {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			terminal_colors = true, -- Add Neovim terminal colors
			undercurl = true,
			underline = true,
			bold = true,
			italic = {
				strings = true,
				emphasis = true,
				comments = true,
				operators = false,
				folds = true,
			},
			strikethrough = true,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			invert_intend_guides = false,
			inverse = true, -- Invert background for search, diffs, statuslines and errors
			contrast = "", -- Can be "hard", "soft" or empty string
			palette_overrides = {},
			overrides = {},
			dim_inactive = false,
			transparent_mode = false,
			vim.cmd("colorscheme gruvbox"),
		})
	end,
}

local hybrid = {
	"HoNamDuong/hybrid.nvim",
	priority = 1000,
	opts = {},
	config = function()
		require("hybrid").setup({})
		vim.cmd("colorscheme hybrid")
	end,
}
local abstract_cs = {
	"Abstract-IDE/Abstract-cs",
	priority = 1000,
	opts = {},
	config = function()
		vim.cmd("colorscheme abscs")
	end,
}

return gruvbox
