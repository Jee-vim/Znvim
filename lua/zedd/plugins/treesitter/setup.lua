require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"comment",
		"markdown",
		"markdown_inline",
		"c",
		"lua",
		"javascript",
		"tsx",
		"typescript",
		"html",
		"json",
	},
  compilers = { "clang" },
	auto_install = true,
	-- autotag = { enable = true },
	autopairs = { enable = true },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	rainbow = {
		enable = true,
		extended_mode = false,
		max_file_lines = nil,
	},
	markdown = {
		enable = true,
		additional_vim_regex_highlighting = false,
		parse = {
			inline = { "markdown_inline" },
		},
	},
	markdown_inline = { enable = true },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
		config = {
			tsx = {
				jsx_element = {
					__default = "{/* %s */}",
					__parent = {
						parenthesized_expression = "// %s",
					},
				},
			},
			javascript = {
				__default = "// %s",
				jsx_element = "{/* %s */}",
				jsx_fragment = "{/* %s */}",
				jsx_attribute = "// %s",
				comment = "// %s",
				__parent = {
					-- if a node has this as the parent, use the `//` commentstring
					jsx_expression = "// %s",
				},
			},
		},
	},
})
