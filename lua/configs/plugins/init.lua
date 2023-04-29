local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- Dependecies
  { "kyazdani42/nvim-web-devicons", lazy = true },
  { "nvim-lua/plenary.nvim", lazy = true },

  -- Completion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    lazy = true,
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-path",
      {
        "hrsh7th/cmp-vsnip",
        dependencies = "hrsh7th/vim-vsnip",
        init = function()
          vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippets"
          vim.g.vsnip_filetypes = {
            javascriptreact = {"javascript/javascriptreact", "javascript/javascript", "tailwindcss", "html"},
            typescriptreact = {"javascript/typescriptreact", "tailwindcss", "html"},
            javascript = {"javascript/javascript", "javascript/javascriptreact", "html"},
            typescript = {"javascript/typescript", "javascript/typescriptreact", "html"},
            css = {"tailwindcss"},
          }
        end,
      },
      {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        lazy = true,
        config = function()
          require("configs.completion.autopairs")
        end,
      },
    },
    config = function()
      require("configs.completion.cmp")
    end,
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "BufEnter",
    lazy = true,
    config = function()
      require("configs.lsp.nulls")
    end
  },

  {
    "onsails/lspkind.nvim",
    event = "InsertEnter",
    lazy = true
  },

  -- Themes
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    config = function()
      require("configs.themes")
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    lazy = true,
    event = "BufWinEnter",
    dependencies = {
      "p00f/nvim-ts-rainbow",
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    config = function()
      require("configs.ui.treesitter")
    end,
  },

  -- Editor

  {
		"JoosepAlviste/nvim-ts-context-commentstring",
		lazy = true,
		event = "BufRead",
		dependencies = "nvim-treesitter/nvim-treesitter",
	},

  {
    "numToStr/Comment.nvim",
    event = "BufRead",
    lazy = true,
    config = function()
      require("configs.ui.comment")
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = { "MunifTanjim/nui.nvim" },
    keys = "<leader>e",
    config = function()
        require("configs.ui.filemanager")
    end,
  },

  {
		"lewis6991/gitsigns.nvim",
		enabled = vim.fn.executable("git") == 1,
		ft = "gitcommit",
    lazy = true,
		event = "BufRead",
		config = function()
			require("configs.ui.gitsigns")
		end,
	},

  {
    "nvim-telescope/telescope.nvim", tag = "0.1.1",
    event = "BufWinEnter",
    lazy = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      require("configs.ui.telescope")
    end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    config = function()
      require("configs.ui.indentline")
    end,
  },

  {
    "NvChad/nvim-colorizer.lua",
    event = "BufRead",
    lazy = true,
    config = function()
      require("configs.ui.colorizer")
    end,
  },

}

require("lazy").setup(plugins, {
  ui = {
    border = "none",
  },
   change_detection = {
    -- automatically check for config file changes and reload the ui
    enabled = true,
    notify = true, -- get a notification when changes are found
  },
  performance = {
    cache = {
      enabled = true,
    },
    reset_packpath = true, -- reset the package path to improve startup time
    rtp = {
      reset = true, -- reset the runtime path to $VIMRUNTIME and your config directory
      paths = {}, -- add any custom paths here that you want to includes in the rtp
    },
  },
})
