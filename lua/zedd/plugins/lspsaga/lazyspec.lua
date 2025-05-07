return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach",
	config = function()
		require("zedd.plugins.lspsaga.setup")
	end,
}
