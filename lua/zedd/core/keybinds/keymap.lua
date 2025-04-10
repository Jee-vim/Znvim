local M = {}

_G.my_keymaps = {}

function M.map(mode, shortcut, command)
  if type(command) == "string" then
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
    table.insert(_G.my_keymaps, { mode = mode, lhs = shortcut, rhs = command })
  else
    print("Error: Command must be a string")
  end
end

function M.short(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = false })
end

function M.nmap(shortcut, command) M.map("n", shortcut, command) end
function M.imap(shortcut, command) M.map("i", shortcut, command) end
function M.vmap(shortcut, command) M.map("v", shortcut, command) end

return M
