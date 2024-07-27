return {
  -- Configure LazyVim to load gruvbox
  { "gaelph/nano.nvim" },
  {
    "lalitmee/cobalt2.nvim",
    event = { "ColorSchemePre" }, -- if you want to lazy load
    dependencies = { "tjdevries/colorbuddy.nvim", tag = "v1.0.0" },
    init = function()
      require("colorbuddy").colorscheme("cobalt2")
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cobalt2",
      background = "dark",
    },
  },
}
