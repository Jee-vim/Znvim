return {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "typescript", "javascript", "typescriptreact" },
  handlers = {
    ["workspace/applyEdit"] = function()
      return { applied = false }
    end,
  },
}
