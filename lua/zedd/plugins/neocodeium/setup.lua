require("neocodeium").setup({
  function(bufnr)
    if vim.endswith(vim.api.nvim_buf_get_name(bufnr), ".env") then
      return false
    end
    return true
  end,
})
