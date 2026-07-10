function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

Map("n", "<Esc>", ":nohl<CR>", { desc = "Clear search highlighting" })
Map("n", "<leader>w", ":w<CR>", { desc = "Write" })
Map("n", "<leader>q", ":q<CR>", { desc = "Quit" })
Map("n", "<leader>re", ":restart<CR>", { desc = "Restart" })
Map("n", "<leader>o", ":copen<CR>", { desc = "Copen" })

Map("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
Map("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

Map("n", "<C-d>", "<C-d>zz", { desc = "Move down in buffer with cursor centered" })
Map("n", "<C-u>", "<C-u>zz", { desc = "Move up in buffer with cursor centered" })
Map("n", "n", "nzz", { desc = "Next search result cursor centered" })
Map("n", "N", "Nzz", { desc = "Prev search result cursor centered" })
Map("n", "G", "Gzz", { desc = "Go to bottom and centered" })

Map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {
  desc = "Replace word under cursor"
})
Map("n", "<leader>S", function()
  local cwd = vim.fn.expand("<cword>")
  vim.api.nvim_feedkeys(
    vim.api.nvim_replace_termcodes(
      ":vimgrep /" .. cwd .. "/ `git ls-files`<CR>:copen<CR>:cfdo %s/" .. cwd .. "/",
      true, false, true
    ),
    "n", false
  )
end, { desc = "Replace word under cursor in all files" })

Map("n", "<leader>bd", ":bd<CR>", { desc = "Close buffer" })
Map("n", "<leader>ba", ":%bd|e#<CR>", { desc = "Close all buffers except current" })
Map("n", "<leader>bb", ":b#<CR>", { desc = "Previous buffer" })

Map("n", "<leader>hy", "vatzf", { desc = "Hide Tag (HTML/JSX)" })
Map("n", "<leader>hn", "vaBzf", { desc = "Hide Block (Braces)" })
Map("n", "<leader>hh", "zo", { desc = "Show Fold" })

Map("n", "<leader>u", function()
  vim.cmd.packadd("nvim.undotree")
  require("undotree").open()
end, { desc = "Toggle Undotree" })

Map("n", "*", [["+yiw*]], { desc = "Search word under cursor and yank" })
Map("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })
Map("n", "ya", ":%y+<CR>", { desc = "Yank entire buffer to clipboard" })
