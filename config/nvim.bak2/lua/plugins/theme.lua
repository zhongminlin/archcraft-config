return {
  -- add gruvbox, nightfly and other themes
  { "ellisonleao/gruvbox.nvim" },
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = true, priority = 1000 },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "night" }, --"moon", "storm"
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight", --"tokyonight", "catppuccin", "gruvbox", "nightfly"
    },
  },
}
