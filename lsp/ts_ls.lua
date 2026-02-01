return {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
  init_options = {
    hostInfo = "neovim",
    typescript = {
      tsdk = "./node_modules/typescript/lib"
    },
  },
  handlers = {
    ["workspace/applyEdit"] = function()
      return { applied = false }
    end,
  },
}
