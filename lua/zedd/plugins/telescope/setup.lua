local telescope = require("telescope")
local previewers = require("telescope.previewers")
local sorters = require("telescope.sorters")

telescope.setup({
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    results_title = "",
    entry_prefix = "   ",
    multi_icon = " ❱ ",
    prompt_prefix = "❱❱ ",
    selection_caret = " ❱ ",
    initial_mode = "insert",
    selection_strategy = "reset",
    file_ignore_patterns = { "^node_modules/", ".*lock.*" },
    file_sorter = sorters.get_fzy_sorter,
    generic_sorter = sorters.get_generic_fzy_sorter,
    path_display = { "absolute" },
    winblend = 0,
    color_devicons = true,
    use_less = false,
    file_previewer = previewers.vim_buffer_cat.new,
    grep_previewer = previewers.vim_buffer_vimgrep.new,
    qflist_previewer = previewers.vim_buffer_qflist.new,
    -- custom theme
    sorting_strategy = "ascending",
    layout_strategy = "bottom_pane",
    layout_config = {
      preview_cutoff = 1,
      height = 0.4,
      prompt_position = "bottom",
    },
    borderchars = {
      prompt = { "━", " ", " ", " ", "━", "━", " ", " " },
      results = { "━", " ", " ", " ", "━", "━", " ", " " },
      preview = { "━", " ", " ", "┃", "┳", " ", " ", "┃" },
    },
  },
  pickers = {
    diagnostics = {
      initial_mode = "normal",
      previewer = false,
      line_width = 0.7,
      no_unlisted = true,
      path_display = {
        "hidden",
      },
    },
    find_files = {
      previewer = false,
    },
    oldfiles = {
      previewer = false,
      file_ignore_patterns = {
        "/usr/share/nvim/runtime/*",
        vim.fn.stdpath("data"),
        vim.fn.stdpath("cache"),
        vim.fn.stdpath("log"),
      },
    },
    builtin = {
      previewer = false,
    },
    current_buffer_fuzzy_find = {
      previewer = false,
    },
    autocommands = {
      previewer = false,
    },
    lsp_document_symbols = {
      previewer = false,
      symbol_width = 0.7,
    },
    lsp_workspace_symbols = {
      previewer = false,
      symbol_width = 0.7,
    },
    buffers = {
      initial_mode = "normal",
      select_current = false,
      previewer = true,
      sort_lastused = true,
    },
  },
})
