require("lazy").setup({
	"nvim-treesitter/nvim-treesitter", -- better text highlighting
	"tpope/vim-fugitive", -- git
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x", -- fuzzy finder
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "rose-pine/neovim", name = "rose-pine" }, -- color scheme
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/nvim-cmp",
			"L3MON4D3/LuaSnip",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
	}, -- language servers
	"rhysd/vim-clang-format",
	{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
	{ import = "lazyvim.plugins.extras.lang.clangd" },
})
