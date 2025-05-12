local map = require("zedd.core.keybinds.keymap")
local nmap = map.nmap
local imap = map.imap
local vmap = map.vmap

-- Buffer
nmap("<S-c>", "<CMD>bd<CR>") -- close
nmap("<S-q>", "<CMD>%bd|e#<CR>") -- close all

-- LSP
nmap("<A-r>", "<CMD>Lspsaga rename<CR>")
nmap("<A-h>", "<CMD>Lspsaga hover_doc<CR>")
nmap("<A-i>", "<CMD>Lspsaga goto_definition<CR>")
nmap("<A-j>", "<CMD>Lspsaga diagnostic_jump_next<CR>")
nmap("<A-k>", "<CMD>Lspsaga diagnostic_jump_prev<CR>")

-- Folding
nmap("ft", "vatzf<CR>")
nmap("ff", "vaBzf")
nmap("fo", "zo")

-- File manager
nmap("<leader>e", "<cmd>Oil<cr>")

-- Telescope
nmap("<Leader>fo", "<CMD>Telescope oldfiles<CR>")
nmap("<Leader>ff", "<CMD>Telescope find_files<CR>")
nmap("<Leader>lg", "<CMD>Telescope live_grep<CR>")
nmap("<Leader>fd", "<CMD>Telescope diagnostics<CR>")
nmap("<Leader><Leader>", "<CMD>Telescope buffers<CR>")

-- Custome
imap("<C-f>", "${}<left>")
imap("<", "<>")
vmap("<S-j>", ":m '>+1<CR>gv=gv")
vmap("<S-k>", ":m '<-2<CR>gv=gv")
nmap("<leader>ww", "<CMD>w<CR>")
nmap("<leader>wa", "<CMD>wa<CR>")
nmap("r", "<C-r>")
nmap("<leader>a", "gg<S-v>G")
nmap("<Esc>", ":noh<CR>")

-- Jump
nmap("m", "]m")
nmap("<S-m>", "[m")

-- Replace
nmap("<leader>n", [[:%s/\d\+/number/g]]) -- 2 -> number
nmap("<leader>s", [[:%s/"[^"]*"/string/g]]) -- "hello" -> string
nmap("<leader>m", [[:%s/\v(true|false)/boolean/g<CR>]]) -- true -> boolean
nmap("<S-s>/", [[:%s//<left>]])

-- Git
nmap("<leader>gd", "<CMD>Gitsign toggle_deleted<CR>")
nmap("<leader>gcl", "<CMD>Gitsign toggle_current_line_blame<CR>")
nmap("<leader>gbl", "<CMD>Gitsign blame_line<CR>")
nmap("<leader>c0", "<CMD>GitConflictChooseNone<CR>")
nmap("<leader>cb", "<CMD>GitConflictChooseBoth<CR>")
nmap("<leader>co", "<CMD>GitConflictChooseOurs<CR>")
nmap("<leader>ct", "<CMD>GitConflictChooseTheirs<CR>")
nmap("<leader>cn", "<CMD>GitConflictNextConflict<CR>")
nmap("<leader>cp", "<CMD>GitConflictPrevConflict<CR>")
nmap("<leader>cl", "<CMD>GitConflictListQf<CR>")

-- Disable
nmap("<up>", "<Nop>")
nmap("<left>", "<Nop>")
nmap("<right>", "<Nop>")
nmap("<down>", "<Nop>")
nmap("<C-z>", "<Nop>")
