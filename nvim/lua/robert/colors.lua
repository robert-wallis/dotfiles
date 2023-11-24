require("rose-pine").setup({
	variant = 'moon',
})

vim.cmd("set termguicolors")
vim.cmd("colorscheme rose-pine")

function ColorBackground(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)

	-- override background to transparent
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
ColorBackground()
