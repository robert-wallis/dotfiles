local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, buf)
	-- see :help lsp-zero-keybindings to learn the available actions
	lsp_zero.default_keymaps({buffer = buf})
end)

require("mason").setup({})
require("mason-lspconfig").setup {
	ensure_installed = {
		"eslint",
		"gopls",
		"jedi_language_server",
		"lua_ls",
		"pylyzer",
		"rust_analyzer",
		"tsserver",
		"volar",
	},
	handlers = {
		-- important to have handlers, or lspconfig won't set up correctly
		lsp_zero.default_setup,
	},
}
