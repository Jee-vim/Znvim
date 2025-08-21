local M = {}

_G.my_keymaps = {}

--- Generic mapping function
-- mode: string|table
-- shortcut: string
-- command: string|function
-- opts: table|nil
function M.map(mode, shortcut, command, opts)
  opts = opts or { noremap = true, silent = true }
  if opts.noremap == nil then opts.noremap = true end
  if opts.silent == nil then opts.silent = true end

  vim.keymap.set(mode, shortcut, command, opts)

  table.insert(_G.my_keymaps, {
    mode = mode,
    lhs = shortcut,
    rhs = type(command) == "string" and command or "<lua_fn>",
    desc = opts.desc,
  })
end

-- Sugar
function M.nmap(shortcut, command, opts) M.map("n", shortcut, command, opts) end
function M.imap(shortcut, command, opts) M.map("i", shortcut, command, opts) end
function M.vmap(shortcut, command, opts) M.map("v", shortcut, command, opts) end

return M
