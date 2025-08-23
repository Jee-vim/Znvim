return {
  "Exafunction/windsurf.vim",
  event = "BufEnter",
  -- cmd = { "CodeiumEnable", "CodeiumDisable", "CodeiumToggle" },
  -- version = "1.20.8",
  config = function()
    require("codeium").setup({
      enable_chat = true,
      virtual_text = {
        enable = true,
        idle_delay = 500,
      }
    })
    -- require("nvim-autopairs").setup({})
  end,
}
