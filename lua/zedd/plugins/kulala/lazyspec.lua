return {
  'mistweaverco/kulala.nvim',
  config = function()
    require('kulala').setup({
    split_direction = "horizontal",
    content_types = {
        ["application/json"] = {
          ft = "json",
          formatter = { "jq", "." },
        },
      },
    })
  end,
}
