return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- Import mason
		local mason = require("mason")
		-- Import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")
		-- Enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		mason_lspconfig.setup({
			ensure_installed = { -- List of servers for mason to install
				"tsserver",
				"html",
				"cssls",
				"lua_ls",
				"emmet_ls",
				"pyright",
				"rust_analyzer",
				"pylsp",
				"taplo",
				"harper_ls",
			},
		})
		mason_tool_installer.setup({
			ensure_installed = { -- Formatters
				"prettier",
				"stylua",
				"isort",
				"black",
				"pylint",
				"eslint_d",
				"latexindent",
			},
		})
	end,
}
