local keymap = vim.keymap

local format = function()
	vim.lsp.buf.format({ async = true })
end

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.nix",
  callback = function()
    vim.lsp.buf.format()
  end,
})

keymap.set("n", "<S-f>", format, { desc = "LSP: Formats the current buffer" })
