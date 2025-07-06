return {
  "refractalize/oil-git-status.nvim",
  dependencies = {
    "stevearc/oil.nvim",
    config = function()
      require("zedd.plugins.oil.setup")
    end,
  },
  cmd = "Oil",
  config = function()
    require("oil-git-status").setup()
  end,
}
