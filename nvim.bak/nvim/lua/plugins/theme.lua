return {
	{
		"lalitmee/cobalt2.nvim",
		dependencies = { "tjdevries/colorbuddy.nvim" },
		config = function()
			require("colorbuddy").colorscheme("cobalt2")
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "cobalt2",
		},
	},
}
