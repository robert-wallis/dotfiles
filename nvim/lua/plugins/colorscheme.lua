return {
  {
    "LazyVim/LazyVim",
    opts = function()
      return {
        colorscheme = "gruvbox-material",
      }
    end,
  },
  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.g.gruvbox_material_transparent_background = 1
    end,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
    },
  },
}
