-- local lsp_zero = require("lsp-zero")

-- lsp_zero.on_attach(function(_, buf)
-- see :help lsp-zero-keybindings to learn the available actions
--	lsp_zero.default_keymaps({ buffer = buf })
-- end)

-- require("mason").setup({})

-- require("mason-lspconfig").setup {
-- 	ensure_installed = {
-- 		"eslint", -- javascript
-- 		"gopls", -- go
-- 		"jedi_language_server", -- python
-- 		"lua_ls",
--                 -- "rust_analyzer", DON'T install, mason uses an old one
-- 		"volar", -- vue
-- 		"yamlls",
-- 	},
-- 	-- See `:h mason-lspconfig.setup_handlers()`
-- 	-- @type table<string, fun(server_name: string)>?
-- 	handlers = {
-- 		-- important to have handlers, or lspconfig won't set up correctly
-- 		lsp_zero.default_setup,
-- 	},
-- }

-- require("lspconfig").rust_analyzer.setup({
-- 	settings = {
-- 		["rust-analyzer"] = {
-- 			cargo = {
-- 				extraArgs = { "--profile=rust-analyzer" },
-- 			},
-- 			checkOnSave = {
-- 				command = "clippy",
-- 			},
-- 		},
-- 	},
-- })
