vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.netrw_banner = 0 -- hide banner :Ex

vim.g.loaded_netrw = 1          -- Disable netrw
vim.g.loaded_netrwPlugin = 1

vim.g.loaded_matchit = 1        -- Disable matchit.vim (0.63ms in your profile)
vim.g.loaded_matchparen = 1     -- Disable matchparen.vim (0.19ms)
vim.g.loaded_tutor_mode = 1     -- Disable tutor (0.11ms)
vim.g.loaded_2html_plugin = 1   -- Disable tohtml.lua (0.28ms)
vim.g.loaded_tarPlugin = 1      -- Disable tarPlugin.vim (0.15ms)
vim.g.loaded_zipPlugin = 1      -- Disable zipPlugin.vim (0.22ms)
vim.g.loaded_gzip = 1           -- Disable gzip.vim (0.24ms)
vim.g.loaded_man = 1            -- Disable man.lua (0.14ms)

vim.cmd.highlight('IndentLine guifg=#282828')
vim.cmd.highlight('IndentLineCurrent guifg=#b8bb26')


require("zedd.core.options")
require("zedd.core.keybinds")
require("zedd.core.keybinds.keydump")
require("zedd.plugins")
