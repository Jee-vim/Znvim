local ok, indent = pcall(require, 'indent_blankline')
if not ok then return end

vim.opt.list = true

indent.setup {

    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
