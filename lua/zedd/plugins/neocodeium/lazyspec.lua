return {
  "monkoose/neocodeium",
  event = "VeryLazy",
  config = function()
    require("zedd.plugins.lspsaga.setup")
    local neocodeium = require("neocodeium")
    neocodeium.setup()
    vim.keymap.set("i", "<A-f>", neocodeium.accept)
  end,
}
