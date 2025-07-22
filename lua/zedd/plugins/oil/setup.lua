require("oil").setup({
  delete_to_trash = true,
  watch_for_changes = true,
  view_options = {
    is_hidden_file = function(name)
      local visible_dotfiles = {
        [".env"] = true,
        [".env.local"] = true,
      }

      -- Hide all dotfiles except those explicitly allowed
      local is_dotfile = vim.startswith(name, ".") and name ~= ".." and not visible_dotfiles[name]

      -- Hide specific folders
      local hidden_names = {
        ["node_modules"] = true,
        ["dist"] = true,
        ["build"] = true,
        ["next-env.d.ts"] = true,
        ["commitlint.config.js"] = true,
      }

      return is_dotfile or hidden_names[name] == true
    end,
  },
})
