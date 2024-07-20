return {
  -- Configure LazyVim to load gruvbox
  { "gaelph/nano.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
      background = "dark",
    },
  },
}
