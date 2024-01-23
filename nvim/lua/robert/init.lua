require("robert.lazy")
require("robert.colors")
vim.cmd("set number relativenumber")
vim.cmd[[let g:python3_host_prog = '/usr/local/bin/python3']]

vim.softtabstop = 4
vim.shiftwidth = 4
vim.expandtab = true

vim.ignorecase = true
vim.smartcase = true -- only works when ignorecase is true, and search doesn't contain uppercase
