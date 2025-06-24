return {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "typescript", "javascript", "typescriptreact", "--tsserver-path", "tsserver", "--maxTsServerMemory=4096" },
  handlers = {
    ["workspace/applyEdit"] = function()
      return { applied = false }
    end,
  },
}
