require("lazy").setup({
	'nvim-treesitter/nvim-treesitter', -- better text highlighting
	'tpope/vim-fugitive', -- git
	{ 'nvim-telescope/telescope.nvim', branch = '0.1.x', -- fuzzy finder
		dependencies = { 'nvim-lua/plenary.nvim' } },
	{ 'rose-pine/neovim', name = 'rose-pine' }, -- color scheme
})

