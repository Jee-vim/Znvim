-- return {
--     "NStefan002/screenkey.nvim",
--     cmd = "Screenkey",
--     lazy = false,
--     version = "*", -- or branch = "dev", to use the latest commit
-- 	config = function()
--     require("zedd.plugins.screenkey.setup")
--   end
-- }
--
return {
  "nvzone/showkeys",
  cmd = "ShowkeysToggle",
  config = function()
    require("zedd.plugins.screenkey.setup")
  end,
}
