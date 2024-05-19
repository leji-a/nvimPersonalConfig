return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local none_ls = null_ls.builtins.formatting
		null_ls.setup({
			sources = { -- Add more languages to format
				none_ls.stylua,
				none_ls.black,
				none_ls.isort,
				none_ls.prettier,
				-- none_ls.latexindent,
			},
		})
	end,
}
