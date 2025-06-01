vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.netrw_banner = 0 -- hide banner :Ex

vim.g.loaded_netrw = 1          -- Disable netrw
vim.g.loaded_netrwPlugin = 1

vim.g.loaded_tutor_mode = 1     -- Disable tutor 
vim.g.loaded_2html_plugin = 1   -- Disable tohtml.lua 
vim.g.loaded_tarPlugin = 1      -- Disable tarPlugin.vim 
vim.g.loaded_zipPlugin = 1      -- Disable zipPlugin.vim
vim.g.loaded_gzip = 1           -- Disable gzip.vim 
vim.g.loaded_man = 1            -- Disable man.lua 

-- vim.cmd.colorscheme("habamax")

require("zedd.core.lsp")
require("zedd.core.options")
require("zedd.core.keybinds")
require("zedd.core.keybinds.keydump")
require("zedd.plugins")
