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
  float = {
    -- Padding around the floating window
    padding = 2,
    -- max_width and max_height can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
    max_width = .5,
    max_height = .6,
    border = "rounded",
    win_options = {
      winblend = 0,
    },
    -- optionally override the oil buffers window title with custom function: fun(winid: integer): string
    get_win_title = nil,
    -- preview_split: Split direction: "auto", "left", "right", "above", "below".
    preview_split = "auto",
    -- This is the config that will be passed to nvim_open_win.
    -- Change values here to customize the layout
    override = function(conf)
      return conf
    end,
  },
})

vim.api.nvim_create_autocmd({ "ColorScheme", "FileType" }, {
  pattern = { "oil" },
  callback = function()
    pcall(function()
      for _, hl in pairs(require("oil-git-status").highlight_groups) do
        vim.api.nvim_set_hl(0, hl.hl_group, { bg = "NONE",fg = "#fafafa" })
      end
    end)
  end,
})
