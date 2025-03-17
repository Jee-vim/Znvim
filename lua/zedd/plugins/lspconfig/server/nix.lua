local on_attach = require("zedd.plugins.lspconfig.on_attach")
local capabilities = require("zedd.plugins.lspconfig.capabilities")

require("lspconfig").nil_ls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    ["nil"] = {
      formatting = {
        command = { "alejandra" },
      },
    },
  },
})
