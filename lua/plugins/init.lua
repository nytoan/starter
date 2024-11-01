return {
  { "nvim-neotest/nvim-nio" },

  { "folke/which-key.nvim", lazy = false },

  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css"
      },
    },
  },
}
