return {
  "David-Kunz/gen.nvim",
  cmd = { "Gen", "Gen Chat" },
  config = function()
    require("zedd.plugins.ollama.setup")
  end,
}
