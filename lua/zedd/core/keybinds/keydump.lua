local M = {}

function M.dump()
  local lines = {}
  for _, map in ipairs(_G.my_keymaps) do
    table.insert(lines, string.format("[%s] %-15s → %s", map.mode, map.lhs, map.rhs))
  end
  table.sort(lines)

  vim.cmd("new")
  local buf = vim.api.nvim_get_current_buf()
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

  vim.bo[buf].buftype = "nofile"
  vim.bo[buf].bufhidden = "wipe"
  vim.bo[buf].swapfile = false
  vim.bo[buf].modifiable = false
  vim.bo[buf].readonly = true
end

vim.api.nvim_create_user_command("Keybinds", M.dump, {})

return M
