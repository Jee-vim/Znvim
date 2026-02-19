return {
  'mistweaverco/kulala.nvim',
  config = function()
    require('kulala').setup({
      split_direction      = "vertical",
      winbar               = false,
      show_request_summary = false,
      lsp                  = { enable = false },
      content_types        = {
        ["application/json"] = {
          ft = "json",
          formatter = { "jq", "." },
        },
      },
    })
  end,
}
