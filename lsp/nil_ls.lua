return {
  cmd = { "nil", "--stdio" },
  filetypes = { "nix" },
  settings = {
    ["nil"] = {
      formatting = {
        command = { "alejandra" },
      },
    },
  },
}
