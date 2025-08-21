local map = require("zedd.core.keybinds.keymap")
local nmap = map.nmap
local vmap = map.vmap

-- Buffer
nmap("<leader>bd", "<CMD>bd<CR>", { desc = "Close buffer" })
nmap("<leader>ba", "<CMD>%bd|e#<CR>", { desc = "Close all buffers except current" })
nmap("<leader>bb", "<CMD>b#<CR>", { desc = "Previous buffer" })

-- LSP
nmap("<leader>lr", vim.lsp.buf.rename, { desc = "Rename symbol" })
nmap("<leader>lh", vim.lsp.buf.hover, { desc = "Hover docs" })
nmap("<leader>ld", vim.lsp.buf.definition, { desc = "Go to definition" })
nmap("<leader>lf", function() vim.lsp.buf.format({ async = true }) end, { desc = "Format buffer" })
nmap("<leader>ll", "<CMD>lua vim.diagnostic.setloclist()<CR><CMD>lua require('telescope.builtin').loclist({winid=0})<CR>",
  { desc = "Diagnostics in Telescope" })
nmap("<leader>lj", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
nmap("<leader>lk", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })

-- Git
nmap("<leader>gd", "<CMD>Gitsigns toggle_deleted<CR>", { desc = "Toggle deleted" })
nmap("<leader>gb", "<CMD>Gitsigns blame_line<CR>", { desc = "Blame line" })

-- Conflicts
nmap("<leader>g0", "<CMD>GitConflictChooseNone<CR>")
nmap("<leader>go", "<CMD>GitConflictChooseOurs<CR>")
nmap("<leader>gt", "<CMD>GitConflictChooseTheirs<CR>")
nmap("<leader>gb", "<CMD>GitConflictChooseBoth<CR>")
nmap("<leader>gn", "<CMD>GitConflictNextConflict<CR>")
nmap("<leader>gp", "<CMD>GitConflictPrevConflict<CR>")
nmap("<leader>gq", "<CMD>GitConflictListQf<CR>")

-- Folding
nmap("<leader>zf", "vatzf<CR>")
nmap("<leader>zF", "vaBzf")
nmap("<leader>zo", "zo")

-- File manager
nmap("<leader>e", "<cmd>Oil<cr>", { desc = "Open Oil" })
nmap("<leader>E", "<cmd>Oil .<cr>", { desc = "Open Oil parent dir" })

-- Telescope
nmap("<Leader>fo", "<CMD>Telescope oldfiles<CR>")
nmap("<Leader>ff", "<CMD>Telescope find_files<CR>")
nmap("<Leader>lg", "<CMD>Telescope live_grep<CR>")
nmap("<Leader>fd", "<CMD>Telescope diagnostics<CR>")
nmap("<Leader>fb", "<CMD>Telescope buffers<CR>")

-- Custome
nmap("<leader>w", "<CMD>w<CR>")
nmap("<leader>a", "gg<S-v>G")
nmap("<leader>q", "<CMD>q<CR>")
vmap("<S-j>", ":m '>+1<CR>gv=gv")     -- move line bottom
vmap("<S-k>", ":m '<-2<CR>gv=gv")     -- move line top
nmap("<S-s>/", [[:%s//<left>]])
nmap("U", "<C-r>", { desc = "Redo" }) -- Vim default `U` is useless anyway
nmap("<Esc>", ":noh<CR>")             -- clear higlight and back to normal

-- String substitutions
nmap("<leader>cc", [[:s/\([a-zA-Z]\)\(-\)\([a-zA-Z]\)/\1\u\3/g<CR>]]) -- kebab → camel
nmap("<leader>nn", [[:%s/\d\+/number/g]])                             -- numbers → "number"
nmap("<leader>ss", [[:%s/"[^"]*"/string/g]])                          -- quoted → "string"
nmap("<leader>br", [[:%s/\v(true|false)/boolean/g<CR>]])              -- booleans

-- Center Screen on Jumping
nmap("n", "nzzzv")
nmap("N", "Nzzzv")
nmap("<C-d>", "<C-d>zz")
nmap("<C-u>", "<C-u>zz")
