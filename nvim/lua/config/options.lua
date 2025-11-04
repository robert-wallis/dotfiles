-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.minipairs_disable = true

vim.filetype.add({
  filename = {
    ["Fastfile"] = "ruby",
    ["Podfile"] = "ruby",
    ["Podfile.lock"] = "ruby",
  },
  pattern = {
    [".*%.podspec"] = "ruby",
  },
})

-- try to detect the filetype after nvim-treesitter chooses a file
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function(args)
    if vim.bo[args.buf].filetype == "" then
      vim.cmd("filetype detect")
    end
  end,
})
