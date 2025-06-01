return {
  cmd = { "vscode-css-language-server", "--stdio" },
  filetypes = { "css", "scss", "less" },
  settings = {
    css = {
      validate = true,
      lint = {
        unknownAtRules = "ignore", -- hide unknownAtRules warning in tailwind css
      },
    },
    scss = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      }
    },
    less = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      }
    },
  },
}
