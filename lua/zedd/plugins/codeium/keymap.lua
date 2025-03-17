local keymap = vim.keymap

local accept = function()
	return vim.fn["codeium#Accept"]()
end
local clear = function()
	return vim.fn["codeium#Clear"]()
end

keymap.set("i", "<A-w>", accept, { expr = true, silent = true })
keymap.set("i", "<c-c>", clear, { expr = true })
