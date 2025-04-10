return {
  "Exafunction/codeium.vim",
  cmd = { "CodeiumEnable", "CodeiumDisable", "CodeiumToggle" },
  version = "1.8.37",
  config = function()
    require("zedd.plugins.codeium.keymap")
  end,
}
