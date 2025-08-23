return {
  cmd = { "zls" },
  filetypes = { "zig" },
  root_markers = { "build.zig", ".git" },
  settings = {
    zls = {
      enable_snippets = true,
      enable_inlay_hints = true,
      warn_style = true,
    },
  },
}
