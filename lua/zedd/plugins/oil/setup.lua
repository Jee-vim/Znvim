require("oil").setup({
  delete_to_trash = true,
  watch_for_changes = true,
  win_options = {
    signcolumn = "yes:2",
  },
  view_options = {
    is_hidden_file = function(name, bufnr)
      local dir = require("oil").get_current_dir(bufnr)
      local is_dotfile = vim.startswith(name, ".") and name ~= ".."
      -- if no local directory (e.g. for ssh connections), just hide dotfiles
      if not dir then
        return is_dotfile
      end
    end,
  },
})
