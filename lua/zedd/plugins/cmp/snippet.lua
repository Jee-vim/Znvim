vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippets"
vim.g.vsnip_filetypes = {
  javascriptreact = {
    "javascript/react",
    "javascript/javascript",
    "tailwindcss",
    "html",
  },
  typescriptreact = {
    "javascript/react",
    "javascript/javascript",
    "javascript/typescript",
    "tailwindcss",
    "html",
  },
  javascript = { "javascript/javascript" },
  typescript = { "javascript/typescript" },
  css = { "tailwindcss" },
  html = { "angular/html" },
  http = { "http" },
  c = { "c" },
}
