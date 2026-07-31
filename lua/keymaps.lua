local function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

Map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlighting" })
Map("n", "<leader>w", "<cmd>w<CR>", { desc = "Write" })
Map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
Map("n", "<leader>re", "<cmd>restart<CR>", { desc = "Reload Neovim Config" })

Map("n", "<leader>o", function()
  local qf_exists = false
  for _, win in ipairs(vim.fn.getwininfo()) do
    if win.quickfix == 1 then qf_exists = true end
  end
  if qf_exists then vim.cmd("cclose") else vim.cmd("copen") end
end, { desc = "Toggle Quickfix window" })

Map("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
Map("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })
Map("v", "<", "<gv", { desc = "Indent left and keep selection" })
Map("v", ">", ">gv", { desc = "Indent right and keep selection" })

Map("n", "<C-d>", "<C-d>zz", { desc = "Move down in buffer with cursor centered" })
Map("n", "<C-u>", "<C-u>zz", { desc = "Move up in buffer with cursor centered" })
Map("n", "n", "nzzzv", { desc = "Next search result cursor centered + open fold" })
Map("n", "N", "Nzzzv", { desc = "Prev search result cursor centered + open fold" })
Map("n", "G", "Gzz", { desc = "Go to bottom and centered" })
Map("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

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

Map("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Close buffer" })
Map("n", "<leader>ba", "<cmd>%bd|e#<CR>", { desc = "Close all buffers except current" })
Map("n", "<leader>bb", "<cmd>b#<CR>", { desc = "Previous buffer" })

Map("n", "<leader>hy", "vatzf", { desc = "Hide Tag (HTML/JSX)" })
Map("n", "<leader>hn", "vaBzf", { desc = "Hide Block (Braces)" })
Map("n", "<leader>hh", "zo", { desc = "Show Fold" })

Map("n", "<leader>u", function()
  local status, _ = pcall(vim.cmd.packadd, "nvim.undotree")
  if status then require("undotree").open() else print("Undotree not found") end
end, { desc = "Toggle Undotree" })

Map("n", "*", [["+yiw*Nzz]], { desc = "Search word under cursor, yank, stay centered" })
Map("n", "ya", "<cmd>%y+<CR>", { desc = "Yank entire buffer to system clipboard" })
Map("n", "ga", "ggVG", { desc = "Select entire buffer in visual mode" })

return Map
