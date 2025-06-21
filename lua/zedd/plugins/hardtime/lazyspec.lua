return {
  "m4xshen/hardtime.nvim",
  event = "BufReadPost",
  dependencies = { "MunifTanjim/nui.nvim" },
  cmd = { "Hardtime enable", "Hardtime disable", "Hardtime toggle" },
  opts = {},
}
