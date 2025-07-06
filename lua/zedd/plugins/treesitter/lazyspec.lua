return {
	"nvim-treesitter/nvim-treesitter",
	lazy = true,
	event = "BufRead",
	config = function()
    require("zedd.plugins.treesitter.setup")
    require("zedd.plugins.treesitter.command")
	end,
	-- dependencies = {
	-- 	"https://github.com/nvim-treesitter/playground",
	-- },
}
