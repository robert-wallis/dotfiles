return {
  {
    "LazyVim/LazyVim",
    opts = function()
      return {
        colorscheme = "tokyonight",
      }
    end,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = true,
    },
  },
}
