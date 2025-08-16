vim.lsp.enable({
	"ts_ls",
	"lua_ls",
	"css_ls",
	"nil_ls",
})
vim.lsp.config("*", {
	root_markers = { ".git" },
	capabilities = {
		textDocument = {
			semanticTokens = {
				multilineTokenSupport = true,
			},
		},
	},
})
vim.diagnostic.config({
	virtual_lines = false,
	virtual_text = false,
	underline = false,
	update_in_insert = false,
	severity_sort = true,
	float = {
		source = "if_many",
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.nix", "*.css" },
	callback = function()
		vim.lsp.buf.format({ async = true })
	end,
})
