return {
	"nvim-telescope/telescope.nvim",
  cmd = { "Telescope" },
	config = function()
		require("zedd.plugins.telescope.setup")
	end,
}
