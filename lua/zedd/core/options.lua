vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.backup = true
vim.opt.backupdir = vim.fn.stdpath("data") .. "/backup"

vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false -- show insert, visual or normal mode
vim.opt.hlsearch = true -- highlight when match search words
vim.opt.showcmd = true
vim.opt.cmdheight = 1 -- height of laststatus at the bottom
vim.opt.laststatus = 2 -- show where are you in at the bottom
vim.opt.statusline = "%{expand('%:~:.')}"
vim.opt.clipboard = "unnamedplus" -- copy from nvim to  clipboard
vim.opt.scrolloff = 10
vim.opt.foldlevelstart = 99

vim.opt.mouse = "a"
vim.opt.shell = "fish"
vim.opt.swapfile = false
vim.opt.list = true
vim.o.foldtext = "v:lua.fold_text()"
vim.opt.fillchars:append({
	eob = " ",
})
vim.opt.listchars = {
	tab = "  ",
	space = " ",
}
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.backspace = "start,eol,indent"

-- highlight cursorline
vim.opt.cursorline = true -- cursorline will be highlight
-- vim.opt.cursorlineopt = "number" -- only number will be highlight
vim.opt.termguicolors = true
vim.opt.winblend = 5
vim.opt.wildoptions = "pum"
vim.opt.pumblend = 5
vim.opt.background = "dark"
-- vim.opt.signcolumn = "no"

function fold_text()
	local line = vim.fn.getline(vim.v.foldstart)
	local line_text = string.gsub(line, '^"{\\+', "")
	return line_text
end
