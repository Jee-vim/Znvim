require("oil").setup({
  delete_to_trash = true,
  watch_for_changes = true,
  win_options = { signcolumn = "auto:2" },
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
        ["tsconfig.tsbuildinfo"] = true,
        ["pnpm-lock.yaml"] = true,
        ["npm-lock.yaml"] = true,
        ["yarn-lock.yaml"] = true,

      }

      return is_dotfile or hidden_names[name] == true
    end,
  },
})

vim.api.nvim_create_autocmd({ "ColorScheme", "FileType" }, {
  pattern = { "oil" },
  callback = function()
    -- remove bg from the sign area itself
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
    pcall(function()
      for _, hl in pairs(require("oil-git-status").highlight_groups) do
        vim.api.nvim_set_hl(0, hl.hl_group, { bg = "NONE" })
      end
    end)
  end,
})
