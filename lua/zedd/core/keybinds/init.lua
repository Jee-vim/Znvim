local map = require("zedd.core.keybinds.keymap")
local nmap = map.nmap
local imap = map.imap
local vmap = map.vmap

-- Buffer
nmap("<S-c>", "<CMD>bd<CR>")           -- close
nmap("<S-q>", "o<Esc><CMD>%bd|e#<CR>") -- close all
nmap("<A-Tab>", "<CMD>b#<CR>")

-- LSP
nmap("<A-r>", "<CMD>lua vim.lsp.buf.rename()<CR>")
nmap("<A-h>", "<CMD>lua vim.lsp.buf.hover()<CR>")
nmap("<A-i>", "<CMD>lua vim.lsp.buf.definition()<CR>")
nmap("<A-f>", "<CMD>lua vim.lsp.buf.format({ async = async })<CR>")
nmap("<A-d>", "<CMD>lua vim.diagnostic.setloclist()<CR>")
nmap("<A-j>", "<CMD>lua vim.diagnostic.goto_next()<CR>")
nmap("<A-k>", "<CMD>lua vim.diagnostic.goto_prev()<CR>")

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

-- Folding
nmap("ft", "vatzf<CR>")
nmap("ff", "vaBzf")
nmap("fo", "zo")

-- File manager
nmap("<leader>e", "<cmd>Oil<cr>")
nmap("<leader>o", "<cmd>Oil .<cr>") -- go to parent dir

-- Telescope
nmap("<Leader>fo", "<CMD>Telescope oldfiles<CR>")
nmap("<Leader>ff", "<CMD>Telescope find_files<CR>")
nmap("<Leader>lg", "<CMD>Telescope live_grep<CR>")
nmap("<Leader>fd", "<CMD>Telescope diagnostics<CR>")
nmap("<Leader><Leader>", "<CMD>Telescope buffers<CR>")

-- Custome
vmap("<S-j>", ":m '>+1<CR>gv=gv") -- move line bottom
vmap("<S-k>", ":m '<-2<CR>gv=gv") -- move line top
nmap("<leader>w", "<CMD>w<CR>")
nmap("<leader>q", "<CMD>q<CR>")
nmap("r", "<C-r>")                -- undo
nmap("<leader>a", "gg<S-v>G")
nmap("<Esc>", ":noh<CR>")         -- clear higlight and back to normal
nmap("<C-e>", [[:s/\([a-zA-Z]\)\(-\)\([a-zA-Z]\)/\1\u\3/g<CR>]]) -- kebab-case to camelCase
nmap("<leader>n", [[:%s/\d\+/number/g]])                -- 2 -> number
nmap("<leader>s", [[:%s/"[^"]*"/string/g]])             -- "hello" -> string
nmap("<leader>m", [[:%s/\v(true|false)/boolean/g<CR>]]) -- true -> boolean
nmap("<S-s>/", [[:%s//<left>]])

-- Center Screen on Jumping
nmap("n", "nzzzv")
nmap("N", "Nzzzv")
nmap("<C-d>", "<C-d>zz")
nmap("<C-u>", "<C-u>zz")
